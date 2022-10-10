

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var bagId: Int

        public var orderingChannel: String

        public var item: Item?

        public var totalShipmentBags: Int

        public var gst: GST?

        public var prices: Prices?

        public var status: [String: Any]

        public var itemQuantity: Int

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case orderingChannel = "ordering_channel"

            case item

            case totalShipmentBags = "total_shipment_bags"

            case gst

            case prices

            case status

            case itemQuantity = "item_quantity"

            case shipmentId = "shipment_id"
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.bagId = bagId

            self.orderingChannel = orderingChannel

            self.item = item

            self.totalShipmentBags = totalShipmentBags

            self.gst = gst

            self.prices = prices

            self.status = status

            self.itemQuantity = itemQuantity

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
