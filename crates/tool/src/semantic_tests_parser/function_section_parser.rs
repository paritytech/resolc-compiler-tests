use std::{
    fmt::Debug,
    io::{Cursor, Read},
};

use revive_dt_common::macros::define_wrapper_type;

use alloy::primitives::{I256, U256};
use anyhow::{Context, Result, anyhow, bail};

// region:Lexer

/// All of the possible tokens that could be encountered in the function source code.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
enum Token {
    /// A number token - we use a [`U256`] to represent the number as it's the largest that we could
    /// possibly support.
    UnsignedNumber(U256),

    /// A signed number token - we use a [`I256`] to represent the number as it's the largest that
    /// we could possibly support.
    SignedNumber(I256),

    /// Represents a quoted string token. For example:
    ///
    /// ```text
    /// "This is a string"
    /// ```
    QuotedString(String),

    /// Represents a string literal token. For example:
    ///
    /// ```text
    /// irOptimized
    /// ```
    StringLiteral(String),

    /// Represents a non-alphanumeric character. For example `#`
    NonAlphanumericCharacter(char),
}

impl Token {
    pub fn new_quoted_string(string: impl AsRef<str>) -> Self {
        Self::QuotedString(string.as_ref().to_string())
    }

    pub fn new_string_literal(string: impl AsRef<str>) -> Self {
        Self::StringLiteral(string.as_ref().to_string())
    }

    pub fn new_non_alphanumeric_char(char: impl Into<char>) -> Self {
        Self::NonAlphanumericCharacter(char.into())
    }

    pub fn new_unsigned_number(number: impl Into<U256>) -> Self {
        Self::UnsignedNumber(number.into())
    }

    pub fn new_signed_number(number: impl Into<I256>) -> Self {
        Self::SignedNumber(number.into())
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
enum LexerStateMachine {
    /// The Lexer is constructing a signed number.
    SignedNumber(I256),
    /// The Lexer is constructing an unsigned number.
    UnsignedNumber(U256),
    /// The Lexer is constructing a hexadecimal number.
    HexNumber(U256),
    /// The Lexer is constructing a string literal.
    StringLiteral(String),
    /// The Lexer is constructing a quoted string.
    QuotedString {
        string: String,
        is_previous_char_an_escape_char: bool,
    },
}

/// A lexer for tokens found in the function source code.
struct Lexer<'a>(Cursor<&'a str>);

impl<'a> Lexer<'a> {
    pub fn new(source: &'a str) -> Self {
        Self(Cursor::new(source))
    }

    pub fn next_char(&mut self) -> Result<char> {
        let mut buf = [0; 1];
        self.0.read_exact(&mut buf)?;
        let [byte] = buf;
        Ok(byte as char)
    }

    pub fn rewind_by(&mut self, by: u64) -> Result<()> {
        let pos = self.0.position();
        let new_pos = pos
            .checked_sub(by)
            .context("Rewind failed because position is too small")?;
        self.0.set_position(new_pos);
        Ok(())
    }

    pub fn next_token(&mut self) -> Result<Token> {
        let mut state_machine = None::<LexerStateMachine>;
        while let Ok(next_char) = self.next_char() {
            match (&mut state_machine, next_char) {
                // Initial state of the state machine
                (state_machine @ None, '0')
                    if self.peek_with(|lexer| {
                        lexer.next_char().is_ok_and(|char| char == 'x')
                    }) =>
                {
                    self.next_char()?;
                    *state_machine =
                        Some(LexerStateMachine::HexNumber(U256::ZERO))
                }
                (state_machine @ None, '0'..='9') => {
                    *state_machine = Some(LexerStateMachine::UnsignedNumber(
                        decimal_char_to_t::<U256>(next_char),
                    ))
                }
                (state_machine @ None, '-') => {
                    if self.peek_with(|lexer| {
                        lexer.next_char().is_ok_and(|char| char.is_numeric())
                    }) {
                        *state_machine =
                            Some(LexerStateMachine::SignedNumber(I256::ZERO))
                    } else {
                        return Ok(Token::NonAlphanumericCharacter(next_char));
                    }
                }
                (state_machine @ None, '"') => {
                    *state_machine = Some(LexerStateMachine::QuotedString {
                        string: next_char.to_string(),
                        is_previous_char_an_escape_char: false,
                    })
                }
                (state_machine @ None, 'a'..='z' | 'A'..='Z' | '_') => {
                    *state_machine = Some(LexerStateMachine::StringLiteral(
                        next_char.to_string(),
                    ))
                }
                (None, char) => {
                    if char.is_whitespace() {
                        continue;
                    } else if !char.is_alphanumeric() {
                        return Ok(Token::NonAlphanumericCharacter(char));
                    }
                }
                // Unsigned Number state of the state machine
                (
                    Some(LexerStateMachine::UnsignedNumber(number)),
                    '0'..='9',
                ) => {
                    let digit = decimal_char_to_t::<U256>(next_char);
                    *number *= U256::from(10);
                    *number += digit;
                }
                (Some(LexerStateMachine::UnsignedNumber(number)), _) => {
                    self.rewind_by(1)?;
                    return Ok(Token::UnsignedNumber(*number));
                }
                // Signed Number state of the state machine
                (Some(LexerStateMachine::SignedNumber(number)), '0'..='9') => {
                    let digit = decimal_char_to_t::<I256>(next_char);
                    *number = number
                        .checked_mul(I256::try_from(10).expect("Can't fail"))
                        .context("Multiplication overflowed")?;
                    *number = number
                        .checked_add(digit)
                        .context("Addition overflowed")?;
                    if number.is_positive() {
                        *number =
                            number.checked_neg().context("Negation failed")?
                    }
                }
                (Some(LexerStateMachine::SignedNumber(number)), _) => {
                    self.rewind_by(1)?;
                    return Ok(Token::SignedNumber(
                        number
                            .checked_neg()
                            .context("Failed to make signed number negative")?,
                    ));
                }
                // Hex number state of the state machine
                (
                    Some(LexerStateMachine::HexNumber(number)),
                    '0'..='9' | 'a'..='f' | 'A'..='F',
                ) => {
                    let digit = hex_char_to_t::<U256>(next_char);
                    *number *= U256::from(16);
                    *number += digit;
                }
                (Some(LexerStateMachine::HexNumber(number)), _) => {
                    self.rewind_by(1)?;
                    return Ok(Token::UnsignedNumber(*number));
                }
                // Quoted string state of the state machine
                (
                    Some(LexerStateMachine::QuotedString {
                        is_previous_char_an_escape_char,
                        string,
                    }),
                    '\\',
                ) => {
                    string.push(next_char);
                    *is_previous_char_an_escape_char = true
                }
                (
                    Some(LexerStateMachine::QuotedString {
                        string,
                        is_previous_char_an_escape_char,
                    }),
                    '"',
                ) => {
                    string.push(next_char);
                    if !*is_previous_char_an_escape_char {
                        return Ok(Token::QuotedString(string.to_string()));
                    } else {
                        *is_previous_char_an_escape_char = false;
                    }
                }
                (
                    Some(LexerStateMachine::QuotedString {
                        string,
                        is_previous_char_an_escape_char,
                    }),
                    _,
                ) => {
                    *is_previous_char_an_escape_char = false;
                    string.push(next_char);
                }
                // String literal state of the state machine
                (Some(LexerStateMachine::StringLiteral(string)), _) => {
                    if next_char.is_alphanumeric() || next_char == '_' {
                        string.push(next_char);
                    } else {
                        self.rewind_by(1)?;
                        return Ok(Token::StringLiteral(string.to_string()));
                    }
                }
            }
        }
        match state_machine {
            Some(
                LexerStateMachine::UnsignedNumber(number)
                | LexerStateMachine::HexNumber(number),
            ) => Ok(Token::UnsignedNumber(number)),
            Some(LexerStateMachine::SignedNumber(number)) => {
                Ok(Token::SignedNumber(number))
            }
            Some(LexerStateMachine::StringLiteral(string)) => {
                Ok(Token::StringLiteral(string))
            }
            Some(LexerStateMachine::QuotedString { string, .. }) => {
                Ok(Token::QuotedString(string))
            }
            None => Err(anyhow!("No more tokens found in the Lexer")),
        }
    }

