// import Foundation
// import CryptoSwift

// enum CryptoAlgorithm {
//     case MD5, SHA1, SHA224, SHA256, SHA384, SHA512

//     var HMACAlgorithm: CCHmacAlgorithm {
//         var result: Int = 0
//         switch self {
//         case .MD5:      result = kCCHmacAlgMD5
//         case .SHA1:     result = kCCHmacAlgSHA1
//         case .SHA224:   result = kCCHmacAlgSHA224
//         case .SHA256:   result = kCCHmacAlgSHA256
//         case .SHA384:   result = kCCHmacAlgSHA384
//         case .SHA512:   result = SHA512//kCCHmacAlgSHA512
//         }
//         return CCHmacAlgorithm(result)
//     }

//     var digestLength: Int {
//         var result: Int32 = 0
//         switch self {
//         case .MD5:      result = CC_MD5_DIGEST_LENGTH
//         case .SHA1:     result = CC_SHA1_DIGEST_LENGTH
//         case .SHA224:   result = CC_SHA224_DIGEST_LENGTH
//         case .SHA256:   result = CC_SHA256_DIGEST_LENGTH
//         case .SHA384:   result = CC_SHA384_DIGEST_LENGTH
//         case .SHA512:   result = CC_SHA512_DIGEST_LENGTH
//         }
//         return Int(result)
//     }
// }

// extension String {
//     func sha256() -> String {
//         if let stringData = self.data(using: String.Encoding.utf8) {
//             return stringData.sha256()
//         }
//         return ""
//     }
    
//     func hmac(algorithm: CryptoAlgorithm, key: String) -> String {
//         let str = self.cString(using: String.Encoding.utf8)
//         let strLen = Int(self.lengthOfBytes(using: String.Encoding.utf8))
//         let digestLen = algorithm.digestLength
//         let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
//         let keyStr = key.cString(using: String.Encoding.utf8)
//         let keyLen = Int(key.lengthOfBytes(using: String.Encoding.utf8))
//         CCHmac(algorithm.HMACAlgorithm, keyStr!, keyLen, str!, strLen, result)
//         let digest = hexStringFromResult(result: result, length: digestLen)
//         result.deallocate()
//         return digest
//     }

//     private func hexStringFromResult(result: UnsafeMutablePointer<CUnsignedChar>, length: Int) -> String {
//         let hash = NSMutableString()
//         for index in 0..<length {
//             hash.appendFormat("%02x", result[index])
//         }
//         return String(hash).lowercased()
//     }
// }

// extension Data {
//     public func sha256() -> String {
//         return hexStringFromData(input: digest(input: self as NSData))
//     }
    
//     private func digest(input: NSData) -> NSData {
//         let digestLength = Int(CC_SHA256_DIGEST_LENGTH)
//         var hash = [UInt8](repeating: 0, count: digestLength)
//         CC_SHA256(input.bytes, UInt32(input.length), &hash)
//         return NSData(bytes: hash, length: digestLength)
//     }
    
//     private  func hexStringFromData(input: NSData) -> String {
//         var bytes = [UInt8](repeating: 0, count: input.length)
//         input.getBytes(&bytes, length: input.length)
//         var hexString = ""
//         for byte in bytes {
//             hexString += String(format: "%02x", UInt8(byte))
//         }
//         return hexString
//     }
// }
