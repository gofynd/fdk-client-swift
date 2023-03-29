

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var payload: String

        public var transactionAmountInPaise: Int

        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case payload

            case transactionAmountInPaise = "transaction_amount_in_paise"

            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"

            case aggregator
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.payload = payload

            self.transactionAmountInPaise = transactionAmountInPaise

            self.phoneNumber = phoneNumber

            self.merchantParams = merchantParams

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payload = try container.decode(String.self, forKey: .payload)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
