

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: WalletOtpResponse
         Used By: Payment
     */
    class WalletOtpResponse: Codable {
        public var success: Bool?

        public var isVerifiedFlag: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isVerifiedFlag = "is_verified_flag"

            case requestId = "request_id"
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool? = nil) {
            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
