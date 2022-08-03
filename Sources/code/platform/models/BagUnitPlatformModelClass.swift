

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var prices: Prices?

        public var status: [String: Any]

        public var bagId: Int

        public var gst: GST?

        public var item: Item?

        public var itemQuantity: Int

        public var totalShipmentBags: Int

        public var orderingChannel: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case prices

            case status

            case bagId = "bag_id"

            case gst

            case item

            case itemQuantity = "item_quantity"

            case totalShipmentBags = "total_shipment_bags"

            case orderingChannel = "ordering_channel"

            case shipmentId = "shipment_id"
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.prices = prices

            self.status = status

            self.bagId = bagId

            self.gst = gst

            self.item = item

            self.itemQuantity = itemQuantity

            self.totalShipmentBags = totalShipmentBags

            self.orderingChannel = orderingChannel

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
