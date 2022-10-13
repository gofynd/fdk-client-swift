

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var aggregator: String

        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public var payload: String

        public var transactionAmountInPaise: Int

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"

            case payload

            case transactionAmountInPaise = "transaction_amount_in_paise"
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.aggregator = aggregator

            self.phoneNumber = phoneNumber

            self.merchantParams = merchantParams

            self.payload = payload

            self.transactionAmountInPaise = transactionAmountInPaise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            payload = try container.decode(String.self, forKey: .payload)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
        }
    }
}
