

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var otp: String

        public var requestId: String

        public var hashKey: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case requestId = "request_id"

            case hashKey = "hash_key"
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.otp = otp

            self.requestId = requestId

            self.hashKey = hashKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otp = try container.decode(String.self, forKey: .otp)

            requestId = try container.decode(String.self, forKey: .requestId)

            hashKey = try container.decode(String.self, forKey: .hashKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
        }
    }
}
