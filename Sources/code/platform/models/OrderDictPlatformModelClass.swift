

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var prices: Prices?

        public var orderDate: String

        public var fyndOrderId: String

        public var shipmentCount: Int

        public enum CodingKeys: String, CodingKey {
            case prices

            case orderDate = "order_date"

            case fyndOrderId = "fynd_order_id"

            case shipmentCount = "shipment_count"
        }

        public init(fyndOrderId: String, orderDate: String, prices: Prices? = nil, shipmentCount: Int) {
            self.prices = prices

            self.orderDate = orderDate

            self.fyndOrderId = fyndOrderId

            self.shipmentCount = shipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)
        }
    }
}
