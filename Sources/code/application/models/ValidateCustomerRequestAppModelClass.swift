

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var transactionAmountInPaise: Int

        public var payload: String

        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case transactionAmountInPaise = "transaction_amount_in_paise"

            case payload

            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"

            case aggregator
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.transactionAmountInPaise = transactionAmountInPaise

            self.payload = payload

            self.phoneNumber = phoneNumber

            self.merchantParams = merchantParams

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            payload = try container.decode(String.self, forKey: .payload)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
