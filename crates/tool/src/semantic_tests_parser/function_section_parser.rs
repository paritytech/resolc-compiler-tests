use std::{
    fmt::{Debug, Display},
    io::{Cursor, Read},
    marker::PhantomData,
    str::FromStr,
    sync::LazyLock,
};

use alloy::primitives::{I256, U256};
use anyhow::{Error, Result, bail};
use regex::Regex;
use revive_dt_common::define_wrapper_type;

// region:Macros
macro_rules! impl_parse_for_tuple {
    ($first_ident: ident $(, $($ident: ident),*)?) => {
        impl<$first_ident: Parse, $($($ident: Parse),*)?> Parse for ($first_ident, $($($ident),*)?)  {
            fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
                Ok((
                    $first_ident::parse(parser)?,
                    $(
                        $($ident::parse(parser)?),*
                    )?
                ))
            }
        }

        $(impl_parse_for_tuple!( $($ident),* );)?
    };
}

macro_rules! define_single_char_nodes {
    ($(
        $vis: vis $ty_ident: ident => $char: expr
    ),* $(,)?) => {
        $(
            #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
            #[allow(unused)]
            $vis struct $ty_ident;

            impl Parse for $ty_ident {
                fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
                    let char_to_expect: char = $char;
                    match parser.next_token() {
                        Ok(Some(Token::NonAlphanumericCharacter(char))) if char.0 == char_to_expect => {
                            Ok(Self)
                        }
                        r @ _ => {
                            bail!(
                                "Failed to interpret {r:?} as {} of character {char_to_expect}",
                                stringify!($ty_ident)
                            )
                        }
                    }
                }
            }
        )*
    };
}

macro_rules! define_identifier_nodes {
    ($(
        $vis: vis $ty_ident: ident => $string: expr
    ),* $(,)?) => {
        $(
            #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
            #[allow(unused)]
            $vis struct $ty_ident;

            impl Parse for $ty_ident {
                fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
                    let string_to_expect: &str = $string;
                    match parser.next_token() {
                        Ok(Some(Token::Identifier(string))) if string.0 == string_to_expect => {
                            Ok(Self)
                        }
                        r @ _ => {
                            bail!(
                                "Failed to interpret {r:?} as {} of string {string_to_expect}",
                                stringify!($ty_ident)
                            )
                        }
                    }
                }
            }
        )*
    };
}

