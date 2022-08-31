

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var status: [String: Any]

        public var bagId: Int

        public var prices: Prices?

        public var orderingChannel: String

        public var shipmentId: String

        public var itemQuantity: Int

        public var item: Item?

        public var totalShipmentBags: Int

        public var gst: GST?

        public enum CodingKeys: String, CodingKey {
            case status

            case bagId = "bag_id"

            case prices

            case orderingChannel = "ordering_channel"

            case shipmentId = "shipment_id"

            case itemQuantity = "item_quantity"

            case item

            case totalShipmentBags = "total_shipment_bags"

            case gst
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.status = status

            self.bagId = bagId

            self.prices = prices

            self.orderingChannel = orderingChannel

            self.shipmentId = shipmentId

            self.itemQuantity = itemQuantity

            self.item = item

            self.totalShipmentBags = totalShipmentBags

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode([String: Any].self, forKey: .status)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
