

import Foundation
public extension ApplicationClient {
    /*
         Model: WalletOtpResponse
         Used By: Payment
     */
    class WalletOtpResponse: Codable {
        public var success: Bool?

        public var requestId: String

        public var isVerifiedFlag: String

        public enum CodingKeys: String, CodingKey {
            case success

            case requestId = "request_id"

            case isVerifiedFlag = "is_verified_flag"
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool? = nil) {
            self.success = success

            self.requestId = requestId

            self.isVerifiedFlag = isVerifiedFlag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestId = try container.decode(String.self, forKey: .requestId)

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
        }
    }
}
