/**
 *  Crypto
 *  Copyright (c) 2017 Alexis Aubry. Licensed under the MIT license.
 */

import Foundation
import XCTest
@testable import Crypto

/**
 * Represents an AES Key Wrap test vector, i.g. the data used to verify our implementation.
 */

struct AESKeyWrapTestVector {

    let kek: Data
    let key: Data
    let wrappedKey: Data

    init(_ kek: Data, _ key: Data, _ wrappedKey: Data) {
        self.kek = kek
        self.key = key
        self.wrappedKey = wrappedKey
    }

}

enum AESKeyWrapTestSuite {}

extension AESKeyWrapTestSuite {

    static func rfc3394() -> [AESKeyWrapTestVector] {

        let v1 = AESKeyWrapTestVector("000102030405060708090A0B0C0D0E0F",
                                      "00112233445566778899AABBCCDDEEFF",
                                      "1FA68B0A8112B447AEF34BD8FB5A7B829D3E862371D2CFE5")

        let v2 = AESKeyWrapTestVector("000102030405060708090A0B0C0D0E0F1011121314151617",
                                      "00112233445566778899AABBCCDDEEFF",
                                      "96778B25AE6CA435F92B5B97C050AED2468AB8A17AD84E5D")

        let v3 = AESKeyWrapTestVector("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F",
                                      "00112233445566778899AABBCCDDEEFF",
                                      "64E8C3F9CE0F5BA263E9777905818A2A93C8191E7D6E8AE7")

        let v4 = AESKeyWrapTestVector("000102030405060708090A0B0C0D0E0F1011121314151617",
                                      "00112233445566778899AABBCCDDEEFF0001020304050607",
                                      "031D33264E15D33268F24EC260743EDCE1C6C7DDEE725A936BA814915C6762D2")

        let v5 = AESKeyWrapTestVector("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F",
                                      "00112233445566778899AABBCCDDEEFF0001020304050607",
                                      "A8F9BC1612C68B3FF6E6F4FBE30E71E4769C8B80A32CB8958CD5D17D6B254DA1")

        let v6 = AESKeyWrapTestVector("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F",
                                      "00112233445566778899AABBCCDDEEFF000102030405060708090A0B0C0D0E0F",
                                      "28C9F404C4B810F4CBCCB35CFB87F8263F5786E2D80ED326CBC7F0E71A99F43BFB988B9B7A02DD21")

        return [v1, v2, v3, v4, v5, v6]

    }

}
