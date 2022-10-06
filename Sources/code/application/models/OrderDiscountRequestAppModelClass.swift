

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderDiscountRequest
         Used By: Rewards
     */
    class OrderDiscountRequest: Codable {
        public var currency: String?

        public var orderAmount: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case orderAmount = "order_amount"
        }

        public init(currency: String? = nil, orderAmount: Double) {
            self.currency = currency

            self.orderAmount = orderAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderAmount = try container.decode(Double.self, forKey: .orderAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
        }
    }
}
