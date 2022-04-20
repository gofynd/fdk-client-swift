

import Foundation
public extension ApplicationClient {
    /*
         Model: ReqBodyVerifyOTPShipment
         Used By: Order
     */
    class ReqBodyVerifyOTPShipment: Codable {
        public var requestId: String

        public var otpCode: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(otpCode: String, requestId: String) {
            self.requestId = requestId

            self.otpCode = otpCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(String.self, forKey: .otpCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }
}
