

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var paymentMethods: [String: Any]?

        public var fyndOrderId: String

        public var orderDate: String

        public var shipmentCount: Int

        public var meta: OrderMeta?

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case fyndOrderId = "fynd_order_id"

            case orderDate = "order_date"

            case shipmentCount = "shipment_count"

            case meta
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, shipmentCount: Int) {
            self.paymentMethods = paymentMethods

            self.fyndOrderId = fyndOrderId

            self.orderDate = orderDate

            self.shipmentCount = shipmentCount

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            orderDate = try container.decode(String.self, forKey: .orderDate)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
