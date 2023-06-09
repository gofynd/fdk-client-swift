

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var verified: Bool?

        public var orderId: String

        public var transactionToken: String?

        public var amount: Int

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case verified

            case orderId = "order_id"

            case transactionToken = "transaction_token"

            case amount

            case aggregator
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.verified = verified

            self.orderId = orderId

            self.transactionToken = transactionToken

            self.amount = amount

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