    pub fn peek(&mut self) -> Result<Token> {
        self.peek_with(|lexer| lexer.next_token())
    }

    pub fn all_tokens(&mut self) -> Vec<Token> {
        let mut tokens = Vec::default();
        while let Ok(token) = self.next_token() {
            tokens.push(token)
        }
        tokens
    }

    pub fn is_eof(&mut self) -> bool {
        self.peek_with(|lexer| {
            while let Ok(next_char) = lexer.next_char() {
                if !next_char.is_whitespace() {
                    return false;
                }
            }
            true
        })
    }

    fn peek_with<O>(&mut self, callback: impl FnOnce(&mut Self) -> O) -> O {
        let position = self.0.position();
        let rtn = callback(self);
        self.0.set_position(position);
        rtn
    }
}

fn decimal_char_to_t<T: TryFrom<i32, Error: Debug>>(char: char) -> T {
    assert!(char.is_numeric());
    match char {
        '0' => T::try_from(0).unwrap(),
        '1' => T::try_from(1).unwrap(),
        '2' => T::try_from(2).unwrap(),
        '3' => T::try_from(3).unwrap(),
        '4' => T::try_from(4).unwrap(),
        '5' => T::try_from(5).unwrap(),
        '6' => T::try_from(6).unwrap(),
        '7' => T::try_from(7).unwrap(),
        '8' => T::try_from(8).unwrap(),
        '9' => T::try_from(9).unwrap(),
        _ => unreachable!(),
    }
}

fn hex_char_to_t<T: TryFrom<i32, Error: Debug>>(char: char) -> T {
    assert!(char.is_ascii_hexdigit());
    match char {
        '0' => T::try_from(0x0).unwrap(),
        '1' => T::try_from(0x1).unwrap(),
        '2' => T::try_from(0x2).unwrap(),
        '3' => T::try_from(0x3).unwrap(),
        '4' => T::try_from(0x4).unwrap(),
        '5' => T::try_from(0x5).unwrap(),
        '6' => T::try_from(0x6).unwrap(),
        '7' => T::try_from(0x7).unwrap(),
        '8' => T::try_from(0x8).unwrap(),
        '9' => T::try_from(0x9).unwrap(),
        'a' | 'A' => T::try_from(0xA).unwrap(),
        'b' | 'B' => T::try_from(0xB).unwrap(),
        'c' | 'C' => T::try_from(0xC).unwrap(),
        'd' | 'D' => T::try_from(0xD).unwrap(),
        'e' | 'E' => T::try_from(0xE).unwrap(),
        'f' | 'F' => T::try_from(0xF).unwrap(),
        _ => unreachable!(),
    }
}

// endregion:Lexer

// region:Primitive Tokens

trait Parse: Sized {
    fn parse(lexer: &mut Lexer) -> Result<Self>;

    fn peek(lexer: &mut Lexer) -> Result<Self> {
        lexer.peek_with(|lexer| Self::parse(lexer))
    }
}

impl<T: Parse> Parse for Option<T> {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        if T::peek(lexer).is_ok() {
            T::parse(lexer).map(Some)
        } else {
            Ok(None)
        }
    }
}

macro_rules! impl_parse_for_tuple {
    ($first_ident: ident $(, $($ident: ident),*)?) => {
        impl<$first_ident: Parse, $($($ident: Parse),*)?> Parse for ($first_ident, $($($ident),*)?)  {
            fn parse(lexer: &mut Lexer) -> Result<Self> {
                Ok((
                    $first_ident::parse(lexer)?,
                    $(
                        $($ident::parse(lexer)?),*
                    )?
                ))
            }
        }

        $(impl_parse_for_tuple!( $($ident),* );)?
    };
    () => {}
}

impl_parse_for_tuple!(
    A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y,
    Z
);

macro_rules! define_single_char_tokens {
    ($(
        $ty_ident: ident => $char: expr
    ),* $(,)?) => {
        $(
            #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
            #[allow(unused)]
            struct $ty_ident;

            impl Parse for $ty_ident {
                fn parse(lexer: &mut Lexer) -> Result<Self> {
                    let char_to_expect: char = $char;
                    match lexer.next_token() {
                        Ok(Token::NonAlphanumericCharacter(char)) if char == char_to_expect => {
                            Ok(Self)
                        }
                        r @ _ => {
                            Err(
                                anyhow!(
                                    "Failed to interpret {r:?} as {} of character {char_to_expect}",
                                    stringify!($ty_ident)
                                )
                            )
                        }
                    }
                }
            }
        )*
    };
}

