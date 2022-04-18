import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: WalletOtpResponse
         Used By: Payment
     */
    class WalletOtpResponse: Codable {
        public var requestId: String

        public var success: Bool?

        public var isVerifiedFlag: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case success

            case isVerifiedFlag = "is_verified_flag"
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
            self.requestId = requestId

            self.success = success

            self.isVerifiedFlag = isVerifiedFlag
        }

        public func duplicate() -> WalletOtpResponse {
            let dict = self.dictionary!
            let copy = WalletOtpResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
        }
    }
}
