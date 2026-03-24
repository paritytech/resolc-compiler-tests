// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @notice Base ERC20 with a pure virtual variant() function.
///         Concrete contracts override variant() to return a different
///         compile-time constant, guaranteeing unique bytecode and code hash.
abstract contract VariantERC20Base {
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

    /// @notice Returns the unique variant identifier for this token.
    function variant() public pure virtual returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool) {
        require(to != address(0), "ERC20: transfer to zero");
        uint256 bal = balanceOf[msg.sender];
        require(bal >= amount, "ERC20: balance");
        unchecked {
            balanceOf[msg.sender] = bal - amount;
            balanceOf[to] += amount;
        }
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool) {
        require(to != address(0), "ERC20: transfer to zero");
        uint256 bal = balanceOf[from];
        require(bal >= amount, "ERC20: balance");

        uint256 allowed = allowance[from][msg.sender];
        require(allowed >= amount, "ERC20: allowance");
        if (allowed != type(uint256).max) {
            allowance[from][msg.sender] = allowed - amount;
        }

        unchecked {
            balanceOf[from] = bal - amount;
            balanceOf[to] += amount;
        }
        emit Transfer(from, to, amount);
        return true;
    }

    function mint(address to, uint256 amount) external returns (bool) {
        require(to != address(0), "ERC20: mint to zero");
        totalSupply += amount;
        balanceOf[to] += amount;
        emit Transfer(address(0), to, amount);
        return true;
    }
}

