

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment1
         Used By: Orders
     */

    class Shipment1: Codable {
        public var orderId: String

        public var shipmentStatus: String

        public var totalItems: String

        public var prices: ShipmentPricesDataSet?

        public var rtdDone: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case shipmentStatus = "shipment_status"

            case totalItems = "total_items"

            case prices

            case rtdDone = "rtd_done"

            case shipmentId = "shipment_id"
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.orderId = orderId

            self.shipmentStatus = shipmentStatus

            self.totalItems = totalItems

            self.prices = prices

            self.rtdDone = rtdDone

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            totalItems = try container.decode(String.self, forKey: .totalItems)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
