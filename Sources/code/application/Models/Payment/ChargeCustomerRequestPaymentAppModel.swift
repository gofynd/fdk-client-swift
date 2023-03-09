

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var aggregator: String

        public var transactionToken: String?

        public var orderId: String

        public var verified: Bool?

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case transactionToken = "transaction_token"

            case orderId = "order_id"

            case verified

            case amount
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.aggregator = aggregator

            self.transactionToken = transactionToken

            self.orderId = orderId

            self.verified = verified

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(verified, forKey: .verified)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