macro_rules! define_literal_string_tokens {
    ($(
        $ty_ident: ident => $string: expr
    ),* $(,)?) => {
        $(
            #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
            #[allow(unused)]
            struct $ty_ident;

            impl Parse for $ty_ident {
                fn parse(lexer: &mut Lexer) -> Result<Self> {
                    let string_to_expect: &str = $string;
                    match lexer.next_token() {
                        Ok(Token::StringLiteral(string)) if string == string_to_expect => {
                            Ok(Self)
                        }
                        r @ _ => {
                            Err(
                                anyhow!(
                                    "Failed to interpret {r:?} as {} of string {string_to_expect}",
                                    stringify!($ty_ident)
                                )
                            )
                        }
                    }
                }
            }
        )*
    };
}

macro_rules! define_literal_string_wrappers {
    ($($ty_ident: ident),* $(,)?) => {
        $(
            define_wrapper_type!(
                #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
                #[allow(unused)]
                struct $ty_ident (StringLiteralToken);
            );

            impl Parse for $ty_ident {
                fn parse(lexer: &mut Lexer) -> Result<Self> {
                    StringLiteralToken::parse(lexer).map(Self)
                }
            }
        )*
    };
}

macro_rules! define_tokens_enum {
    (
        $(#[$meta: meta])*
        $vis:vis enum $ident: ident {
            $(
                $(#[$variant_meta: meta])*
                $variant_ident: ident ( $variant_ty: ty )
            ),* $(,)?
        }
    ) => {
        $(#[$meta])*
        $vis enum $ident {
            $(
                $(#[$variant_meta])*
                $variant_ident ( $variant_ty )
            ),*
        }

        impl Parse for $ident {
            fn parse(lexer: &mut Lexer) -> Result<Self> {
                $(
                    if <$variant_ty>::peek(lexer).is_ok() {
                        Parse::parse(lexer).map(Self::$variant_ident)
                    }
                )else*
                else {
                    Err(anyhow!("Failed to parse into {}", stringify!($ident)))
                }
            }
        }

        $(
            impl From<$variant_ty> for $ident {
                fn from(value: $variant_ty) -> Self {
                    Self::$variant_ident(value)
                }
            }
        )*
    };
}

define_single_char_tokens! {
    OpenParenToken => '(',
    CloseParenToken => ')',
    OpenBracketToken => '[',
    CloseBracketToken => ']',
    CommaToken => ',',
    ColonToken => ':',
    DashToken => '-',
    GtToken => '>',
    LtToken => '<',
    TildeToken => '~',
    PoundToken => '#',
}

define_wrapper_type!(
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    struct StringLiteralToken(String);
);

impl From<&str> for StringLiteralToken {
    fn from(value: &str) -> Self {
        Self(value.into())
    }
}

impl Parse for StringLiteralToken {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        match lexer.next_token() {
            Ok(Token::StringLiteral(string)) => Ok(Self(string)),
            r @ _ => {
                Err(anyhow!("Failed to interpret {r:?} as a string literal"))
            }
        }
    }
}

define_wrapper_type!(
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    struct QuotedStringToken(String);
);

impl From<&str> for QuotedStringToken {
    fn from(value: &str) -> Self {
        Self(value.into())
    }
}

impl Parse for QuotedStringToken {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        match lexer.next_token() {
            Ok(Token::QuotedString(string)) => Ok(Self(string)),
            r @ _ => {
                Err(anyhow!("Failed to interpret {r:?} as a quoted string"))
            }
        }
    }
}

define_wrapper_type!(
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    struct UnsignedNumberToken(U256);
);

impl Parse for UnsignedNumberToken {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        match lexer.next_token() {
            Ok(Token::UnsignedNumber(unsigned_number)) => {
                Ok(Self(unsigned_number))
            }
            r @ _ => {
                Err(anyhow!("Failed to interpret {r:?} as an unsigned number"))
            }
        }
    }
}

define_wrapper_type!(
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    struct SignedNumberToken(I256);
);

impl Parse for SignedNumberToken {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        match lexer.next_token() {
            Ok(Token::SignedNumber(signed_number)) => Ok(Self(signed_number)),
            r @ _ => {
                Err(anyhow!("Failed to interpret {r:?} as an signed number"))
            }
        }
    }
}

define_wrapper_type!(
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    struct BooleanToken(bool);
);

impl Parse for BooleanToken {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        match lexer.next_token() {
            Ok(Token::StringLiteral(literal)) if literal == "true" => {
                Ok(Self(true))
            }
            Ok(Token::StringLiteral(literal)) if literal == "false" => {
                Ok(Self(false))
            }
            r @ _ => Err(anyhow!("Failed to interpret {r:?} as an boolean")),
        }
    }
}

// endregion:Primitive Tokens

// region:Function Tokens

define_literal_string_tokens! {
    // Gas tokens
    GasLiteralToken => "gas",
    CodeLiteralToken => "code",
    LegacyLiteralToken => "legacy",
    IrOptimizedLiteralToken => "irOptimized",
    LegacyOptimizedLiteralToken => "legacyOptimized",

    // Denominations
    WeiLiteralToken => "wei",
    GweiLiteralToken => "gwei",
    EtherLiteralToken => "ether",

    // IO Tokens
    ConstructorLiteralToken => "constructor",
    HexLiteralToken => "hex",
    LeftLiteralToken => "left",
    RightLiteralToken => "right",
    FailureLiteralToken => "FAILURE",

    // Events
    EmitLiteralToken => "emit",
    FromLiteralToken => "from",
    AnonymousLiteralToken => "anonymous",

    // Library
    LibraryLiteralToken => "library",

    // Account
    AccountLiteralToken => "account",
    BalanceLiteralToken => "balance",

    // Storage
    StorageEmptyLiteralToken => "storageEmpty"
}

define_literal_string_wrappers! {
    FunctionIdentStringString,
    EventIdentString,
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
enum FunctionIdentString {
    StringIdentifier(FunctionIdentStringString),
    Fallback,
}

impl Parse for FunctionIdentString {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        if FunctionIdentStringString::peek(lexer).is_ok() {
            FunctionIdentStringString::parse(lexer).map(Self::StringIdentifier)
        } else if OpenParenToken::peek(lexer).is_ok() {
            Ok(Self::Fallback)
        } else {
            Err(anyhow!("Failed to parse function identifier"))
        }
    }
}

impl From<FunctionIdentStringString> for FunctionIdentString {
    fn from(value: FunctionIdentStringString) -> Self {
        Self::StringIdentifier(value)
    }
}