macro_rules! define_nodes_enum {
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
            fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
                $(
                    if let Ok(value) = parser.peek_and_take::<$variant_ty>() {
                        Ok(Self::$variant_ident(value))
                    }
                )else*
                else {
                    bail!("Failed to parse into {}", stringify!($ident))
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

macro_rules! derive_parse_for_struct {
    (
        $(#[$meta: meta])*
        $vis:vis struct $ident: ident {
            $(
                $(#[$field_meta: meta])*
                $field_vis: vis $field_ident: ident : $field_ty: ty
            ),* $(,)?
        }
    ) => {
        $(#[$meta])*
        $vis struct $ident {
            $(
                $(#[$field_meta])*
                $field_vis $field_ident: $field_ty
            ),*
        }

        impl Parse for $ident {
            fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
                Ok(Self {
                    $(
                        $field_ident: Parse::parse(parser)?
                    ),*
                })
            }
        }

    };
}
// endregion:Macros

// region:Syntax Tree

define_wrapper_type! {
    /// Defines a full document of nodes.
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct Document(Vec<DocumentItem>);
}

impl Parse for Document {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        let mut vec = Vec::new();
        while !parser.is_eof() {
            let original_position = parser.0.0.position();
            match parser.parse() {
                Ok(node) => {
                    let position_after = parser.0.0.position();

                    let underlying = parser.0.0.get_ref().as_ref();
                    let line = String::from_utf8(
                        underlying[original_position as usize
                            ..position_after as usize]
                            .to_vec(),
                    )?;

                    vec.push(DocumentItem::new(node, line));
                }
                Err(error) => {
                    bail!(
                        "Parsing as document failed with error \"{}\" with remaining tokens {:?}",
                        error,
                        parser.peek_with(|parser| parser.remaining_tokens())
                    );
                }
            }
        }
        Ok(Self(vec))
    }
}

impl FromStr for Document {
    type Err = Error;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        Parser::new_from_stream(s).parse()
    }
}

/// A document item that holds the node as well as the underlying line that the
/// node was parsed from.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct DocumentItem {
    pub node: Node,
    pub line: String,
}

impl DocumentItem {
    pub fn new(node: Node, line: String) -> Self {
        static REGEX: LazyLock<Regex> =
            LazyLock::new(|| Regex::new(r"\s+").unwrap());
        line.replace("\n", "");
        let line = REGEX.replace_all(&line.trim(), " ").to_string();
        Self { node, line }
    }
}

define_nodes_enum! {
    /// The possible values that the top-level node of the syntax tree can take.
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum Node {
        /// An instruction to switch the caller to another caller.
        CallerSwitch(CallerSwitchNode),

        /// A declaration of a library to be used for the test cases.
        LibraryDeclaration(LibraryDeclarationNode),

        /// An assertion of the storage state of the main contract.
        StorageEmptyAssertion(StorageEmptyAssertionNode),

        /// An assertion of the balance of some contract or account.
        BalanceAssertion(BalanceAssertionNode),

        /// An assertion for gas used on some function or deployment.
        GasAssertion(GasAssertionNode),

        /// An assertion for an emitted event from some function or caller.
        EventAssertion(EventAssertionNode),

        /// A function call node to some function on the main contract.
        FunctionCall(FunctionCallNode)
    }
}

derive_parse_for_struct! {
    /// A node for the item directing the caller to be switched to another caller.
    ///
    /// This looks like the following:
    ///
    /// ```text
    /// account 0: 0xdeadbeef
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct CallerSwitchNode {
        pub account_ident: AccountIdentifier,
        pub colon: ColonToken,
        pub account_number: U256,
        pub arrow: Arrow,
        pub account_address: U256,
    }
}

derive_parse_for_struct! {
    /// A node for library declarations within the test cases. This looks like
    /// the following:
    ///
    /// ```test
    /// library A
    /// library: "A":L
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct LibraryDeclarationNode {
        pub library_ident: LibraryIdentifier,
        pub colon: ColonToken,
        pub path: Option<(StringLiteral, ColonToken)>,
        pub identifier: Identifier
    }
}

derive_parse_for_struct! {
    /// A node for asserting if the storage of the contract is empty or not.
    /// This can look like the following:
    ///
    /// ```text
    /// storageEmpty -> 0
    /// storageEmpty -> 1
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct StorageEmptyAssertionNode {
        pub storage_empty_ident: StorageEmptyIdentifier,
        pub arrow: Arrow,
        /// Note: in the test cases this is an integer that can either be 0 or 1
        /// and not a boolean and therefore it gets parsed to an unsigned int.
        pub is_empty: U256
    }
}

derive_parse_for_struct! {
    /// A node asserting that the balance of the specified or default account is
    /// of the specified amount. This can look like the following:
    ///
    /// ```
    /// balance -> 12
    /// balance: 0xdeadbeef -> 12
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct BalanceAssertionNode {
        pub balance_ident: BalanceIdentifier,
        pub account_address: Option<(ColonToken, U256)>,
        pub arrow: Arrow,
        pub balance_amount: U256
    }
}

derive_parse_for_struct! {
    /// A function call node for a call to some function on the main contract.
    /// This can look like the following:
    ///
    /// ```text
    /// func(u256), 12 wei: 12 -> 12
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct FunctionCallNode {
        pub signature: Signature,
        pub ether_value: Option<(CommaToken, EtherValue)>,
        pub arguments: Option<(ColonToken, DelimitedCollection<Value, CommaToken>)>,
        pub returns: Option<(Arrow, DelimitedCollection<Value, CommaToken>)>,
    }
}

derive_parse_for_struct! {
    /// Represents a signature for a function or event in the syntax tree. This
    /// can look like the following:
    ///
    /// ```text
    /// myFunction((uint256, uint256[2][][1]))
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct Signature {
        /// The identifier here is optional since calling the fallback function
        /// on the contract uses no identifier.
        pub ident: Option<Identifier>,
        pub open_paren: OpenParenToken,
        pub argument_types: DelimitedCollection<ArgumentType, CommaToken>,
        pub close_paren: CloseParenToken,
    }
}

impl Display for Signature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if let Some(ref identifier) = self.ident {
            write!(f, "{}", identifier.0)?;
        }
        write!(f, "(")?;
        let mut is_first = true;
        for argument_type in self.argument_types.0.iter() {
            if !is_first {
                write!(f, ",")?;
            }
            write!(f, "{}", argument_type.0)?;
            is_first = false;
        }
        write!(f, ")")?;
        Ok(())
    }
}

derive_parse_for_struct! {
    /// Represents some ETH value with a denomination. This can look like the
    /// following:
    ///
    /// ```text
    /// 12 wei
    /// 12 gwei
    /// 12 ether
    /// ```
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct EtherValue {
        pub amount: U256,
        pub denomination: EtherValueDenomination,
    }
}

define_nodes_enum! {
    /// Represents the denomination of some ETH value. This can look like the
    /// following:
    ///
    /// ```text
    /// wei
    /// gwei
    /// ether
    /// ```
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum EtherValueDenomination {
        Wei(WeiIdentifier),
        Gwei(GweiIdentifier),
        Ether(EtherIdentifier),
    }
}

define_wrapper_type! {
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct ArgumentType(String);
}

