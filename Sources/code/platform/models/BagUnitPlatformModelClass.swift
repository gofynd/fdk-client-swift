

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var item: Item?

        public var orderingChannel: String

        public var totalShipmentBags: Int

        public var shipmentId: String

        public var status: [String: Any]

        public var prices: Prices?

        public var itemQuantity: Int

        public var bagId: Int

        public var gst: GST?

        public enum CodingKeys: String, CodingKey {
            case item

            case orderingChannel = "ordering_channel"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentId = "shipment_id"

            case status

            case prices

            case itemQuantity = "item_quantity"

            case bagId = "bag_id"

            case gst
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.item = item

            self.orderingChannel = orderingChannel

            self.totalShipmentBags = totalShipmentBags

            self.shipmentId = shipmentId

            self.status = status

            self.prices = prices

            self.itemQuantity = itemQuantity

            self.bagId = bagId

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
