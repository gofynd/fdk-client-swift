

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var requestId: String

        public var otp: String

        public var hashKey: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otp

            case hashKey = "hash_key"
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.requestId = requestId

            self.otp = otp

            self.hashKey = hashKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otp = try container.decode(String.self, forKey: .otp)

            hashKey = try container.decode(String.self, forKey: .hashKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
        }
    }
}
