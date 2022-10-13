

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var aggregator: String

        public var verified: Bool?

        public var orderId: String

        public var amount: Int

        public var transactionToken: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case verified

            case orderId = "order_id"

            case amount

            case transactionToken = "transaction_token"
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.aggregator = aggregator

            self.verified = verified

            self.orderId = orderId

            self.amount = amount

            self.transactionToken = transactionToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(transactionToken, forKey: .transactionToken)
        }
    }
}