impl Parse for ArgumentType {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        let mut open_paren_count = 0u32;
        let mut arg = String::new();
        loop {
            match parser.next_token()? {
                Some(Token::UnsignedNumber(uint)) => {
                    arg.push_str(uint.to_string().as_str());
                }
                Some(Token::SignedNumber(signed)) => {
                    arg.push_str(signed.to_string().as_str())
                }
                Some(Token::Identifier(literal)) => arg.push_str(&literal),
                Some(Token::NonAlphanumericCharacter(
                    NonAlphanumericCharacter('('),
                )) => {
                    open_paren_count += 1;
                    arg.push('(');
                }
                Some(Token::NonAlphanumericCharacter(
                    NonAlphanumericCharacter(')'),
                )) if open_paren_count == 0 => {
                    while parser.peek::<CloseParenToken>().is_err() {
                        parser.rewind_by(1)
                    }
                    break;
                }
                Some(Token::NonAlphanumericCharacter(
                    NonAlphanumericCharacter(')'),
                )) => {
                    open_paren_count -= 1;
                    arg.push(')');
                }
                Some(Token::NonAlphanumericCharacter(
                    NonAlphanumericCharacter(','),
                )) if open_paren_count == 0 => {
                    while parser.peek::<CommaToken>().is_err() {
                        parser.rewind_by(1)
                    }
                    break;
                }
                Some(Token::NonAlphanumericCharacter(
                    NonAlphanumericCharacter(c @ _),
                )) => {
                    arg.push(c);
                }
                Some(Token::StringLiteral(_)) => {
                    bail!(
                        "Quoted string encountered inside of an argument type"
                    )
                }
                None => bail!("No more tokens in the token stream"),
            }
        }
        if arg.is_empty() {
            bail!("Empty argument found")
        } else {
            Ok(Self(arg))
        }
    }
}

define_nodes_enum! {
    /// Represents the set of allowed IO values that can be used in functions
    /// and in other places.
    ///
    /// ```text
    /// 0xdeadbeef
    /// -1
    /// 1
    /// true
    /// false
    /// "Hello world"
    /// hex"DEADBEEF"
    /// right(1)
    /// left(1)
    /// FAILURE
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum Value {
        UnsignedNumber(U256),
        SignedNumber(I256),
        Boolean(Boolean),
        String(StringLiteral),
        HexString(HexString),
        RightAlignedValue(RightAlignedValue),
        LeftAlignedValue(LeftAlignedValue),
        Failure(FailureIdentifier)
    }
}

derive_parse_for_struct! {
    /// Represents a right aligned value with all of the left padded with zeros.
    /// This can look like the following:
    ///
    /// ```text
    /// right(0x123)
    /// right(1)
    /// right(-1)
    /// right(true)
    /// right(false)
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct RightAlignedValue {
        pub right_ident: RightIdentifier,
        pub open_paren: OpenParenToken,
        pub value: AlignmentAllowedValue,
        pub close_paren: CloseParenToken
    }
}

derive_parse_for_struct! {
    /// Represents a left aligned value with all of the right padded with zeros.
    /// This can look like the following:
    ///
    /// ```text
    /// left(0x123)
    /// left(1)
    /// left(-1)
    /// left(true)
    /// left(false)
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct LeftAlignedValue {
        pub left_ident: LeftIdentifier,
        pub open_paren: OpenParenToken,
        pub value: AlignmentAllowedValue,
        pub close_paren: CloseParenToken
    }
}

define_nodes_enum! {
    /// Represents the set of values that allow for alignment. This can look
    /// like the following:
    ///
    /// ```text
    /// 0x123
    /// 1
    /// -1
    /// true
    /// false
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum AlignmentAllowedValue {
        UnsignedNumber(U256),
        SignedNumber(I256),
        Boolean(Boolean),
    }
}

derive_parse_for_struct! {
    /// Represents a hex string. This can look like the following:
    ///
    /// ```text
    /// hex"DEADBEEF"
    /// hex"DEAD_BEEF"
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct HexString {
        pub hex_ident: HexIdentifier,
        pub hex: StringLiteral
    }
}

derive_parse_for_struct! {
    /// Represents an assertion of the amount of gas spent either on execution
    /// or as a deposit in the code. This can look like the following:
    ///
    /// ```text
    /// gas irOptimized: 135499
    /// gas legacy: 137095
    /// gas legacyOptimized: 135823
    ///
    /// gas irOptimized code: 135499
    /// gas legacy code: 137095
    /// gas legacyOptimized code: 135823
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct GasAssertionNode {
        pub gas_ident: GasIdentifier,
        pub compilation_mode: CompilationMode,
        pub code: Option<CodeIdentifier>,
        pub colon: ColonToken,
        pub amount: U256
    }
}

