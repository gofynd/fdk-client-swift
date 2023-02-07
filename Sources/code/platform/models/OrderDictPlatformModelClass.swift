

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var meta: OrderMeta?

        public var fyndOrderId: String

        public var shipmentCount: Int

        public var paymentMethods: [String: Any]?

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case fyndOrderId = "fynd_order_id"

            case shipmentCount = "shipment_count"

            case paymentMethods = "payment_methods"

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, shipmentCount: Int) {
            self.meta = meta

            self.fyndOrderId = fyndOrderId

            self.shipmentCount = shipmentCount

            self.paymentMethods = paymentMethods

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}
