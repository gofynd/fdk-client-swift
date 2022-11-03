

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var itemQuantity: Int

        public var shipmentId: String

        public var item: Item?

        public var gst: GST?

        public var totalShipmentBags: Int

        public var orderingChannel: String

        public var bagId: Int

        public var status: [String: Any]

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case itemQuantity = "item_quantity"

            case shipmentId = "shipment_id"

            case item

            case gst

            case totalShipmentBags = "total_shipment_bags"

            case orderingChannel = "ordering_channel"

            case bagId = "bag_id"

            case status

            case prices
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.itemQuantity = itemQuantity

            self.shipmentId = shipmentId

            self.item = item

            self.gst = gst

            self.totalShipmentBags = totalShipmentBags

            self.orderingChannel = orderingChannel

            self.bagId = bagId

            self.status = status

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            bagId = try container.decode(Int.self, forKey: .bagId)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