define_nodes_enum! {
    /// Represents the various compilations modes of the smart contracts. This
    /// can look like the following:
    ///
    /// ```text
    /// legacy
    /// irOptimized
    /// legacyOptimized
    /// ```
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum CompilationMode {
        Legacy(LegacyIdentifier),
        IrOptimized(IrOptimizedIdentifier),
        LegacyOptimized(LegacyOptimizedIdentifier),
    }
}

derive_parse_for_struct! {
    /// Represents an event assertion node for some function call to the main
    /// smart contract. This can look like the following:
    ///
    /// ```text
    /// ~ emit MyEvent(uint256)
    /// ~ emit MyEvent(uint256) from 0xdeadbeef
    /// ~ emit MyEvent(uint256): #12, 12
    /// ~ emit MyEvent(uint256) from 0xdeadbeef : #12, 12
    /// ~ emit <anonymous>
    /// ~ emit <anonymous> from 0xdeadbeef
    /// ~ emit <anonymous>: #12, 12
    /// ~ emit <anonymous> from 0xdeadbeef : #12, 12
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct EventAssertionNode {
        pub tilde: TildeToken,
        pub emit_ident: EmitIdentifier,
        pub signature: EventSignature,
        pub emitter: Option<(FromIdentifier, U256)>,
        pub values:
            Option<(ColonToken, DelimitedCollection<EventValue, CommaToken>)>,
    }
}

define_nodes_enum! {
    /// Represents the signature of some event which can either be a full
    /// signature or anonymous. This can look like the following:
    ///
    /// ```text
    /// MyEvent(uint256,bytes)
    /// <anonymous>
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum EventSignature {
        Signature(Signature),
        Anonymous(AnonymousEventSignature)
    }
}

derive_parse_for_struct! {
    /// Represents the signature of an anonymous event. This can look like the
    /// following:
    ///
    /// ```text
    /// <anonymous>
    /// ```
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct AnonymousEventSignature {
        pub lt: LtToken,
        pub anonymous_ident: AnonymousIdentifier,
        pub gt: GtToken
    }
}

define_nodes_enum! {
    /// Represents the set of values that can be seen in the event value asserts
    /// which can either be indexed or not. This can look like the following:
    ///
    /// ```text
    /// #0xdeadbeef
    /// #-1
    /// #1
    /// #true
    /// #false
    /// #"Hello world"
    /// #hex"DEADBEEF"
    /// #right(1)
    /// #left(1)
    ///
    /// 0xdeadbeef
    /// -1
    /// 1
    /// true
    /// false
    /// "Hello world"
    /// hex"DEADBEEF"
    /// right(1)
    /// left(1)
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum EventValue {
        Indexed(IndexedEventValue),
        Unindexed(Value)
    }
}

derive_parse_for_struct! {
    /// Represents an indexed event value which starts with a pound token and
    /// is then followed by an input value. This can look like the following:
    ///
    /// ```text
    /// #0xdeadbeef
    /// #-1
    /// #1
    /// #true
    /// #false
    /// #"Hello world"
    /// #hex"DEADBEEF"
    /// #right(1)
    /// #left(1)
    /// ```
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct IndexedEventValue {
        pub pound: PoundToken,
        pub value: Value
    }
}

// endregion:Syntax Tree

// region:Parser
/// A trait for items that can be parsed from the tokens generated by the lexer.
trait Parse: Sized {
    /// Attempts to parse a value from the token stream
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self>;
}

impl Parse for U256 {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        match parser.next_token() {
            Ok(Some(Token::UnsignedNumber(value))) => Ok(value),
            e @ _ => bail!("Can't interpret as a U256 {e:?}"),
        }
    }
}

impl Parse for I256 {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        match parser.next_token() {
            Ok(Some(Token::SignedNumber(value))) => Ok(value),
            e @ _ => bail!("Can't interpret as a I256 {e:?}"),
        }
    }
}

impl Parse for StringLiteral {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        match parser.next_token() {
            Ok(Some(Token::StringLiteral(value))) => Ok(value),
            e @ _ => bail!("Can't interpret as a StringLiteral {e:?}"),
        }
    }
}

impl Parse for Identifier {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        match parser.next_token() {
            Ok(Some(Token::Identifier(value))) => Ok(value),
            e @ _ => bail!("Can't interpret as a Identifier {e:?}"),
        }
    }
}

impl Parse for NonAlphanumericCharacter {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        match parser.next_token() {
            Ok(Some(Token::NonAlphanumericCharacter(value))) => Ok(value),
            e @ _ => bail!("Can't interpret as a char {e:?}"),
        }
    }
}

impl<T: Parse> Parse for Option<T> {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        match parser.peek_and_take() {
            Ok(rtn) => Ok(Some(rtn)),
            Err(_) => Ok(None),
        }
    }
}

impl_parse_for_tuple!(
    A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y,
    Z
);

/// Represents a collection of nodes [`T`] that are separated by a delimiter
/// [`D`].
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct DelimitedCollection<T, D>(pub Vec<T>, PhantomData<D>);