contract V_0 is VariantERC20Base { function variant() public pure override returns (uint256) { return 0; } }
contract V_1 is VariantERC20Base { function variant() public pure override returns (uint256) { return 1; } }
contract V_2 is VariantERC20Base { function variant() public pure override returns (uint256) { return 2; } }
contract V_3 is VariantERC20Base { function variant() public pure override returns (uint256) { return 3; } }
contract V_4 is VariantERC20Base { function variant() public pure override returns (uint256) { return 4; } }
contract V_5 is VariantERC20Base { function variant() public pure override returns (uint256) { return 5; } }
contract V_6 is VariantERC20Base { function variant() public pure override returns (uint256) { return 6; } }
contract V_7 is VariantERC20Base { function variant() public pure override returns (uint256) { return 7; } }
contract V_8 is VariantERC20Base { function variant() public pure override returns (uint256) { return 8; } }
contract V_9 is VariantERC20Base { function variant() public pure override returns (uint256) { return 9; } }
contract V_10 is VariantERC20Base { function variant() public pure override returns (uint256) { return 10; } }
contract V_11 is VariantERC20Base { function variant() public pure override returns (uint256) { return 11; } }
contract V_12 is VariantERC20Base { function variant() public pure override returns (uint256) { return 12; } }
contract V_13 is VariantERC20Base { function variant() public pure override returns (uint256) { return 13; } }
contract V_14 is VariantERC20Base { function variant() public pure override returns (uint256) { return 14; } }
contract V_15 is VariantERC20Base { function variant() public pure override returns (uint256) { return 15; } }
contract V_16 is VariantERC20Base { function variant() public pure override returns (uint256) { return 16; } }
contract V_17 is VariantERC20Base { function variant() public pure override returns (uint256) { return 17; } }
contract V_18 is VariantERC20Base { function variant() public pure override returns (uint256) { return 18; } }
contract V_19 is VariantERC20Base { function variant() public pure override returns (uint256) { return 19; } }
contract V_20 is VariantERC20Base { function variant() public pure override returns (uint256) { return 20; } }
contract V_21 is VariantERC20Base { function variant() public pure override returns (uint256) { return 21; } }
contract V_22 is VariantERC20Base { function variant() public pure override returns (uint256) { return 22; } }
contract V_23 is VariantERC20Base { function variant() public pure override returns (uint256) { return 23; } }
contract V_24 is VariantERC20Base { function variant() public pure override returns (uint256) { return 24; } }
contract V_25 is VariantERC20Base { function variant() public pure override returns (uint256) { return 25; } }
contract V_26 is VariantERC20Base { function variant() public pure override returns (uint256) { return 26; } }
contract V_27 is VariantERC20Base { function variant() public pure override returns (uint256) { return 27; } }
contract V_28 is VariantERC20Base { function variant() public pure override returns (uint256) { return 28; } }
contract V_29 is VariantERC20Base { function variant() public pure override returns (uint256) { return 29; } }
contract V_30 is VariantERC20Base { function variant() public pure override returns (uint256) { return 30; } }
contract V_31 is VariantERC20Base { function variant() public pure override returns (uint256) { return 31; } }
contract V_32 is VariantERC20Base { function variant() public pure override returns (uint256) { return 32; } }
contract V_33 is VariantERC20Base { function variant() public pure override returns (uint256) { return 33; } }
contract V_34 is VariantERC20Base { function variant() public pure override returns (uint256) { return 34; } }
contract V_35 is VariantERC20Base { function variant() public pure override returns (uint256) { return 35; } }
contract V_36 is VariantERC20Base { function variant() public pure override returns (uint256) { return 36; } }
contract V_37 is VariantERC20Base { function variant() public pure override returns (uint256) { return 37; } }
contract V_38 is VariantERC20Base { function variant() public pure override returns (uint256) { return 38; } }
contract V_39 is VariantERC20Base { function variant() public pure override returns (uint256) { return 39; } }
contract V_40 is VariantERC20Base { function variant() public pure override returns (uint256) { return 40; } }
contract V_41 is VariantERC20Base { function variant() public pure override returns (uint256) { return 41; } }
contract V_42 is VariantERC20Base { function variant() public pure override returns (uint256) { return 42; } }
contract V_43 is VariantERC20Base { function variant() public pure override returns (uint256) { return 43; } }
contract V_44 is VariantERC20Base { function variant() public pure override returns (uint256) { return 44; } }
contract V_45 is VariantERC20Base { function variant() public pure override returns (uint256) { return 45; } }
contract V_46 is VariantERC20Base { function variant() public pure override returns (uint256) { return 46; } }
contract V_47 is VariantERC20Base { function variant() public pure override returns (uint256) { return 47; } }
contract V_48 is VariantERC20Base { function variant() public pure override returns (uint256) { return 48; } }
contract V_49 is VariantERC20Base { function variant() public pure override returns (uint256) { return 49; } }
contract V_50 is VariantERC20Base { function variant() public pure override returns (uint256) { return 50; } }
contract V_51 is VariantERC20Base { function variant() public pure override returns (uint256) { return 51; } }
contract V_52 is VariantERC20Base { function variant() public pure override returns (uint256) { return 52; } }
contract V_53 is VariantERC20Base { function variant() public pure override returns (uint256) { return 53; } }
contract V_54 is VariantERC20Base { function variant() public pure override returns (uint256) { return 54; } }
contract V_55 is VariantERC20Base { function variant() public pure override returns (uint256) { return 55; } }
contract V_56 is VariantERC20Base { function variant() public pure override returns (uint256) { return 56; } }
contract V_57 is VariantERC20Base { function variant() public pure override returns (uint256) { return 57; } }
contract V_58 is VariantERC20Base { function variant() public pure override returns (uint256) { return 58; } }
contract V_59 is VariantERC20Base { function variant() public pure override returns (uint256) { return 59; } }
contract V_60 is VariantERC20Base { function variant() public pure override returns (uint256) { return 60; } }
contract V_61 is VariantERC20Base { function variant() public pure override returns (uint256) { return 61; } }
contract V_62 is VariantERC20Base { function variant() public pure override returns (uint256) { return 62; } }
contract V_63 is VariantERC20Base { function variant() public pure override returns (uint256) { return 63; } }
contract V_64 is VariantERC20Base { function variant() public pure override returns (uint256) { return 64; } }
contract V_65 is VariantERC20Base { function variant() public pure override returns (uint256) { return 65; } }
contract V_66 is VariantERC20Base { function variant() public pure override returns (uint256) { return 66; } }
contract V_67 is VariantERC20Base { function variant() public pure override returns (uint256) { return 67; } }
contract V_68 is VariantERC20Base { function variant() public pure override returns (uint256) { return 68; } }
contract V_69 is VariantERC20Base { function variant() public pure override returns (uint256) { return 69; } }
contract V_70 is VariantERC20Base { function variant() public pure override returns (uint256) { return 70; } }
contract V_71 is VariantERC20Base { function variant() public pure override returns (uint256) { return 71; } }
contract V_72 is VariantERC20Base { function variant() public pure override returns (uint256) { return 72; } }
contract V_73 is VariantERC20Base { function variant() public pure override returns (uint256) { return 73; } }
contract V_74 is VariantERC20Base { function variant() public pure override returns (uint256) { return 74; } }
contract V_75 is VariantERC20Base { function variant() public pure override returns (uint256) { return 75; } }
contract V_76 is VariantERC20Base { function variant() public pure override returns (uint256) { return 76; } }
contract V_77 is VariantERC20Base { function variant() public pure override returns (uint256) { return 77; } }
contract V_78 is VariantERC20Base { function variant() public pure override returns (uint256) { return 78; } }
contract V_79 is VariantERC20Base { function variant() public pure override returns (uint256) { return 79; } }
contract V_80 is VariantERC20Base { function variant() public pure override returns (uint256) { return 80; } }
contract V_81 is VariantERC20Base { function variant() public pure override returns (uint256) { return 81; } }
contract V_82 is VariantERC20Base { function variant() public pure override returns (uint256) { return 82; } }
contract V_83 is VariantERC20Base { function variant() public pure override returns (uint256) { return 83; } }
contract V_84 is VariantERC20Base { function variant() public pure override returns (uint256) { return 84; } }
contract V_85 is VariantERC20Base { function variant() public pure override returns (uint256) { return 85; } }
contract V_86 is VariantERC20Base { function variant() public pure override returns (uint256) { return 86; } }
contract V_87 is VariantERC20Base { function variant() public pure override returns (uint256) { return 87; } }
contract V_88 is VariantERC20Base { function variant() public pure override returns (uint256) { return 88; } }
contract V_89 is VariantERC20Base { function variant() public pure override returns (uint256) { return 89; } }
contract V_90 is VariantERC20Base { function variant() public pure override returns (uint256) { return 90; } }
contract V_91 is VariantERC20Base { function variant() public pure override returns (uint256) { return 91; } }
contract V_92 is VariantERC20Base { function variant() public pure override returns (uint256) { return 92; } }
contract V_93 is VariantERC20Base { function variant() public pure override returns (uint256) { return 93; } }
contract V_94 is VariantERC20Base { function variant() public pure override returns (uint256) { return 94; } }
contract V_95 is VariantERC20Base { function variant() public pure override returns (uint256) { return 95; } }
contract V_96 is VariantERC20Base { function variant() public pure override returns (uint256) { return 96; } }
contract V_97 is VariantERC20Base { function variant() public pure override returns (uint256) { return 97; } }
contract V_98 is VariantERC20Base { function variant() public pure override returns (uint256) { return 98; } }
contract V_99 is VariantERC20Base { function variant() public pure override returns (uint256) { return 99; } }
contract V_100 is VariantERC20Base { function variant() public pure override returns (uint256) { return 100; } }
contract V_101 is VariantERC20Base { function variant() public pure override returns (uint256) { return 101; } }
contract V_102 is VariantERC20Base { function variant() public pure override returns (uint256) { return 102; } }
contract V_103 is VariantERC20Base { function variant() public pure override returns (uint256) { return 103; } }
contract V_104 is VariantERC20Base { function variant() public pure override returns (uint256) { return 104; } }
contract V_105 is VariantERC20Base { function variant() public pure override returns (uint256) { return 105; } }
contract V_106 is VariantERC20Base { function variant() public pure override returns (uint256) { return 106; } }
contract V_107 is VariantERC20Base { function variant() public pure override returns (uint256) { return 107; } }
contract V_108 is VariantERC20Base { function variant() public pure override returns (uint256) { return 108; } }
contract V_109 is VariantERC20Base { function variant() public pure override returns (uint256) { return 109; } }
contract V_110 is VariantERC20Base { function variant() public pure override returns (uint256) { return 110; } }
contract V_111 is VariantERC20Base { function variant() public pure override returns (uint256) { return 111; } }
contract V_112 is VariantERC20Base { function variant() public pure override returns (uint256) { return 112; } }
contract V_113 is VariantERC20Base { function variant() public pure override returns (uint256) { return 113; } }
contract V_114 is VariantERC20Base { function variant() public pure override returns (uint256) { return 114; } }
contract V_115 is VariantERC20Base { function variant() public pure override returns (uint256) { return 115; } }
contract V_116 is VariantERC20Base { function variant() public pure override returns (uint256) { return 116; } }
contract V_117 is VariantERC20Base { function variant() public pure override returns (uint256) { return 117; } }
contract V_118 is VariantERC20Base { function variant() public pure override returns (uint256) { return 118; } }
contract V_119 is VariantERC20Base { function variant() public pure override returns (uint256) { return 119; } }
contract V_120 is VariantERC20Base { function variant() public pure override returns (uint256) { return 120; } }
contract V_121 is VariantERC20Base { function variant() public pure override returns (uint256) { return 121; } }
contract V_122 is VariantERC20Base { function variant() public pure override returns (uint256) { return 122; } }
contract V_123 is VariantERC20Base { function variant() public pure override returns (uint256) { return 123; } }
contract V_124 is VariantERC20Base { function variant() public pure override returns (uint256) { return 124; } }
contract V_125 is VariantERC20Base { function variant() public pure override returns (uint256) { return 125; } }
contract V_126 is VariantERC20Base { function variant() public pure override returns (uint256) { return 126; } }
contract V_127 is VariantERC20Base { function variant() public pure override returns (uint256) { return 127; } }
contract V_128 is VariantERC20Base { function variant() public pure override returns (uint256) { return 128; } }
contract V_129 is VariantERC20Base { function variant() public pure override returns (uint256) { return 129; } }
contract V_130 is VariantERC20Base { function variant() public pure override returns (uint256) { return 130; } }
contract V_131 is VariantERC20Base { function variant() public pure override returns (uint256) { return 131; } }
contract V_132 is VariantERC20Base { function variant() public pure override returns (uint256) { return 132; } }
contract V_133 is VariantERC20Base { function variant() public pure override returns (uint256) { return 133; } }
contract V_134 is VariantERC20Base { function variant() public pure override returns (uint256) { return 134; } }
contract V_135 is VariantERC20Base { function variant() public pure override returns (uint256) { return 135; } }
contract V_136 is VariantERC20Base { function variant() public pure override returns (uint256) { return 136; } }
contract V_137 is VariantERC20Base { function variant() public pure override returns (uint256) { return 137; } }
contract V_138 is VariantERC20Base { function variant() public pure override returns (uint256) { return 138; } }
contract V_139 is VariantERC20Base { function variant() public pure override returns (uint256) { return 139; } }
contract V_140 is VariantERC20Base { function variant() public pure override returns (uint256) { return 140; } }
contract V_141 is VariantERC20Base { function variant() public pure override returns (uint256) { return 141; } }
contract V_142 is VariantERC20Base { function variant() public pure override returns (uint256) { return 142; } }
contract V_143 is VariantERC20Base { function variant() public pure override returns (uint256) { return 143; } }
contract V_144 is VariantERC20Base { function variant() public pure override returns (uint256) { return 144; } }
contract V_145 is VariantERC20Base { function variant() public pure override returns (uint256) { return 145; } }
contract V_146 is VariantERC20Base { function variant() public pure override returns (uint256) { return 146; } }
contract V_147 is VariantERC20Base { function variant() public pure override returns (uint256) { return 147; } }
contract V_148 is VariantERC20Base { function variant() public pure override returns (uint256) { return 148; } }
contract V_149 is VariantERC20Base { function variant() public pure override returns (uint256) { return 149; } }
contract V_150 is VariantERC20Base { function variant() public pure override returns (uint256) { return 150; } }
contract V_151 is VariantERC20Base { function variant() public pure override returns (uint256) { return 151; } }
contract V_152 is VariantERC20Base { function variant() public pure override returns (uint256) { return 152; } }
contract V_153 is VariantERC20Base { function variant() public pure override returns (uint256) { return 153; } }
contract V_154 is VariantERC20Base { function variant() public pure override returns (uint256) { return 154; } }
contract V_155 is VariantERC20Base { function variant() public pure override returns (uint256) { return 155; } }
contract V_156 is VariantERC20Base { function variant() public pure override returns (uint256) { return 156; } }
contract V_157 is VariantERC20Base { function variant() public pure override returns (uint256) { return 157; } }
contract V_158 is VariantERC20Base { function variant() public pure override returns (uint256) { return 158; } }
contract V_159 is VariantERC20Base { function variant() public pure override returns (uint256) { return 159; } }
contract V_160 is VariantERC20Base { function variant() public pure override returns (uint256) { return 160; } }
contract V_161 is VariantERC20Base { function variant() public pure override returns (uint256) { return 161; } }
contract V_162 is VariantERC20Base { function variant() public pure override returns (uint256) { return 162; } }
contract V_163 is VariantERC20Base { function variant() public pure override returns (uint256) { return 163; } }
contract V_164 is VariantERC20Base { function variant() public pure override returns (uint256) { return 164; } }
contract V_165 is VariantERC20Base { function variant() public pure override returns (uint256) { return 165; } }
contract V_166 is VariantERC20Base { function variant() public pure override returns (uint256) { return 166; } }
contract V_167 is VariantERC20Base { function variant() public pure override returns (uint256) { return 167; } }
contract V_168 is VariantERC20Base { function variant() public pure override returns (uint256) { return 168; } }
contract V_169 is VariantERC20Base { function variant() public pure override returns (uint256) { return 169; } }
contract V_170 is VariantERC20Base { function variant() public pure override returns (uint256) { return 170; } }
contract V_171 is VariantERC20Base { function variant() public pure override returns (uint256) { return 171; } }
contract V_172 is VariantERC20Base { function variant() public pure override returns (uint256) { return 172; } }
contract V_173 is VariantERC20Base { function variant() public pure override returns (uint256) { return 173; } }
contract V_174 is VariantERC20Base { function variant() public pure override returns (uint256) { return 174; } }
contract V_175 is VariantERC20Base { function variant() public pure override returns (uint256) { return 175; } }
contract V_176 is VariantERC20Base { function variant() public pure override returns (uint256) { return 176; } }
contract V_177 is VariantERC20Base { function variant() public pure override returns (uint256) { return 177; } }
contract V_178 is VariantERC20Base { function variant() public pure override returns (uint256) { return 178; } }
contract V_179 is VariantERC20Base { function variant() public pure override returns (uint256) { return 179; } }
contract V_180 is VariantERC20Base { function variant() public pure override returns (uint256) { return 180; } }
contract V_181 is VariantERC20Base { function variant() public pure override returns (uint256) { return 181; } }
contract V_182 is VariantERC20Base { function variant() public pure override returns (uint256) { return 182; } }
contract V_183 is VariantERC20Base { function variant() public pure override returns (uint256) { return 183; } }
contract V_184 is VariantERC20Base { function variant() public pure override returns (uint256) { return 184; } }
contract V_185 is VariantERC20Base { function variant() public pure override returns (uint256) { return 185; } }
contract V_186 is VariantERC20Base { function variant() public pure override returns (uint256) { return 186; } }
contract V_187 is VariantERC20Base { function variant() public pure override returns (uint256) { return 187; } }
contract V_188 is VariantERC20Base { function variant() public pure override returns (uint256) { return 188; } }
contract V_189 is VariantERC20Base { function variant() public pure override returns (uint256) { return 189; } }
contract V_190 is VariantERC20Base { function variant() public pure override returns (uint256) { return 190; } }
contract V_191 is VariantERC20Base { function variant() public pure override returns (uint256) { return 191; } }
contract V_192 is VariantERC20Base { function variant() public pure override returns (uint256) { return 192; } }
contract V_193 is VariantERC20Base { function variant() public pure override returns (uint256) { return 193; } }
contract V_194 is VariantERC20Base { function variant() public pure override returns (uint256) { return 194; } }
contract V_195 is VariantERC20Base { function variant() public pure override returns (uint256) { return 195; } }
contract V_196 is VariantERC20Base { function variant() public pure override returns (uint256) { return 196; } }
contract V_197 is VariantERC20Base { function variant() public pure override returns (uint256) { return 197; } }
contract V_198 is VariantERC20Base { function variant() public pure override returns (uint256) { return 198; } }
contract V_199 is VariantERC20Base { function variant() public pure override returns (uint256) { return 199; } }
