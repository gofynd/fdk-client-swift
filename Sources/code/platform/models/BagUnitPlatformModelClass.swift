

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var itemQuantity: Int

        public var bagId: Int

        public var item: Item?

        public var totalShipmentBags: Int

        public var prices: Prices?

        public var shipmentId: String

        public var gst: GST?

        public var orderingChannel: String

        public var status: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemQuantity = "item_quantity"

            case bagId = "bag_id"

            case item

            case totalShipmentBags = "total_shipment_bags"

            case prices

            case shipmentId = "shipment_id"

            case gst

            case orderingChannel = "ordering_channel"

            case status
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.itemQuantity = itemQuantity

            self.bagId = bagId

            self.item = item

            self.totalShipmentBags = totalShipmentBags

            self.prices = prices

            self.shipmentId = shipmentId

            self.gst = gst

            self.orderingChannel = orderingChannel

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            status = try container.decode([String: Any].self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