impl<T: Parse + Debug, D: Parse> Parse for DelimitedCollection<T, D> {
    fn parse(parser: &mut Parser<impl AsRef<[u8]>>) -> Result<Self> {
        let mut vector = Vec::new();

        loop {
            if vector.is_empty() {
                if let Ok(value) = parser.peek_and_take() {
                    vector.push(value);
                } else {
                    break;
                }
            } else {
                if parser.peek_and_take::<D>().is_ok() {
                    vector.push(parser.parse()?)
                } else {
                    break;
                }
            }
        }

        Ok(Self(vector, Default::default()))
    }
}

define_single_char_nodes! {
    pub OpenParenToken => '(',
    pub CloseParenToken => ')',
    pub CommaToken => ',',
    pub ColonToken => ':',
    pub DashToken => '-',
    pub GtToken => '>',
    pub LtToken => '<',
    pub TildeToken => '~',
    pub PoundToken => '#',
}

define_identifier_nodes! {
    // Gas tokens
    pub GasIdentifier => "gas",
    pub CodeIdentifier => "code",
    pub LegacyIdentifier => "legacy",
    pub IrOptimizedIdentifier => "irOptimized",
    pub LegacyOptimizedIdentifier => "legacyOptimized",

    // Denominations
    pub WeiIdentifier => "wei",
    pub GweiIdentifier => "gwei",
    pub EtherIdentifier => "ether",

    // IO Tokens
    pub ConstructorIdentifier => "constructor",
    pub HexIdentifier => "hex",
    pub LeftIdentifier => "left",
    pub RightIdentifier => "right",
    pub FailureIdentifier => "FAILURE",

    // Events
    pub EmitIdentifier => "emit",
    pub FromIdentifier => "from",
    pub AnonymousIdentifier => "anonymous",

    // Library
    pub LibraryIdentifier => "library",

    // Account
    pub AccountIdentifier => "account",
    pub BalanceIdentifier => "balance",

    // Storage
    pub StorageEmptyIdentifier => "storageEmpty",

    // Boolean
    pub TrueIdentifier => "true",
    pub FalseIdentifier => "false",
}

define_nodes_enum! {
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub enum Boolean {
        True(TrueIdentifier),
        False(FalseIdentifier),
    }
}

type Arrow = (DashToken, GtToken);

/// A higher-level syntax tree parser built on top of the token lexer.
struct Parser<T>(Lexer<T>);

#[allow(dead_code)]
impl<T> Parser<T>
where
    T: AsRef<[u8]>,
{
    /// Creates a new parser from the given lexer.
    pub fn new(lexer: Lexer<T>) -> Self {
        Self(lexer)
    }

    /// Creates a new parser from the given stream.
    pub fn new_from_stream(stream: T) -> Self {
        Self(Lexer::new(stream))
    }

    /// Lexes tokens from the ASCII character stream.
    ///
    /// If this function returns [`Ok`] then it means that it didn't encounter
    /// any errors when attempting to lex tokens from the character stream and
    /// in a similar way, [`Err`] means that an error was encountered. Note that
    /// this has nothing to do with whether or not there are anymore tokens in
    /// the character stream, it just reports on the success or failure of the
    /// parsing attempt. The presence of a token in the stream is represented by
    /// the inner [`Option`] returned by the method.
    pub fn next_token(&mut self) -> Result<Option<Token>> {
        self.0.next_token()
    }

    /// Attempts to parse tokens from the lexer into a more structured type.
    pub fn parse<A: Parse>(&mut self) -> Result<A> {
        A::parse(self)
    }

    /// Peeks using the provided callback and the parser and then rewinds back
    /// to the original position.
    pub fn peek_with<O>(&mut self, callback: impl FnOnce(&mut Self) -> O) -> O {
        let position = self.0.0.position();
        let rtn = callback(self);
        self.0.0.set_position(position);
        rtn
    }

    /// Peeks at the token stream attempting to parse the next tokens.
    pub fn peek<A: Parse>(&mut self) -> Result<A> {
        let position = self.0.0.position();
        let rtn = self.parse::<A>();
        self.0.0.set_position(position);
        rtn
    }

    /// Peeks at the token stream and takes the item if it can be parsed.
    pub fn peek_and_take<A: Parse>(&mut self) -> Result<A> {
        let position = self.0.0.position();
        let rtn = self.parse::<A>();
        if rtn.is_err() {
            self.0.0.set_position(position);
        }
        rtn
    }

    /// Advances the lexer's stream by the specified number of ASCII characters.
    pub fn advance_by(&mut self, by: u64) {
        self.0.advance_by(by)
    }

    /// Rewinds the lexer's stream by the specified number of ASCII characters.
    pub fn rewind_by(&mut self, by: u64) {
        self.0.rewind_by(by)
    }

    /// Checks if the parser has reached the end of file or not.
    pub fn is_eof(&mut self) -> bool {
        self.peek_with(|parser| match parser.next_token() {
            Ok(None) => true,
            Ok(Some(_)) | Err(_) => false,
        })
    }

    /// Consumes the lexer tokens returning all of the remaining tokens in the
    /// lexer.
    pub fn remaining_tokens(&mut self) -> Result<Vec<Token>> {
        let mut vec = Vec::default();
        while let Some(token) = self.next_token()? {
            vec.push(token);
        }
        Ok(vec)
    }
}
// endregion:Parser

