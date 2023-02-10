

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var prices: Prices?

        public var paymentMethods: [String: Any]?

        public var shipmentCount: Int

        public var fyndOrderId: String

        public var meta: OrderMeta?

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case prices

            case paymentMethods = "payment_methods"

            case shipmentCount = "shipment_count"

            case fyndOrderId = "fynd_order_id"

            case meta

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, shipmentCount: Int) {
            self.prices = prices

            self.paymentMethods = paymentMethods

            self.shipmentCount = shipmentCount

            self.fyndOrderId = fyndOrderId

            self.meta = meta

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

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

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}
