

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var orderDate: String

        public var shipmentCount: Int

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case orderDate = "order_date"

            case shipmentCount = "shipment_count"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, orderDate: String, shipmentCount: Int) {
            self.orderDate = orderDate

            self.shipmentCount = shipmentCount

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderDate = try container.decode(String.self, forKey: .orderDate)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
