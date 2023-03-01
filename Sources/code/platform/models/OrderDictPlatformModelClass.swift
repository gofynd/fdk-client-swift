

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var taxDetails: [String: Any]?

        public var fyndOrderId: String

        public var prices: Prices?

        public var paymentMethods: [String: Any]?

        public var meta: OrderMeta?

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case taxDetails = "tax_details"

            case fyndOrderId = "fynd_order_id"

            case prices

            case paymentMethods = "payment_methods"

            case meta

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, taxDetails: [String: Any]? = nil) {
            self.taxDetails = taxDetails

            self.fyndOrderId = fyndOrderId

            self.prices = prices

            self.paymentMethods = paymentMethods

            self.meta = meta

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}
