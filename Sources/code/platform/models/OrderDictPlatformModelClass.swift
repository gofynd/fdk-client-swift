

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var prices: Prices?

        public var orderDate: String

        public var shipmentCount: Int

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case prices

            case orderDate = "order_date"

            case shipmentCount = "shipment_count"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, orderDate: String, prices: Prices? = nil, shipmentCount: Int) {
            self.prices = prices

            self.orderDate = orderDate

            self.shipmentCount = shipmentCount

            self.fyndOrderId = fyndOrderId
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

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
