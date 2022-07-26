

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var transactionToken: String?

        public var aggregator: String

        public var amount: Int

        public var orderId: String

        public var verified: Bool?

        public enum CodingKeys: String, CodingKey {
            case transactionToken = "transaction_token"

            case aggregator

            case amount

            case orderId = "order_id"

            case verified
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.transactionToken = transactionToken

            self.aggregator = aggregator

            self.amount = amount

            self.orderId = orderId

            self.verified = verified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(verified, forKey: .verified)
        }
    }
}