define_tokens_enum! {
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum EventSignature {
        Signature(ConcreteEventSignature),
        Anonymous(AnonymousEventIdent),
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct AnonymousEventIdent {
    lt: LtToken,
    anonymous: AnonymousLiteralToken,
    gt: GtToken,
}

impl Parse for AnonymousEventIdent {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            lt: Parse::parse(lexer)?,
            anonymous: Parse::parse(lexer)?,
            gt: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct ConcreteEventSignature {
    ident: EventIdentString,
    open_paren: OpenParenToken,
    argument_types: Vec<ArgumentType>,
    close_paren: CloseParenToken,
}

impl Parse for ConcreteEventSignature {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            ident: Parse::parse(lexer)?,
            open_paren: Parse::parse(lexer)?,
            argument_types: {
                let mut argument_types = Vec::new();

                loop {
                    if CloseParenToken::peek(lexer).is_ok() {
                        break;
                    } else if argument_types.is_empty() {
                        argument_types.push(Parse::parse(lexer)?);
                    } else {
                        CommaToken::parse(lexer)?;
                        argument_types.push(Parse::parse(lexer)?);
                    }
                }

                argument_types
            },
            close_paren: Parse::parse(lexer)?,
        })
    }
}

define_tokens_enum! {
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum EventValue {
        Indexed(IndexedEventValue),
        Unindexed(EventOutput),
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct IndexedEventValue {
    pound: PoundToken,
    value: EventOutput,
}

impl Parse for IndexedEventValue {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            pound: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

define_tokens_enum! {
    /// An enum of all of the possible tokens that can be used for the events.
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum EventOutput {
        UnsignedNumber(UnsignedNumberToken),
        SignedNumber(SignedNumberToken),
        Boolean(BooleanToken),
        String(QuotedStringToken),
        HexString(HexString),
        RightAlignedValue(RightAlignedValue),
        LeftAlignedValue(LeftAlignedValue)
    }
}

define_tokens_enum! {
    /// An enum of all of the possible tokens that can be used for the function input.
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum FunctionInput {
        UnsignedNumber(UnsignedNumberToken),
        SignedNumber(SignedNumberToken),
        Boolean(BooleanToken),
        String(QuotedStringToken),
        HexString(HexString),
        RightAlignedValue(RightAlignedValue),
        LeftAlignedValue(LeftAlignedValue)
    }
}

define_tokens_enum! {
    /// An enum of all of the possible tokens that can be used for the function output.
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum FunctionOutput {
        UnsignedNumber(UnsignedNumberToken),
        SignedNumber(SignedNumberToken),
        Boolean(BooleanToken),
        String(QuotedStringToken),
        HexString(HexString),
        RightAlignedValue(RightAlignedValue),
        LeftAlignedValue(LeftAlignedValue),
        Failure(FailureLiteralToken)
    }
}

define_tokens_enum! {
    /// An enum of all of the values that are allowed in the alignment operators
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum AlignmentAllowedValue {
        UnsignedNumber(UnsignedNumberToken),
        SignedNumber(SignedNumberToken),
        Boolean(BooleanToken),
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct RightAlignedValue {
    right: RightLiteralToken,
    open_paren: OpenParenToken,
    value: AlignmentAllowedValue,
    close_paren: CloseParenToken,
}

impl Parse for RightAlignedValue {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            right: Parse::parse(lexer)?,
            open_paren: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
            close_paren: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct LeftAlignedValue {
    left: LeftLiteralToken,
    open_paren: OpenParenToken,
    value: AlignmentAllowedValue,
    close_paren: CloseParenToken,
}

impl Parse for LeftAlignedValue {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            left: Parse::parse(lexer)?,
            open_paren: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
            close_paren: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct HexString {
    hex: HexLiteralToken,
    quoted_string: QuotedStringToken,
}

impl Parse for HexString {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            hex: Parse::parse(lexer)?,
            quoted_string: {
                let quoted_string = QuotedStringToken::parse(lexer)?;
                let trimmed = quoted_string.trim_matches('"');
                if !quoted_string
                    .trim_matches('"')
                    .chars()
                    .all(|char| char.is_ascii_hexdigit() || char == '_')
                {
                    bail!(
                        "Invalid hex string, it contains non-hex digits {}",
                        trimmed
                    )
                };
                quoted_string
            },
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct ArrayQuantifier {
    open_bracket: OpenBracketToken,
    quantity: Option<UnsignedNumberToken>,
    close_bracket: CloseBracketToken,
}

impl Parse for ArrayQuantifier {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            open_bracket: Parse::parse(lexer)?,
            quantity: if UnsignedNumberToken::peek(lexer).is_ok() {
                Some(UnsignedNumberToken::parse(lexer)?)
            } else {
                None
            },
            close_bracket: Parse::parse(lexer)?,
        })
    }
}

define_wrapper_type! {
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    struct ArgumentType(String);
}

impl Parse for ArgumentType {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        let mut open_paren_count = 0u32;
        let mut arg = String::new();
        loop {
            match lexer.next_token()? {
                Token::UnsignedNumber(uint) => {
                    arg.push_str(uint.to_string().as_str());
                }
                Token::SignedNumber(signed) => {
                    arg.push_str(signed.to_string().as_str())
                }
                Token::StringLiteral(literal) => arg.push_str(&literal),
                Token::NonAlphanumericCharacter('(') => {
                    open_paren_count += 1;
                    arg.push('(');
                }
                Token::NonAlphanumericCharacter(')')
                    if open_paren_count == 0 =>
                {
                    while CloseParenToken::peek(lexer).is_err() {
                        lexer.rewind_by(1)?
                    }
                    break;
                }
                Token::NonAlphanumericCharacter(')') => {
                    open_paren_count -= 1;
                    arg.push(')');
                }
                Token::NonAlphanumericCharacter(',')
                    if open_paren_count == 0 =>
                {
                    while CommaToken::peek(lexer).is_err() {
                        lexer.rewind_by(1)?
                    }
                    break;
                }
                Token::NonAlphanumericCharacter(c @ _) => {
                    arg.push(c);
                }
                Token::QuotedString(_) => {
                    bail!(
                        "Quoted string encountered inside of an argument type"
                    )
                }
            }
        }
        Ok(Self(arg))
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
struct Arrow {
    dash: DashToken,
    gt: GtToken,
}

impl Parse for Arrow {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            dash: Parse::parse(lexer)?,
            gt: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct Document(Vec<DocumentItem>);

impl Parse for Document {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        let mut vec = Vec::new();
        while !lexer.is_eof() {
            match Parse::parse(lexer) {
                Ok(item) => vec.push(item),
                Err(error) => {
                    let mut str = String::new();
                    lexer.0.read_to_string(&mut str)?;
                    bail!(
                        "Parsing of document item failed with {error}, remaining lexer items: {} and parsed items {vec:#?}",
                        str
                    )
                }
            }
        }
        Ok(Self(vec))
    }
}

define_tokens_enum! {
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum DocumentItem {
        Caller(CallerItem),
        Library(LibraryItem),
        TestCase(TestCaseItem),
        ConstructorCall(ConstructorCallItem),
        StorageEmpty(StorageEmptyItem),
        BalanceAssertionItem(BalanceAssertionItem),
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct StorageEmptyItem {
    storage_empty: StorageEmptyLiteralToken,
    arrow: Arrow,
    is_empty: UnsignedNumberToken,
}

impl Parse for StorageEmptyItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            storage_empty: Parse::parse(lexer)?,
            arrow: Parse::parse(lexer)?,
            is_empty: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct LibraryItem {
    library: LibraryLiteralToken,
    colon: ColonToken,
    path: Option<(QuotedStringToken, ColonToken)>,
    library_ident: StringLiteralToken,
}

impl Parse for LibraryItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            library: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            path: Parse::parse(lexer)?,
            library_ident: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct CallerItem {
    account: AccountLiteralToken,
    colon: ColonToken,
    number: UnsignedNumberToken,
    arrow: Arrow,
    account_address: UnsignedNumberToken,
}

impl Parse for CallerItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            account: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            number: Parse::parse(lexer)?,
            arrow: Parse::parse(lexer)?,
            account_address: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct BalanceAssertionItem {
    balance: BalanceLiteralToken,
    account_address: Option<(ColonToken, UnsignedNumberToken)>,
    arrow: Arrow,
    balance_amount: UnsignedNumberToken,
}

impl Parse for BalanceAssertionItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            balance: Parse::parse(lexer)?,
            account_address: Parse::parse(lexer)?,
            arrow: Parse::parse(lexer)?,
            balance_amount: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct ConstructorCallItem {
    constructor: ConstructorLiteralToken,
    open_paren: OpenParenToken,
    close_paren: CloseParenToken,
    value: Option<(CommaToken, EtherValue)>,
    arguments: Vec<FunctionInput>,
    arrow: Option<Arrow>,
    post_function_items: Vec<PostFunctionItems>,
}

impl Parse for ConstructorCallItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            constructor: Parse::parse(lexer)?,
            open_paren: Parse::parse(lexer)?,
            close_paren: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
            arguments: {
                let mut arguments = Vec::new();

                if ColonToken::peek(lexer).is_ok() {
                    ColonToken::parse(lexer)?;
                    loop {
                        if arguments.is_empty() {
                            if FunctionInput::peek(lexer).is_ok() {
                                arguments.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        } else {
                            if CommaToken::peek(lexer).is_ok() {
                                CommaToken::parse(lexer)?;
                                arguments.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        }
                    }
                }

                arguments
            },
            arrow: Parse::parse(lexer)?,
            post_function_items: {
                let mut post_function_items = Vec::new();

                loop {
                    if PostFunctionItems::peek(lexer).is_ok() {
                        post_function_items.push(Parse::parse(lexer)?);
                    } else {
                        break;
                    }
                }

                post_function_items
            },
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct TestCaseItem {
    signature: FunctionSignature,
    ether_value: Option<EtherValue>,
    arguments: Vec<FunctionInput>,
    returns: Vec<FunctionOutput>,
    post_function_items: Vec<PostFunctionItems>,
}

impl Parse for TestCaseItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            signature: Parse::parse(lexer)?,
            ether_value: {
                if CommaToken::peek(lexer).is_ok() {
                    CommaToken::parse(lexer)?;
                    Some(EtherValue::parse(lexer)?)
                } else {
                    None
                }
            },
            arguments: {
                let mut arguments = Vec::new();

                if ColonToken::peek(lexer).is_ok() {
                    ColonToken::parse(lexer)?;
                    loop {
                        if arguments.is_empty() {
                            if FunctionInput::peek(lexer).is_ok() {
                                arguments.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        } else {
                            if CommaToken::peek(lexer).is_ok() {
                                CommaToken::parse(lexer)?;
                                arguments.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        }
                    }
                }

                arguments
            },
            returns: {
                let mut returns = Vec::new();
                if Arrow::peek(lexer).is_ok() {
                    Arrow::parse(lexer)?;
                    loop {
                        if returns.is_empty() {
                            if FunctionOutput::peek(lexer).is_ok() {
                                returns.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        } else {
                            if CommaToken::peek(lexer).is_ok() {
                                CommaToken::parse(lexer)?;
                                returns.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        }
                    }
                }

                returns
            },
            post_function_items: {
                let mut post_function_items = Vec::new();

                loop {
                    if PostFunctionItems::peek(lexer).is_ok() {
                        post_function_items.push(Parse::parse(lexer)?);
                    } else {
                        break;
                    }
                }

                post_function_items
            },
        })
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct FunctionSignature {
    ident: FunctionIdentString,
    open_paren: OpenParenToken,
    argument_types: Vec<ArgumentType>,
    close_paren: CloseParenToken,
}

impl Parse for FunctionSignature {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            ident: Parse::parse(lexer)?,
            open_paren: Parse::parse(lexer)?,
            argument_types: {
                let mut argument_types = Vec::new();

                loop {
                    if CloseParenToken::peek(lexer).is_ok() {
                        break;
                    } else if argument_types.is_empty() {
                        argument_types.push(Parse::parse(lexer)?);
                    } else {
                        CommaToken::parse(lexer)?;
                        argument_types.push(Parse::parse(lexer)?);
                    }
                }

                argument_types
            },
            close_paren: Parse::parse(lexer)?,
        })
    }
}

define_tokens_enum! {
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum EtherValueDenomination {
        Wei(WeiLiteralToken),
        Gwei(GweiLiteralToken),
        Ether(EtherLiteralToken),
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct EtherValue {
    amount: UnsignedNumberToken,
    denomination: EtherValueDenomination,
}

impl Parse for EtherValue {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            amount: Parse::parse(lexer)?,
            denomination: Parse::parse(lexer)?,
        })
    }
}

// Post-function Items

define_tokens_enum! {
    /// Items that can appear after the function returns section
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    enum PostFunctionItems {
        IrOptimizedGasItem(IrOptimizedGasItem),
        IrOptimizedGasCodeItem(IrOptimizedGasCodeItem),
        LegacyGasItem(LegacyGasItem),
        LegacyGasCodeItem(LegacyGasCodeItem),
        LegacyOptimizedGasItem(LegacyOptimizedGasItem),
        LegacyOptimizedGasCodeItem(LegacyOptimizedGasCodeItem),
        EmittedEventItem(EmittedEventItem),
        BalanceAssertionItem(BalanceAssertionItem)
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct EmittedEventItem {
    tilde: TildeToken,
    emit: EmitLiteralToken,
    signature: EventSignature,
    from: Option<(FromLiteralToken, UnsignedNumberToken)>,
    values: Vec<EventValue>,
}

impl Parse for EmittedEventItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            tilde: Parse::parse(lexer)?,
            emit: Parse::parse(lexer)?,
            signature: Parse::parse(lexer)?,
            from: Parse::parse(lexer)?,
            values: {
                let mut values = Vec::new();

                if ColonToken::peek(lexer).is_ok() {
                    ColonToken::parse(lexer)?;
                    loop {
                        if values.is_empty() {
                            if EventValue::peek(lexer).is_ok() {
                                values.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        } else {
                            if CommaToken::peek(lexer).is_ok() {
                                CommaToken::parse(lexer)?;
                                values.push(Parse::parse(lexer)?);
                            } else {
                                break;
                            }
                        }
                    }
                }

                values
            },
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct IrOptimizedGasItem {
    gas: GasLiteralToken,
    kind: IrOptimizedLiteralToken,
    colon: ColonToken,
    value: UnsignedNumberToken,
}

impl Parse for IrOptimizedGasItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            gas: Parse::parse(lexer)?,
            kind: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct IrOptimizedGasCodeItem {
    gas: GasLiteralToken,
    kind: IrOptimizedLiteralToken,
    code: CodeLiteralToken,
    colon: ColonToken,
    value: UnsignedNumberToken,
}

impl Parse for IrOptimizedGasCodeItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            gas: Parse::parse(lexer)?,
            kind: Parse::parse(lexer)?,
            code: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct LegacyGasItem {
    gas: GasLiteralToken,
    kind: LegacyLiteralToken,
    colon: ColonToken,
    value: UnsignedNumberToken,
}

impl Parse for LegacyGasItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            gas: Parse::parse(lexer)?,
            kind: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct LegacyGasCodeItem {
    gas: GasLiteralToken,
    kind: LegacyLiteralToken,
    code: CodeLiteralToken,
    colon: ColonToken,
    value: UnsignedNumberToken,
}

impl Parse for LegacyGasCodeItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            gas: Parse::parse(lexer)?,
            kind: Parse::parse(lexer)?,
            code: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct LegacyOptimizedGasItem {
    gas: GasLiteralToken,
    kind: LegacyOptimizedLiteralToken,
    colon: ColonToken,
    value: UnsignedNumberToken,
}

impl Parse for LegacyOptimizedGasItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            gas: Parse::parse(lexer)?,
            kind: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
struct LegacyOptimizedGasCodeItem {
    gas: GasLiteralToken,
    kind: LegacyOptimizedLiteralToken,
    code: CodeLiteralToken,
    colon: ColonToken,
    value: UnsignedNumberToken,
}

impl Parse for LegacyOptimizedGasCodeItem {
    fn parse(lexer: &mut Lexer) -> Result<Self> {
        Ok(Self {
            gas: Parse::parse(lexer)?,
            kind: Parse::parse(lexer)?,
            code: Parse::parse(lexer)?,
            colon: Parse::parse(lexer)?,
            value: Parse::parse(lexer)?,
        })
    }
}

// endregion:Function Tokens

// region:Tests

#[cfg(test)]
mod test {
    use std::fs::read_to_string;

    use indoc::indoc;

    use crate::{
        common::FilesWithExtensionIterator,
        semantic_tests_parser::section::SemanticTestSection,
    };

    use super::*;

    #[test]
    fn tokenization_is_done_correctly() {
        // Arrange
        let string = indoc!(
            r#"
            myFunction(uint256, uint64, uint256[][2]
            )
            :
            1, 2
            , 3, "abc\"", -1          ,    1, 0x123
            -> 1, 2, 3, 4
            gas irOptimized: 135499
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let tokens = lexer.all_tokens();

        // Assert
        assert!(lexer.is_eof());
        assert_eq!(
            tokens,
            vec![
                Token::new_string_literal("myFunction"),
                Token::new_non_alphanumeric_char('('),
                Token::new_string_literal("uint256"),
                Token::new_non_alphanumeric_char(','),
                Token::new_string_literal("uint64"),
                Token::new_non_alphanumeric_char(','),
                Token::new_string_literal("uint256"),
                Token::new_non_alphanumeric_char('['),
                Token::new_non_alphanumeric_char(']'),
                Token::new_non_alphanumeric_char('['),
                Token::new_unsigned_number(U256::from(2)),
                Token::new_non_alphanumeric_char(']'),
                Token::new_non_alphanumeric_char(')'),
                Token::new_non_alphanumeric_char(':'),
                Token::new_unsigned_number(U256::from(1)),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(2)),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(3)),
                Token::new_non_alphanumeric_char(','),
                Token::new_quoted_string("\"abc\\\"\""),
                Token::new_non_alphanumeric_char(','),
                Token::new_signed_number(I256::ONE.saturating_neg()),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(1)),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(0x123)),
                Token::new_non_alphanumeric_char('-'),
                Token::new_non_alphanumeric_char('>'),
                Token::new_unsigned_number(U256::from(1)),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(2)),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(3)),
                Token::new_non_alphanumeric_char(','),
                Token::new_unsigned_number(U256::from(4)),
                Token::new_string_literal("gas"),
                Token::new_string_literal("irOptimized"),
                Token::new_non_alphanumeric_char(':'),
                Token::new_unsigned_number(U256::from(135499)),
            ]
        )
    }

    #[test]
    fn function_signature_can_be_parsed() {
        // Arrange
        let string = "myFunction(uint256, uint64[][2])";
        let mut lexer = Lexer::new(string);

        // Act
        let function_signature = FunctionSignature::parse(&mut lexer);

        // Assert
        let function_signature =
            function_signature.expect("Failed to parse the function signature");
        assert!(lexer.is_eof());
        assert_eq!(
            function_signature,
            FunctionSignature {
                ident: FunctionIdentStringString::new("myFunction").into(),
                open_paren: OpenParenToken,
                argument_types: vec![
                    ArgumentType::new("uint256"),
                    ArgumentType::new("uint64[][2]"),
                ],
                close_paren: CloseParenToken
            }
        )
    }

    #[test]
    fn test_function_can_be_parsed() {
        // Arrange
        let string = indoc!(
            r#"
            myFunction(uint256, uint64[][2]), 10 gwei: 
                1, -1,
                true, false,
                "a string", hex"DEAD_BEEF",
                right(0xdeadbeef), right(1), right(-1), right(true), right(false),
                left(0xdeadbeef), left(1), left(-1), left(true), left(false)
                -> 
                1, -1,
                true, false,
                "a string", hex"DEAD_BEEF",
                right(0xdeadbeef), right(1), right(-1), right(true), right(false),
                left(0xdeadbeef), left(1), left(-1), left(true), left(false), FAILURE
                gas irOptimized: 135499
                gas legacy: 137095
                gas legacyOptimized: 135823
                gas irOptimized code: 135499
                gas legacy code: 137095
                gas legacyOptimized code: 135823
                ~ emit Log(uint8) from 0x137aa4dfc0911524504fcd4d98501f179bc13b4a: 0x00
                ~ emit <anonymous>: 0x00, #0x00
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let test_function = TestCaseItem::parse(&mut lexer);

        // Assert
        let test_function =
            test_function.expect("Failed to parse the function signature");
        assert_eq!(
            test_function,
            TestCaseItem {
                signature: FunctionSignature {
                    ident: FunctionIdentStringString::new("myFunction").into(),
                    open_paren: OpenParenToken,
                    argument_types: vec![
                        ArgumentType::new("uint256"),
                        ArgumentType::new("uint64[][2]"),
                    ],
                    close_paren: CloseParenToken
                },
                ether_value: Some(EtherValue {
                    amount: U256::from(10).into(),
                    denomination: EtherValueDenomination::Gwei(
                        Default::default()
                    )
                }),
                arguments: vec![
                    FunctionInput::UnsignedNumber(U256::from(1).into()),
                    FunctionInput::SignedNumber(
                        I256::try_from(-1).unwrap().into()
                    ),
                    FunctionInput::Boolean(true.into()),
                    FunctionInput::Boolean(false.into()),
                    FunctionInput::String("\"a string\"".into()),
                    FunctionInput::HexString(HexString {
                        hex: HexLiteralToken,
                        quoted_string: "\"DEAD_BEEF\"".into()
                    }),
                    FunctionInput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(0xdeadbeef_u64).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionInput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(1).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionInput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::SignedNumber(
                            I256::try_from(-1).unwrap().into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionInput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(true.into()),
                        close_paren: Default::default()
                    }),
                    FunctionInput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(false.into()),
                        close_paren: Default::default()
                    }),
                    FunctionInput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(0xdeadbeef_u64).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionInput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(1).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionInput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::SignedNumber(
                            I256::try_from(-1).unwrap().into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionInput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(true.into()),
                        close_paren: Default::default()
                    }),
                    FunctionInput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(false.into()),
                        close_paren: Default::default()
                    }),
                ],
                returns: vec![
                    FunctionOutput::UnsignedNumber(U256::from(1).into()),
                    FunctionOutput::SignedNumber(
                        I256::try_from(-1).unwrap().into()
                    ),
                    FunctionOutput::Boolean(true.into()),
                    FunctionOutput::Boolean(false.into()),
                    FunctionOutput::String("\"a string\"".into()),
                    FunctionOutput::HexString(HexString {
                        hex: HexLiteralToken,
                        quoted_string: "\"DEAD_BEEF\"".into()
                    }),
                    FunctionOutput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(0xdeadbeef_u64).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(1).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::SignedNumber(
                            I256::try_from(-1).unwrap().into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(true.into()),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::RightAlignedValue(RightAlignedValue {
                        right: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(false.into()),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(0xdeadbeef_u64).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::UnsignedNumber(
                            U256::from(1).into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::SignedNumber(
                            I256::try_from(-1).unwrap().into()
                        ),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(true.into()),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::LeftAlignedValue(LeftAlignedValue {
                        left: Default::default(),
                        open_paren: Default::default(),
                        value: AlignmentAllowedValue::Boolean(false.into()),
                        close_paren: Default::default()
                    }),
                    FunctionOutput::Failure(Default::default())
                ],
                post_function_items: vec![
                    PostFunctionItems::IrOptimizedGasItem(IrOptimizedGasItem {
                        gas: Default::default(),
                        kind: Default::default(),
                        colon: Default::default(),
                        value: UnsignedNumberToken::new(U256::from(135499)),
                    }),
                    PostFunctionItems::LegacyGasItem(LegacyGasItem {
                        gas: Default::default(),
                        kind: Default::default(),
                        colon: Default::default(),
                        value: UnsignedNumberToken::new(U256::from(137095)),
                    }),
                    PostFunctionItems::LegacyOptimizedGasItem(
                        LegacyOptimizedGasItem {
                            gas: Default::default(),
                            kind: Default::default(),
                            colon: Default::default(),
                            value: UnsignedNumberToken::new(U256::from(135823)),
                        }
                    ),
                    PostFunctionItems::IrOptimizedGasCodeItem(
                        IrOptimizedGasCodeItem {
                            gas: Default::default(),
                            kind: Default::default(),
                            code: Default::default(),
                            colon: Default::default(),
                            value: UnsignedNumberToken::new(U256::from(135499)),
                        }
                    ),
                    PostFunctionItems::LegacyGasCodeItem(LegacyGasCodeItem {
                        gas: Default::default(),
                        kind: Default::default(),
                        code: Default::default(),
                        colon: Default::default(),
                        value: UnsignedNumberToken::new(U256::from(137095)),
                    }),
                    PostFunctionItems::LegacyOptimizedGasCodeItem(
                        LegacyOptimizedGasCodeItem {
                            gas: Default::default(),
                            kind: Default::default(),
                            code: Default::default(),
                            colon: Default::default(),
                            value: UnsignedNumberToken::new(U256::from(135823)),
                        }
                    ),
                    PostFunctionItems::EmittedEventItem(EmittedEventItem {
                        tilde: Default::default(),
                        emit: Default::default(),
                        signature: EventSignature::Signature(
                            ConcreteEventSignature {
                                ident: EventIdentString::new("Log"),
                                open_paren: Default::default(),
                                argument_types: vec![ArgumentType::new(
                                    "uint8"
                                ),],
                                close_paren: Default::default()
                            }
                        ),
                        from: Some((
                            FromLiteralToken,
                            UnsignedNumberToken::new(
                                U256::from_str_radix(
                                    "137aa4dfc0911524504fcd4d98501f179bc13b4a",
                                    16
                                )
                                .unwrap()
                            )
                        )),
                        values: vec![EventValue::Unindexed(
                            EventOutput::UnsignedNumber(
                                U256::from(0x00).into()
                            )
                        )]
                    }),
                    PostFunctionItems::EmittedEventItem(EmittedEventItem {
                        tilde: Default::default(),
                        emit: Default::default(),
                        signature: EventSignature::Anonymous(
                            AnonymousEventIdent {
                                lt: Default::default(),
                                anonymous: Default::default(),
                                gt: Default::default()
                            }
                        ),
                        from: None,
                        values: vec![
                            EventValue::Unindexed(EventOutput::UnsignedNumber(
                                U256::from(0x00).into()
                            )),
                            EventValue::Indexed(IndexedEventValue {
                                pound: Default::default(),
                                value: EventOutput::UnsignedNumber(
                                    U256::from(0x00).into()
                                )
                            })
                        ]
                    })
                ]
            }
        )
    }

    #[test]
    fn test_function_can_be_parsed_for_fallback_function() {
        // Arrange
        let string = indoc!(
            r#"
            (), 5 ether: 1, -1, true, false -> 
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let test_function = TestCaseItem::parse(&mut lexer);

        // Assert
        let test_function =
            test_function.expect("Failed to parse the function signature");
        assert_eq!(
            test_function,
            TestCaseItem {
                signature: FunctionSignature {
                    ident: FunctionIdentString::Fallback,
                    open_paren: OpenParenToken,
                    argument_types: Default::default(),
                    close_paren: CloseParenToken
                },
                ether_value: Some(EtherValue {
                    amount: U256::from(5).into(),
                    denomination: EtherValueDenomination::Ether(
                        Default::default()
                    )
                }),
                arguments: vec![
                    FunctionInput::UnsignedNumber(U256::from(1).into()),
                    FunctionInput::SignedNumber(
                        I256::try_from(-1).unwrap().into()
                    ),
                    FunctionInput::Boolean(true.into()),
                    FunctionInput::Boolean(false.into()),
                ],
                returns: Default::default(),
                post_function_items: Default::default()
            }
        )
    }

    #[test]
    fn test_function_no_arguments_can_be_parsed() {
        // Arrange
        let string = indoc!(
            r#"
            myFunction() -> 
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let test_function = TestCaseItem::parse(&mut lexer);

        // Assert
        let test_function =
            test_function.expect("Failed to parse the function signature");
        assert_eq!(
            test_function,
            TestCaseItem {
                signature: FunctionSignature {
                    ident: FunctionIdentStringString::new("myFunction").into(),
                    open_paren: OpenParenToken,
                    argument_types: Default::default(),
                    close_paren: CloseParenToken
                },
                ether_value: Default::default(),
                arguments: Default::default(),
                returns: Default::default(),
                post_function_items: Default::default()
            }
        )
    }

    #[test]
    fn test_function_with_underscores_can_be_parsed() {
        // Arrange
        let string = indoc!(
            r#"
            _result_in_constructor() -> 0xfffb
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let test_function = TestCaseItem::parse(&mut lexer);

        // Assert
        let test_function =
            test_function.expect("Failed to parse the function signature");
        assert_eq!(
            test_function,
            TestCaseItem {
                signature: FunctionSignature {
                    ident: FunctionIdentStringString::new(
                        "_result_in_constructor"
                    )
                    .into(),
                    open_paren: OpenParenToken,
                    argument_types: Default::default(),
                    close_paren: CloseParenToken
                },
                ether_value: Default::default(),
                arguments: Default::default(),
                returns: vec![FunctionOutput::UnsignedNumber(
                    UnsignedNumberToken::new(U256::from(0xfffb))
                )],
                post_function_items: Default::default()
            }
        )
    }

    #[test]
    fn test_function_with_underscores_can_be_parsed2() {
        // Arrange
        let string = indoc!(
            r#"
            getBMember() -> 5
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let test_function = TestCaseItem::parse(&mut lexer);

        // Assert
        let test_function =
            test_function.expect("Failed to parse the function signature");
        assert_eq!(
            test_function,
            TestCaseItem {
                signature: FunctionSignature {
                    ident: FunctionIdentStringString::new("getBMember").into(),
                    open_paren: OpenParenToken,
                    argument_types: Default::default(),
                    close_paren: CloseParenToken
                },
                ether_value: Default::default(),
                arguments: Default::default(),
                returns: vec![FunctionOutput::UnsignedNumber(
                    UnsignedNumberToken::new(U256::from(5))
                )],
                post_function_items: Default::default()
            }
        )
    }

    #[test]
    fn hex_with_leading_zeros_can_be_parsed() {
        // Arrange
        let string = "0x01";
        let mut lexer = Lexer::new(string);

        // Act
        let token = lexer.next_token();

        // Assert
        let token = token.expect("Next token failed");
        assert_eq!(token, Token::UnsignedNumber(U256::from(0x01)));
    }

    #[test]
    fn all_semantic_tests_can_be_parsed() {
        // Arrange
        let path = "../../fixtures/solidity/ethereum";
        let paths =
            FilesWithExtensionIterator::new(path).with_allowed_extension("sol");

        for path in paths {
            let content = read_to_string(&path).unwrap();

            let sections =
                SemanticTestSection::parse_source_into_sections(content)
                    .unwrap();
            let tests = sections.into_iter().find_map(|section| {
                if let SemanticTestSection::TestInputs { lines } = section {
                    Some(lines.join("\n"))
                } else {
                    None
                }
            });

            let Some(tests) = tests else {
                println!("No test cases found in {path:?}");
                continue;
            };

            // Act
            let mut lexer = Lexer::new(&tests);
            let document = Document::parse(&mut lexer);

            // Assert
            assert!(
                document.is_ok(),
                "Document {path:?} of content {tests} parsing failed with {document:?}"
            );
            println!("✅ Succeeded {path:?}");
        }
    }
}

// endregion:Tests
