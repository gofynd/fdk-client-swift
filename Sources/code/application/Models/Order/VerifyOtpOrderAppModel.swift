

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: VerifyOtp
         Used By: Order
     */
    class VerifyOtp: Codable {
        public var requestId: String?

        public var otpCode: Int?

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(otpCode: Int? = nil, requestId: String? = nil) {
            self.requestId = requestId

            self.otpCode = otpCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otpCode = try container.decode(Int.self, forKey: .otpCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }
}
