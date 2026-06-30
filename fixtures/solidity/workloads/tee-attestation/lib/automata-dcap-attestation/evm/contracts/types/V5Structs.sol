//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CommonStruct.sol";
import "./V4Structs.sol";

/// @dev https://github.com/intel/SGX-TDX-DCAP-QuoteVerificationLibrary/blob/7e5b2a13ca5472de8d97dd7d7024c2ea5af9a6ba/Src/AttestationLibrary/src/QuoteVerification/QuoteStructures.h#L105
struct TD15ReportBody {
    bytes16 teeTcbSvn;
    bytes mrSeam; // 48 bytes
    bytes mrsignerSeam; // 48 bytes
    bytes8 seamAttributes;
    bytes8 tdAttributes;
    bytes8 xFAM;
    bytes mrTd; // 48 bytes
    bytes mrConfigId; // 48 bytes
    bytes mrOwner; // 48 bytes
    bytes mrOwnerConfig; // 48 bytes
    bytes rtMr0; // 48 bytes
    bytes rtMr1; // 48 bytes
    bytes rtMr2; // 48 bytes
    bytes rtMr3; // 48 bytes
    bytes reportData; // 64 bytes
    bytes16 teeTcbSvn2;
    bytes mrServiceTd; // 48 bytes
}

/// @dev https://github.com/intel/SGX-TDX-DCAP-QuoteVerificationLibrary/blob/7e5b2a13ca5472de8d97dd7d7024c2ea5af9a6ba/Src/AttestationLibrary/src/QuoteVerification/QuoteStructures.h#L166-L173
/// this struct is modified from the original definition
/// since we are expecting certificationData to be of certType == 6
/// as per https://github.com/intel/SGXDataCenterAttestationPrimitives/blob/45554a754ba8c03342cc394831fa7f04db08805c/QuoteGeneration/quote_wrapper/common/inc/sgx_quote_4.h#L85-L96
struct ECDSAQuoteV5AuthData {
    bytes ecdsa256BitSignature; // 64 bytes
    bytes ecdsaAttestationKey; // 64 bytes
    QEReportCertificationData qeReportCertData;
}

struct TDQuoteBodyDescriptor {
    bytes2 tdQuoteBodyType;
    bytes4 size;
    TD10ReportBody tdQuoteBody; // 1: Future SGX support; 2: Byte array that contains TD Report for TDX1.0; 3: Bytes array that contains TD Report for TDX1.5.
}

struct V5SGXQuote {
    Header header;
    EnclaveReport localEnclaveReport;
    ECDSAQuoteV5AuthData authData;
}

struct V5TDXQuote {
    Header header;
    TDQuoteBodyDescriptor tdQuoteBodyDescriptor;
    ECDSAQuoteV5AuthData authData;
}
