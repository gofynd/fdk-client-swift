

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryDetailsOTPRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsOTPRequest: Codable {
        public var orderId: String

        public var details: BankDetailsForOTP

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case details
        }

        public init(details: BankDetailsForOTP, orderId: String) {
            self.orderId = orderId

            self.details = details
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            details = try container.decode(BankDetailsForOTP.self, forKey: .details)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(details, forKey: .details)
        }
    }
}
