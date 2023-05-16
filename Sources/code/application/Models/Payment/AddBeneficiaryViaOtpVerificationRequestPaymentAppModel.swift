

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var otp: String

        public var hashKey: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case hashKey = "hash_key"

            case requestId = "request_id"
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.otp = otp

            self.hashKey = hashKey

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otp = try container.decode(String.self, forKey: .otp)

            hashKey = try container.decode(String.self, forKey: .hashKey)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
