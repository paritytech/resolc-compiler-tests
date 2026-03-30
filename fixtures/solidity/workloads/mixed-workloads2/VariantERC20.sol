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
contract V_200 is VariantERC20Base { function variant() public pure override returns (uint256) { return 200; } }
contract V_201 is VariantERC20Base { function variant() public pure override returns (uint256) { return 201; } }
contract V_202 is VariantERC20Base { function variant() public pure override returns (uint256) { return 202; } }
contract V_203 is VariantERC20Base { function variant() public pure override returns (uint256) { return 203; } }
contract V_204 is VariantERC20Base { function variant() public pure override returns (uint256) { return 204; } }
contract V_205 is VariantERC20Base { function variant() public pure override returns (uint256) { return 205; } }
contract V_206 is VariantERC20Base { function variant() public pure override returns (uint256) { return 206; } }
contract V_207 is VariantERC20Base { function variant() public pure override returns (uint256) { return 207; } }
contract V_208 is VariantERC20Base { function variant() public pure override returns (uint256) { return 208; } }
contract V_209 is VariantERC20Base { function variant() public pure override returns (uint256) { return 209; } }
contract V_210 is VariantERC20Base { function variant() public pure override returns (uint256) { return 210; } }
contract V_211 is VariantERC20Base { function variant() public pure override returns (uint256) { return 211; } }
contract V_212 is VariantERC20Base { function variant() public pure override returns (uint256) { return 212; } }
contract V_213 is VariantERC20Base { function variant() public pure override returns (uint256) { return 213; } }
contract V_214 is VariantERC20Base { function variant() public pure override returns (uint256) { return 214; } }
contract V_215 is VariantERC20Base { function variant() public pure override returns (uint256) { return 215; } }
contract V_216 is VariantERC20Base { function variant() public pure override returns (uint256) { return 216; } }
contract V_217 is VariantERC20Base { function variant() public pure override returns (uint256) { return 217; } }
contract V_218 is VariantERC20Base { function variant() public pure override returns (uint256) { return 218; } }
contract V_219 is VariantERC20Base { function variant() public pure override returns (uint256) { return 219; } }
contract V_220 is VariantERC20Base { function variant() public pure override returns (uint256) { return 220; } }
contract V_221 is VariantERC20Base { function variant() public pure override returns (uint256) { return 221; } }
contract V_222 is VariantERC20Base { function variant() public pure override returns (uint256) { return 222; } }
contract V_223 is VariantERC20Base { function variant() public pure override returns (uint256) { return 223; } }
contract V_224 is VariantERC20Base { function variant() public pure override returns (uint256) { return 224; } }
contract V_225 is VariantERC20Base { function variant() public pure override returns (uint256) { return 225; } }
contract V_226 is VariantERC20Base { function variant() public pure override returns (uint256) { return 226; } }
contract V_227 is VariantERC20Base { function variant() public pure override returns (uint256) { return 227; } }
contract V_228 is VariantERC20Base { function variant() public pure override returns (uint256) { return 228; } }
contract V_229 is VariantERC20Base { function variant() public pure override returns (uint256) { return 229; } }
contract V_230 is VariantERC20Base { function variant() public pure override returns (uint256) { return 230; } }
contract V_231 is VariantERC20Base { function variant() public pure override returns (uint256) { return 231; } }
contract V_232 is VariantERC20Base { function variant() public pure override returns (uint256) { return 232; } }
contract V_233 is VariantERC20Base { function variant() public pure override returns (uint256) { return 233; } }
contract V_234 is VariantERC20Base { function variant() public pure override returns (uint256) { return 234; } }
contract V_235 is VariantERC20Base { function variant() public pure override returns (uint256) { return 235; } }
contract V_236 is VariantERC20Base { function variant() public pure override returns (uint256) { return 236; } }
contract V_237 is VariantERC20Base { function variant() public pure override returns (uint256) { return 237; } }
contract V_238 is VariantERC20Base { function variant() public pure override returns (uint256) { return 238; } }
contract V_239 is VariantERC20Base { function variant() public pure override returns (uint256) { return 239; } }
contract V_240 is VariantERC20Base { function variant() public pure override returns (uint256) { return 240; } }
contract V_241 is VariantERC20Base { function variant() public pure override returns (uint256) { return 241; } }
contract V_242 is VariantERC20Base { function variant() public pure override returns (uint256) { return 242; } }
contract V_243 is VariantERC20Base { function variant() public pure override returns (uint256) { return 243; } }
contract V_244 is VariantERC20Base { function variant() public pure override returns (uint256) { return 244; } }
contract V_245 is VariantERC20Base { function variant() public pure override returns (uint256) { return 245; } }
contract V_246 is VariantERC20Base { function variant() public pure override returns (uint256) { return 246; } }
contract V_247 is VariantERC20Base { function variant() public pure override returns (uint256) { return 247; } }
contract V_248 is VariantERC20Base { function variant() public pure override returns (uint256) { return 248; } }
contract V_249 is VariantERC20Base { function variant() public pure override returns (uint256) { return 249; } }
contract V_250 is VariantERC20Base { function variant() public pure override returns (uint256) { return 250; } }
contract V_251 is VariantERC20Base { function variant() public pure override returns (uint256) { return 251; } }
contract V_252 is VariantERC20Base { function variant() public pure override returns (uint256) { return 252; } }
contract V_253 is VariantERC20Base { function variant() public pure override returns (uint256) { return 253; } }
contract V_254 is VariantERC20Base { function variant() public pure override returns (uint256) { return 254; } }
contract V_255 is VariantERC20Base { function variant() public pure override returns (uint256) { return 255; } }
contract V_256 is VariantERC20Base { function variant() public pure override returns (uint256) { return 256; } }
contract V_257 is VariantERC20Base { function variant() public pure override returns (uint256) { return 257; } }
contract V_258 is VariantERC20Base { function variant() public pure override returns (uint256) { return 258; } }
contract V_259 is VariantERC20Base { function variant() public pure override returns (uint256) { return 259; } }
contract V_260 is VariantERC20Base { function variant() public pure override returns (uint256) { return 260; } }
contract V_261 is VariantERC20Base { function variant() public pure override returns (uint256) { return 261; } }
contract V_262 is VariantERC20Base { function variant() public pure override returns (uint256) { return 262; } }
contract V_263 is VariantERC20Base { function variant() public pure override returns (uint256) { return 263; } }
contract V_264 is VariantERC20Base { function variant() public pure override returns (uint256) { return 264; } }
contract V_265 is VariantERC20Base { function variant() public pure override returns (uint256) { return 265; } }
contract V_266 is VariantERC20Base { function variant() public pure override returns (uint256) { return 266; } }
contract V_267 is VariantERC20Base { function variant() public pure override returns (uint256) { return 267; } }
contract V_268 is VariantERC20Base { function variant() public pure override returns (uint256) { return 268; } }
contract V_269 is VariantERC20Base { function variant() public pure override returns (uint256) { return 269; } }
contract V_270 is VariantERC20Base { function variant() public pure override returns (uint256) { return 270; } }
contract V_271 is VariantERC20Base { function variant() public pure override returns (uint256) { return 271; } }
contract V_272 is VariantERC20Base { function variant() public pure override returns (uint256) { return 272; } }
contract V_273 is VariantERC20Base { function variant() public pure override returns (uint256) { return 273; } }
contract V_274 is VariantERC20Base { function variant() public pure override returns (uint256) { return 274; } }
contract V_275 is VariantERC20Base { function variant() public pure override returns (uint256) { return 275; } }
contract V_276 is VariantERC20Base { function variant() public pure override returns (uint256) { return 276; } }
contract V_277 is VariantERC20Base { function variant() public pure override returns (uint256) { return 277; } }
contract V_278 is VariantERC20Base { function variant() public pure override returns (uint256) { return 278; } }
contract V_279 is VariantERC20Base { function variant() public pure override returns (uint256) { return 279; } }
contract V_280 is VariantERC20Base { function variant() public pure override returns (uint256) { return 280; } }
contract V_281 is VariantERC20Base { function variant() public pure override returns (uint256) { return 281; } }
contract V_282 is VariantERC20Base { function variant() public pure override returns (uint256) { return 282; } }
contract V_283 is VariantERC20Base { function variant() public pure override returns (uint256) { return 283; } }
contract V_284 is VariantERC20Base { function variant() public pure override returns (uint256) { return 284; } }
contract V_285 is VariantERC20Base { function variant() public pure override returns (uint256) { return 285; } }
contract V_286 is VariantERC20Base { function variant() public pure override returns (uint256) { return 286; } }
contract V_287 is VariantERC20Base { function variant() public pure override returns (uint256) { return 287; } }
contract V_288 is VariantERC20Base { function variant() public pure override returns (uint256) { return 288; } }
contract V_289 is VariantERC20Base { function variant() public pure override returns (uint256) { return 289; } }
contract V_290 is VariantERC20Base { function variant() public pure override returns (uint256) { return 290; } }
contract V_291 is VariantERC20Base { function variant() public pure override returns (uint256) { return 291; } }
contract V_292 is VariantERC20Base { function variant() public pure override returns (uint256) { return 292; } }
contract V_293 is VariantERC20Base { function variant() public pure override returns (uint256) { return 293; } }
contract V_294 is VariantERC20Base { function variant() public pure override returns (uint256) { return 294; } }
contract V_295 is VariantERC20Base { function variant() public pure override returns (uint256) { return 295; } }
contract V_296 is VariantERC20Base { function variant() public pure override returns (uint256) { return 296; } }
contract V_297 is VariantERC20Base { function variant() public pure override returns (uint256) { return 297; } }
contract V_298 is VariantERC20Base { function variant() public pure override returns (uint256) { return 298; } }
contract V_299 is VariantERC20Base { function variant() public pure override returns (uint256) { return 299; } }
contract V_300 is VariantERC20Base { function variant() public pure override returns (uint256) { return 300; } }
contract V_301 is VariantERC20Base { function variant() public pure override returns (uint256) { return 301; } }
contract V_302 is VariantERC20Base { function variant() public pure override returns (uint256) { return 302; } }
contract V_303 is VariantERC20Base { function variant() public pure override returns (uint256) { return 303; } }
contract V_304 is VariantERC20Base { function variant() public pure override returns (uint256) { return 304; } }
contract V_305 is VariantERC20Base { function variant() public pure override returns (uint256) { return 305; } }
contract V_306 is VariantERC20Base { function variant() public pure override returns (uint256) { return 306; } }
contract V_307 is VariantERC20Base { function variant() public pure override returns (uint256) { return 307; } }
contract V_308 is VariantERC20Base { function variant() public pure override returns (uint256) { return 308; } }
contract V_309 is VariantERC20Base { function variant() public pure override returns (uint256) { return 309; } }
contract V_310 is VariantERC20Base { function variant() public pure override returns (uint256) { return 310; } }
contract V_311 is VariantERC20Base { function variant() public pure override returns (uint256) { return 311; } }
contract V_312 is VariantERC20Base { function variant() public pure override returns (uint256) { return 312; } }
contract V_313 is VariantERC20Base { function variant() public pure override returns (uint256) { return 313; } }
contract V_314 is VariantERC20Base { function variant() public pure override returns (uint256) { return 314; } }
contract V_315 is VariantERC20Base { function variant() public pure override returns (uint256) { return 315; } }
contract V_316 is VariantERC20Base { function variant() public pure override returns (uint256) { return 316; } }
contract V_317 is VariantERC20Base { function variant() public pure override returns (uint256) { return 317; } }
contract V_318 is VariantERC20Base { function variant() public pure override returns (uint256) { return 318; } }
contract V_319 is VariantERC20Base { function variant() public pure override returns (uint256) { return 319; } }
contract V_320 is VariantERC20Base { function variant() public pure override returns (uint256) { return 320; } }
contract V_321 is VariantERC20Base { function variant() public pure override returns (uint256) { return 321; } }
contract V_322 is VariantERC20Base { function variant() public pure override returns (uint256) { return 322; } }
contract V_323 is VariantERC20Base { function variant() public pure override returns (uint256) { return 323; } }
contract V_324 is VariantERC20Base { function variant() public pure override returns (uint256) { return 324; } }
contract V_325 is VariantERC20Base { function variant() public pure override returns (uint256) { return 325; } }
contract V_326 is VariantERC20Base { function variant() public pure override returns (uint256) { return 326; } }
contract V_327 is VariantERC20Base { function variant() public pure override returns (uint256) { return 327; } }
contract V_328 is VariantERC20Base { function variant() public pure override returns (uint256) { return 328; } }
contract V_329 is VariantERC20Base { function variant() public pure override returns (uint256) { return 329; } }
contract V_330 is VariantERC20Base { function variant() public pure override returns (uint256) { return 330; } }
contract V_331 is VariantERC20Base { function variant() public pure override returns (uint256) { return 331; } }
contract V_332 is VariantERC20Base { function variant() public pure override returns (uint256) { return 332; } }
contract V_333 is VariantERC20Base { function variant() public pure override returns (uint256) { return 333; } }
contract V_334 is VariantERC20Base { function variant() public pure override returns (uint256) { return 334; } }
contract V_335 is VariantERC20Base { function variant() public pure override returns (uint256) { return 335; } }
contract V_336 is VariantERC20Base { function variant() public pure override returns (uint256) { return 336; } }
contract V_337 is VariantERC20Base { function variant() public pure override returns (uint256) { return 337; } }
contract V_338 is VariantERC20Base { function variant() public pure override returns (uint256) { return 338; } }
contract V_339 is VariantERC20Base { function variant() public pure override returns (uint256) { return 339; } }
contract V_340 is VariantERC20Base { function variant() public pure override returns (uint256) { return 340; } }
contract V_341 is VariantERC20Base { function variant() public pure override returns (uint256) { return 341; } }
contract V_342 is VariantERC20Base { function variant() public pure override returns (uint256) { return 342; } }
contract V_343 is VariantERC20Base { function variant() public pure override returns (uint256) { return 343; } }
contract V_344 is VariantERC20Base { function variant() public pure override returns (uint256) { return 344; } }
contract V_345 is VariantERC20Base { function variant() public pure override returns (uint256) { return 345; } }
contract V_346 is VariantERC20Base { function variant() public pure override returns (uint256) { return 346; } }
contract V_347 is VariantERC20Base { function variant() public pure override returns (uint256) { return 347; } }
contract V_348 is VariantERC20Base { function variant() public pure override returns (uint256) { return 348; } }
contract V_349 is VariantERC20Base { function variant() public pure override returns (uint256) { return 349; } }
contract V_350 is VariantERC20Base { function variant() public pure override returns (uint256) { return 350; } }
contract V_351 is VariantERC20Base { function variant() public pure override returns (uint256) { return 351; } }
contract V_352 is VariantERC20Base { function variant() public pure override returns (uint256) { return 352; } }
contract V_353 is VariantERC20Base { function variant() public pure override returns (uint256) { return 353; } }
contract V_354 is VariantERC20Base { function variant() public pure override returns (uint256) { return 354; } }
contract V_355 is VariantERC20Base { function variant() public pure override returns (uint256) { return 355; } }
contract V_356 is VariantERC20Base { function variant() public pure override returns (uint256) { return 356; } }
contract V_357 is VariantERC20Base { function variant() public pure override returns (uint256) { return 357; } }
contract V_358 is VariantERC20Base { function variant() public pure override returns (uint256) { return 358; } }
contract V_359 is VariantERC20Base { function variant() public pure override returns (uint256) { return 359; } }
contract V_360 is VariantERC20Base { function variant() public pure override returns (uint256) { return 360; } }
contract V_361 is VariantERC20Base { function variant() public pure override returns (uint256) { return 361; } }
contract V_362 is VariantERC20Base { function variant() public pure override returns (uint256) { return 362; } }
contract V_363 is VariantERC20Base { function variant() public pure override returns (uint256) { return 363; } }
contract V_364 is VariantERC20Base { function variant() public pure override returns (uint256) { return 364; } }
contract V_365 is VariantERC20Base { function variant() public pure override returns (uint256) { return 365; } }
contract V_366 is VariantERC20Base { function variant() public pure override returns (uint256) { return 366; } }
contract V_367 is VariantERC20Base { function variant() public pure override returns (uint256) { return 367; } }
contract V_368 is VariantERC20Base { function variant() public pure override returns (uint256) { return 368; } }
contract V_369 is VariantERC20Base { function variant() public pure override returns (uint256) { return 369; } }
contract V_370 is VariantERC20Base { function variant() public pure override returns (uint256) { return 370; } }
contract V_371 is VariantERC20Base { function variant() public pure override returns (uint256) { return 371; } }
contract V_372 is VariantERC20Base { function variant() public pure override returns (uint256) { return 372; } }
contract V_373 is VariantERC20Base { function variant() public pure override returns (uint256) { return 373; } }
contract V_374 is VariantERC20Base { function variant() public pure override returns (uint256) { return 374; } }
contract V_375 is VariantERC20Base { function variant() public pure override returns (uint256) { return 375; } }
contract V_376 is VariantERC20Base { function variant() public pure override returns (uint256) { return 376; } }
contract V_377 is VariantERC20Base { function variant() public pure override returns (uint256) { return 377; } }
contract V_378 is VariantERC20Base { function variant() public pure override returns (uint256) { return 378; } }
contract V_379 is VariantERC20Base { function variant() public pure override returns (uint256) { return 379; } }
contract V_380 is VariantERC20Base { function variant() public pure override returns (uint256) { return 380; } }
contract V_381 is VariantERC20Base { function variant() public pure override returns (uint256) { return 381; } }
contract V_382 is VariantERC20Base { function variant() public pure override returns (uint256) { return 382; } }
contract V_383 is VariantERC20Base { function variant() public pure override returns (uint256) { return 383; } }
contract V_384 is VariantERC20Base { function variant() public pure override returns (uint256) { return 384; } }
contract V_385 is VariantERC20Base { function variant() public pure override returns (uint256) { return 385; } }
contract V_386 is VariantERC20Base { function variant() public pure override returns (uint256) { return 386; } }
contract V_387 is VariantERC20Base { function variant() public pure override returns (uint256) { return 387; } }
contract V_388 is VariantERC20Base { function variant() public pure override returns (uint256) { return 388; } }
contract V_389 is VariantERC20Base { function variant() public pure override returns (uint256) { return 389; } }
contract V_390 is VariantERC20Base { function variant() public pure override returns (uint256) { return 390; } }
contract V_391 is VariantERC20Base { function variant() public pure override returns (uint256) { return 391; } }
contract V_392 is VariantERC20Base { function variant() public pure override returns (uint256) { return 392; } }
contract V_393 is VariantERC20Base { function variant() public pure override returns (uint256) { return 393; } }
contract V_394 is VariantERC20Base { function variant() public pure override returns (uint256) { return 394; } }
contract V_395 is VariantERC20Base { function variant() public pure override returns (uint256) { return 395; } }
contract V_396 is VariantERC20Base { function variant() public pure override returns (uint256) { return 396; } }
contract V_397 is VariantERC20Base { function variant() public pure override returns (uint256) { return 397; } }
contract V_398 is VariantERC20Base { function variant() public pure override returns (uint256) { return 398; } }
contract V_399 is VariantERC20Base { function variant() public pure override returns (uint256) { return 399; } }
contract V_400 is VariantERC20Base { function variant() public pure override returns (uint256) { return 400; } }
contract V_401 is VariantERC20Base { function variant() public pure override returns (uint256) { return 401; } }
contract V_402 is VariantERC20Base { function variant() public pure override returns (uint256) { return 402; } }
contract V_403 is VariantERC20Base { function variant() public pure override returns (uint256) { return 403; } }
contract V_404 is VariantERC20Base { function variant() public pure override returns (uint256) { return 404; } }
contract V_405 is VariantERC20Base { function variant() public pure override returns (uint256) { return 405; } }
contract V_406 is VariantERC20Base { function variant() public pure override returns (uint256) { return 406; } }
contract V_407 is VariantERC20Base { function variant() public pure override returns (uint256) { return 407; } }
contract V_408 is VariantERC20Base { function variant() public pure override returns (uint256) { return 408; } }
contract V_409 is VariantERC20Base { function variant() public pure override returns (uint256) { return 409; } }
contract V_410 is VariantERC20Base { function variant() public pure override returns (uint256) { return 410; } }
contract V_411 is VariantERC20Base { function variant() public pure override returns (uint256) { return 411; } }
contract V_412 is VariantERC20Base { function variant() public pure override returns (uint256) { return 412; } }
contract V_413 is VariantERC20Base { function variant() public pure override returns (uint256) { return 413; } }
contract V_414 is VariantERC20Base { function variant() public pure override returns (uint256) { return 414; } }
contract V_415 is VariantERC20Base { function variant() public pure override returns (uint256) { return 415; } }
contract V_416 is VariantERC20Base { function variant() public pure override returns (uint256) { return 416; } }
contract V_417 is VariantERC20Base { function variant() public pure override returns (uint256) { return 417; } }
contract V_418 is VariantERC20Base { function variant() public pure override returns (uint256) { return 418; } }
contract V_419 is VariantERC20Base { function variant() public pure override returns (uint256) { return 419; } }
contract V_420 is VariantERC20Base { function variant() public pure override returns (uint256) { return 420; } }
contract V_421 is VariantERC20Base { function variant() public pure override returns (uint256) { return 421; } }
contract V_422 is VariantERC20Base { function variant() public pure override returns (uint256) { return 422; } }
contract V_423 is VariantERC20Base { function variant() public pure override returns (uint256) { return 423; } }
contract V_424 is VariantERC20Base { function variant() public pure override returns (uint256) { return 424; } }
contract V_425 is VariantERC20Base { function variant() public pure override returns (uint256) { return 425; } }
contract V_426 is VariantERC20Base { function variant() public pure override returns (uint256) { return 426; } }
contract V_427 is VariantERC20Base { function variant() public pure override returns (uint256) { return 427; } }
contract V_428 is VariantERC20Base { function variant() public pure override returns (uint256) { return 428; } }
contract V_429 is VariantERC20Base { function variant() public pure override returns (uint256) { return 429; } }
contract V_430 is VariantERC20Base { function variant() public pure override returns (uint256) { return 430; } }
contract V_431 is VariantERC20Base { function variant() public pure override returns (uint256) { return 431; } }
contract V_432 is VariantERC20Base { function variant() public pure override returns (uint256) { return 432; } }
contract V_433 is VariantERC20Base { function variant() public pure override returns (uint256) { return 433; } }
contract V_434 is VariantERC20Base { function variant() public pure override returns (uint256) { return 434; } }
contract V_435 is VariantERC20Base { function variant() public pure override returns (uint256) { return 435; } }
contract V_436 is VariantERC20Base { function variant() public pure override returns (uint256) { return 436; } }
contract V_437 is VariantERC20Base { function variant() public pure override returns (uint256) { return 437; } }
contract V_438 is VariantERC20Base { function variant() public pure override returns (uint256) { return 438; } }
contract V_439 is VariantERC20Base { function variant() public pure override returns (uint256) { return 439; } }
contract V_440 is VariantERC20Base { function variant() public pure override returns (uint256) { return 440; } }
contract V_441 is VariantERC20Base { function variant() public pure override returns (uint256) { return 441; } }
contract V_442 is VariantERC20Base { function variant() public pure override returns (uint256) { return 442; } }
contract V_443 is VariantERC20Base { function variant() public pure override returns (uint256) { return 443; } }
contract V_444 is VariantERC20Base { function variant() public pure override returns (uint256) { return 444; } }
contract V_445 is VariantERC20Base { function variant() public pure override returns (uint256) { return 445; } }
contract V_446 is VariantERC20Base { function variant() public pure override returns (uint256) { return 446; } }
contract V_447 is VariantERC20Base { function variant() public pure override returns (uint256) { return 447; } }
contract V_448 is VariantERC20Base { function variant() public pure override returns (uint256) { return 448; } }
contract V_449 is VariantERC20Base { function variant() public pure override returns (uint256) { return 449; } }
contract V_450 is VariantERC20Base { function variant() public pure override returns (uint256) { return 450; } }
contract V_451 is VariantERC20Base { function variant() public pure override returns (uint256) { return 451; } }
contract V_452 is VariantERC20Base { function variant() public pure override returns (uint256) { return 452; } }
contract V_453 is VariantERC20Base { function variant() public pure override returns (uint256) { return 453; } }
contract V_454 is VariantERC20Base { function variant() public pure override returns (uint256) { return 454; } }
contract V_455 is VariantERC20Base { function variant() public pure override returns (uint256) { return 455; } }
contract V_456 is VariantERC20Base { function variant() public pure override returns (uint256) { return 456; } }
contract V_457 is VariantERC20Base { function variant() public pure override returns (uint256) { return 457; } }
contract V_458 is VariantERC20Base { function variant() public pure override returns (uint256) { return 458; } }
contract V_459 is VariantERC20Base { function variant() public pure override returns (uint256) { return 459; } }
contract V_460 is VariantERC20Base { function variant() public pure override returns (uint256) { return 460; } }
contract V_461 is VariantERC20Base { function variant() public pure override returns (uint256) { return 461; } }
contract V_462 is VariantERC20Base { function variant() public pure override returns (uint256) { return 462; } }
contract V_463 is VariantERC20Base { function variant() public pure override returns (uint256) { return 463; } }
contract V_464 is VariantERC20Base { function variant() public pure override returns (uint256) { return 464; } }
contract V_465 is VariantERC20Base { function variant() public pure override returns (uint256) { return 465; } }
contract V_466 is VariantERC20Base { function variant() public pure override returns (uint256) { return 466; } }
contract V_467 is VariantERC20Base { function variant() public pure override returns (uint256) { return 467; } }
contract V_468 is VariantERC20Base { function variant() public pure override returns (uint256) { return 468; } }
contract V_469 is VariantERC20Base { function variant() public pure override returns (uint256) { return 469; } }
contract V_470 is VariantERC20Base { function variant() public pure override returns (uint256) { return 470; } }
contract V_471 is VariantERC20Base { function variant() public pure override returns (uint256) { return 471; } }
contract V_472 is VariantERC20Base { function variant() public pure override returns (uint256) { return 472; } }
contract V_473 is VariantERC20Base { function variant() public pure override returns (uint256) { return 473; } }
contract V_474 is VariantERC20Base { function variant() public pure override returns (uint256) { return 474; } }
contract V_475 is VariantERC20Base { function variant() public pure override returns (uint256) { return 475; } }
contract V_476 is VariantERC20Base { function variant() public pure override returns (uint256) { return 476; } }
contract V_477 is VariantERC20Base { function variant() public pure override returns (uint256) { return 477; } }
contract V_478 is VariantERC20Base { function variant() public pure override returns (uint256) { return 478; } }
contract V_479 is VariantERC20Base { function variant() public pure override returns (uint256) { return 479; } }
contract V_480 is VariantERC20Base { function variant() public pure override returns (uint256) { return 480; } }
contract V_481 is VariantERC20Base { function variant() public pure override returns (uint256) { return 481; } }
contract V_482 is VariantERC20Base { function variant() public pure override returns (uint256) { return 482; } }
contract V_483 is VariantERC20Base { function variant() public pure override returns (uint256) { return 483; } }
contract V_484 is VariantERC20Base { function variant() public pure override returns (uint256) { return 484; } }
contract V_485 is VariantERC20Base { function variant() public pure override returns (uint256) { return 485; } }
contract V_486 is VariantERC20Base { function variant() public pure override returns (uint256) { return 486; } }
contract V_487 is VariantERC20Base { function variant() public pure override returns (uint256) { return 487; } }
contract V_488 is VariantERC20Base { function variant() public pure override returns (uint256) { return 488; } }
contract V_489 is VariantERC20Base { function variant() public pure override returns (uint256) { return 489; } }
contract V_490 is VariantERC20Base { function variant() public pure override returns (uint256) { return 490; } }
contract V_491 is VariantERC20Base { function variant() public pure override returns (uint256) { return 491; } }
contract V_492 is VariantERC20Base { function variant() public pure override returns (uint256) { return 492; } }
contract V_493 is VariantERC20Base { function variant() public pure override returns (uint256) { return 493; } }
contract V_494 is VariantERC20Base { function variant() public pure override returns (uint256) { return 494; } }
contract V_495 is VariantERC20Base { function variant() public pure override returns (uint256) { return 495; } }
contract V_496 is VariantERC20Base { function variant() public pure override returns (uint256) { return 496; } }
contract V_497 is VariantERC20Base { function variant() public pure override returns (uint256) { return 497; } }
contract V_498 is VariantERC20Base { function variant() public pure override returns (uint256) { return 498; } }
contract V_499 is VariantERC20Base { function variant() public pure override returns (uint256) { return 499; } }
