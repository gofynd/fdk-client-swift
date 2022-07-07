

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var phoneNumber: String

        public var transactionAmountInPaise: Int

        public var merchantParams: [String: Any]

        public var aggregator: String

        public var payload: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case transactionAmountInPaise = "transaction_amount_in_paise"

            case merchantParams = "merchant_params"

            case aggregator

            case payload
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.phoneNumber = phoneNumber

            self.transactionAmountInPaise = transactionAmountInPaise

            self.merchantParams = merchantParams

            self.aggregator = aggregator

            self.payload = payload
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            payload = try container.decode(String.self, forKey: .payload)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(payload, forKey: .payload)
        }
    }
}