// region:Lexer
/// A generic lexer over [`T`] that uses delimiters and separators to generate
/// tokens from the given byte stream.
///
/// Note that this type only works for ASCII characters and breaks if any other
/// encoding is used.
struct Lexer<T>(Cursor<T>);

#[allow(dead_code)]
impl<T> Lexer<T>
where
    T: AsRef<[u8]>,
{
    /// Creates a new instance of the lexer from the given stream.
    pub fn new(stream: T) -> Self {
        Self(Cursor::new(stream))
    }

    /// Gets the next ASCII character from the lexer's byte stream.
    pub fn next_char(&mut self) -> Option<char> {
        let mut buf = [0; 1];
        self.0.read_exact(&mut buf).ok()?;
        let [byte] = buf;
        Some(byte as _)
    }

    /// Advances the lexer's stream by the specified number of ASCII characters.
    pub fn advance_by(&mut self, by: u64) {
        self.0.set_position(self.0.position().saturating_add(by))
    }

    /// Rewinds the lexer's stream by the specified number of ASCII characters.
    pub fn rewind_by(&mut self, by: u64) {
        self.0.set_position(self.0.position().saturating_sub(by))
    }

    /// Peeks at the next ASCII character in the lexer's character stream and
    /// possibly takes the character if the condition in the [`take_if`]
    /// callback holds true.
    pub fn peek_with_take_if<O>(
        &mut self,
        callback: impl FnOnce(&mut Self) -> O,
        take_if: impl FnOnce(&O) -> bool,
    ) -> Option<O> {
        let position = self.0.position();
        let rtn = callback(self);
        let take = take_if(&rtn);
        if take {
            Some(rtn)
        } else {
            self.0.set_position(position);
            None
        }
    }

    /// Peeks at the next ASCII character in the lexer's character stream
    /// preserving the stream's position in the process.
    pub fn peek_with<O>(&mut self, callback: impl FnOnce(&mut Self) -> O) -> O {
        let position = self.0.position();
        let rtn = callback(self);
        self.0.set_position(position);
        rtn
    }

    /// Checks if the file has any more characters that tokens can be lexed from
    /// ignoring all of the whitespaces.
    pub fn is_eof(&mut self) -> bool {
        self.peek_with(|lexer| {
            while let Some(next_char) = lexer.next_char() {
                if !next_char.is_whitespace() {
                    return false;
                }
            }
            true
        })
    }

    /// Lexes tokens from the ASCII character stream.
    ///
    /// If this function returns [`Ok`] then it means that it didn't encounter
    /// any errors when attempting to lex tokens from the character stream and
    /// in a similar way, [`Err`] means that an error was encountered. Note that
    /// this has nothing to do with whether or not there are anymore tokens in
    /// the character stream, it just reports on the success or failure of the
    /// parsing attempt. The presence of a token in the stream is represented by
    /// the inner [`Option`] returned by the method.
    pub fn next_token(&mut self) -> Result<Option<Token>> {
        let mut state_machine = None::<LexerStateMachine>;
        while let Some(next_char) = self.next_char() {
            match (&mut state_machine, next_char) {
                // Initial state of the state machine
                (state_machine @ None, '0')
                    if self
                        .peek_with_take_if(
                            |lexer| lexer.next_char(),
                            |char| char.is_some_and(|char| char == 'x'),
                        )
                        .is_some() =>
                {
                    *state_machine =
                        Some(LexerStateMachine::UnsignedHexNumber(U256::ZERO))
                }
                (state_machine @ None, '0'..='9') => {
                    *state_machine =
                        Some(LexerStateMachine::UnsignedDecimalNumber(
                            decimal_char_to_t::<U256>(next_char),
                        ))
                }
                (state_machine @ None, '-') => {
                    if self.peek_with(|lexer| {
                        lexer
                            .next_char()
                            .is_some_and(|char| char.is_ascii_digit())
                    }) {
                        *state_machine = Some(
                            LexerStateMachine::SignedDecimalNumber(U256::ZERO),
                        )
                    } else {
                        return Ok(Some(Token::new_non_alphanumeric_char(
                            next_char,
                        )));
                    }
                }
                (state_machine @ None, '"') => {
                    *state_machine = Some(LexerStateMachine::StringLiteral {
                        string: next_char.to_string(),
                        is_previous_char_an_escape_char: false,
                    })
                }
                (state_machine @ None, 'a'..='z' | 'A'..='Z' | '_') => {
                    *state_machine = Some(LexerStateMachine::Identifier(
                        next_char.to_string(),
                    ))
                }
                (None, char) => {
                    if char.is_whitespace() {
                        continue;
                    } else if !char.is_ascii_alphanumeric() {
                        return Ok(Some(Token::new_non_alphanumeric_char(
                            char,
                        )));
                    }
                }
                // Unsigned Number state of the state machine
                (
                    Some(
                        LexerStateMachine::UnsignedDecimalNumber(number)
                        | LexerStateMachine::SignedDecimalNumber(number),
                    ),
                    '0'..='9',
                ) => {
                    let digit = decimal_char_to_t::<U256>(next_char);
                    *number *= U256::from(10);
                    *number += digit;
                }
                (Some(LexerStateMachine::UnsignedDecimalNumber(number)), _) => {
                    self.rewind_by(1);
                    return Ok(Some(Token::UnsignedNumber(*number)));
                }
                // Signed Number state of the state machine
                (Some(LexerStateMachine::SignedDecimalNumber(number)), _) => {
                    self.rewind_by(1);
                    let number = *number;

                    let limit = U256::from(1) << 255;

                    let signed = if number <= limit {
                        I256::from_raw(number.wrapping_neg())
                    } else {
                        bail!("signed decimal out of range for I256");
                    };

                    return Ok(Some(Token::SignedNumber(signed)));
                }
                // Hex number state of the state machine
                (
                    Some(LexerStateMachine::UnsignedHexNumber(number)),
                    '0'..='9' | 'a'..='f' | 'A'..='F',
                ) => {
                    let digit = hex_char_to_t::<U256>(next_char);
                    *number *= U256::from(16);
                    *number += digit;
                }
                (Some(LexerStateMachine::UnsignedHexNumber(number)), _) => {
                    self.rewind_by(1);
                    return Ok(Some(Token::UnsignedNumber(*number)));
                }
                // Quoted string state of the state machine
                (
                    Some(LexerStateMachine::StringLiteral {
                        is_previous_char_an_escape_char,
                        string,
                    }),
                    '\\',
                ) => {
                    string.push(next_char);
                    *is_previous_char_an_escape_char = true
                }
                (
                    Some(LexerStateMachine::StringLiteral {
                        string,
                        is_previous_char_an_escape_char,
                    }),
                    '"',
                ) => {
                    string.push(next_char);
                    if !*is_previous_char_an_escape_char {
                        return Ok(Some(Token::new_string_literal(
                            string.as_str(),
                        )));
                    } else {
                        *is_previous_char_an_escape_char = false;
                    }
                }
                (
                    Some(LexerStateMachine::StringLiteral {
                        string,
                        is_previous_char_an_escape_char,
                    }),
                    _,
                ) => {
                    *is_previous_char_an_escape_char = false;
                    string.push(next_char);
                }
                // String literal state of the state machine
                (Some(LexerStateMachine::Identifier(string)), _) => {
                    if next_char.is_alphanumeric() || next_char == '_' {
                        string.push(next_char);
                    } else {
                        self.rewind_by(1);
                        return Ok(Some(Token::new_identifier(
                            string.as_str(),
                        )));
                    }
                }
            }
        }
        match state_machine {
            Some(
                LexerStateMachine::UnsignedDecimalNumber(number)
                | LexerStateMachine::UnsignedHexNumber(number),
            ) => Ok(Some(Token::UnsignedNumber(number))),
            Some(LexerStateMachine::SignedDecimalNumber(number)) => {
                let limit = U256::from(1) << 255;

                let signed = if number <= limit {
                    I256::from_raw(number.wrapping_neg())
                } else {
                    bail!("signed decimal out of range for I256");
                };

                Ok(Some(Token::SignedNumber(signed)))
            }
            Some(LexerStateMachine::Identifier(string)) => {
                Ok(Some(Token::new_identifier(string)))
            }
            Some(LexerStateMachine::StringLiteral { string, .. }) => {
                Ok(Some(Token::new_string_literal(string)))
            }
            None => Ok(None),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
enum LexerStateMachine {
    SignedDecimalNumber(U256),
    UnsignedDecimalNumber(U256),
    UnsignedHexNumber(U256),
    Identifier(String),
    StringLiteral {
        string: String,
        is_previous_char_an_escape_char: bool,
    },
}

define_wrapper_type!(
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct Identifier(String);
);

define_wrapper_type!(
    #[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct StringLiteral(String);
);

define_wrapper_type!(
    #[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
    pub struct NonAlphanumericCharacter(char);
);

/// Represents the set of all of the possible tokens that the lexer is able to
/// lex from the solidity semantic tests.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
enum Token {
    /// An unsigned number token.
    ///
    /// An unsigned number token is any sequence of numbers found in the char
    /// stream.
    UnsignedNumber(U256),

    /// A signed number token.
    ///
    /// A signed number is any sequence of numbers starting with `-` found in
    /// the char stream.
    SignedNumber(I256),

    /// An identifier token.
    ///
    /// An identifier is any sequence of alphanumeric characters found in the
    /// character stream including '_'.
    Identifier(Identifier),

    /// A string literal token.
    ///
    /// A string literal is a sequence of characters that begins and terminates
    /// with a quote character. Character escapes are supported and therefore
    /// any inner quotes that are properly escaped will be handled correctly.
    StringLiteral(StringLiteral),

    /// A non-alphanumeric character token.
    ///
    /// This is a token for any non-alphanumeric character found in the char
    /// stream of the lexer that didn't fit into any of the above categories
    /// lexing rules.
    NonAlphanumericCharacter(NonAlphanumericCharacter),
}

#[allow(dead_code)]
impl Token {
    pub fn new_unsigned_number(
        value: impl TryInto<U256, Error: Debug>,
    ) -> Self {
        Self::UnsignedNumber(value.try_into().unwrap())
    }

    pub fn new_signed_number(value: impl TryInto<I256, Error: Debug>) -> Self {
        Self::SignedNumber(value.try_into().unwrap())
    }

    pub fn new_identifier(value: impl Into<String>) -> Self {
        Self::Identifier(Identifier::new(value.into()))
    }

    pub fn new_string_literal(value: impl Into<String>) -> Self {
        Self::StringLiteral(StringLiteral::new(
            value.into().trim_matches('"').to_string(),
        ))
    }

    pub fn new_non_alphanumeric_char(value: impl Into<char>) -> Self {
        Self::NonAlphanumericCharacter(NonAlphanumericCharacter::new(value))
    }
}

pub fn decimal_char_to_t<T: TryFrom<i32, Error: Debug>>(char: char) -> T {
    assert!(char.is_ascii_digit());
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

pub fn hex_char_to_t<T: TryFrom<i32, Error: Debug>>(char: char) -> T {
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

// region:Tests
#[cfg(test)]
mod test {
    use std::fs::read_to_string;

    use revive_dt_common::iterators::FilesWithExtensionIterator;

    use alloy::primitives::{Address, FixedBytes};
    use indoc::indoc;

    use super::*;
    use crate::semantic_tests_parser::section::*;

    #[test]
    fn tokenization_is_done_correctly() {
        // Arrange
        let string = indoc!(
            r#"
            myFunction(uint256, uint64, uint256[][2]
            )
            :
            1, 2
            , 3, "abc\"", -57896044618658097711785492504343953926634992332820282019728792003956564819968
                      ,    1, 0x123
            -> 1, 2, 3, 4
            gas irOptimized: 135499
            "#
        );
        let mut lexer = Lexer::new(string);

        // Act
        let mut tokens = Vec::new();
        while let Some(token) = lexer.next_token().unwrap() {
            tokens.push(token)
        }

        // Assert
        assert!(lexer.is_eof());
        assert_eq!(
            tokens,
            vec![
                Token::new_identifier("myFunction"),
                Token::new_non_alphanumeric_char('('),
                Token::new_identifier("uint256"),
                Token::new_non_alphanumeric_char(','),
                Token::new_identifier("uint64"),
                Token::new_non_alphanumeric_char(','),
                Token::new_identifier("uint256"),
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
                Token::new_string_literal("abc\\\""),
                Token::new_non_alphanumeric_char(','),
                Token::new_signed_number(I256::MIN),
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
                Token::new_identifier("gas"),
                Token::new_identifier("irOptimized"),
                Token::new_non_alphanumeric_char(':'),
                Token::new_unsigned_number(U256::from(135499)),
            ]
        )
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
                SemanticTestSections::parse_source_into_sections(content)
                    .unwrap();
            let tests = sections.into_inner().into_iter().find_map(|section| {
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
            println!("Working on {path:?}");
            let mut parser = Parser::new_from_stream(tests.as_str());
            let document = Document::parse(&mut parser);

            // Assert
            assert!(
                document.is_ok(),
                "Document {path:?} of content {tests} parsing failed with {document:?}"
            );
            println!("✅ Succeeded {path:?}");
        }
    }

    #[test]
    fn address_parsing_and_conversion_is_correct() {
        // Arrange
        let string = "0x1212121212121212121212121212120000000012";
        let mut lexer = Lexer::new(string);

        // Act
        let token = lexer.next_token();

        // Assert
        let Ok(Some(Token::UnsignedNumber(address))) = token else {
            panic!("Lexing address failed")
        };
        let address =
            Address::from_word(FixedBytes(address.to_be_bytes::<32>()));
        assert_eq!(
            address.to_string(),
            "0x1212121212121212121212121212120000000012"
        )
    }
}
// endregion:Tests
