

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var amount: Int

        public var transactionToken: String?

        public var orderId: String

        public var verified: Bool?

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case transactionToken = "transaction_token"

            case orderId = "order_id"

            case verified

            case aggregator
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.amount = amount

            self.transactionToken = transactionToken

            self.orderId = orderId

            self.verified = verified

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

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

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
