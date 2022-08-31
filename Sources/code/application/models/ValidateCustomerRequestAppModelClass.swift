

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var payload: String

        public var aggregator: String

        public var transactionAmountInPaise: Int

        public var merchantParams: [String: Any]

        public var phoneNumber: String

        public enum CodingKeys: String, CodingKey {
            case payload

            case aggregator

            case transactionAmountInPaise = "transaction_amount_in_paise"

            case merchantParams = "merchant_params"

            case phoneNumber = "phone_number"
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.payload = payload

            self.aggregator = aggregator

            self.transactionAmountInPaise = transactionAmountInPaise

            self.merchantParams = merchantParams

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payload = try container.decode(String.self, forKey: .payload)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
