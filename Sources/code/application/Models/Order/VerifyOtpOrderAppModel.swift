

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: VerifyOtp
         Used By: Order
     */
    class VerifyOtp: Codable {
        public var otpCode: String?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case otpCode = "otp_code"

            case requestId = "request_id"
        }

        public init(otpCode: String? = nil, requestId: String? = nil) {
            self.otpCode = otpCode

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otpCode = try container.decode(String.self, forKey: .otpCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
