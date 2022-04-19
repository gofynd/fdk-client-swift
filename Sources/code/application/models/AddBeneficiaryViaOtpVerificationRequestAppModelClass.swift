import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var hashKey: String

        public var requestId: String

        public var otp: String

        public enum CodingKeys: String, CodingKey {
            case hashKey = "hash_key"

            case requestId = "request_id"

            case otp
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.hashKey = hashKey

            self.requestId = requestId

            self.otp = otp
        }

        public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hashKey = try container.decode(String.self, forKey: .hashKey)

            requestId = try container.decode(String.self, forKey: .requestId)

            otp = try container.decode(String.self, forKey: .otp)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otp, forKey: .otp)
        }
    }
}
