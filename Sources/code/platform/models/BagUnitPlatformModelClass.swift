

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var itemQuantity: Int

        public var status: [String: Any]

        public var shipmentId: String

        public var prices: Prices?

        public var orderingChannel: String

        public var gst: GST?

        public var item: Item?

        public var totalShipmentBags: Int

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case itemQuantity = "item_quantity"

            case status

            case shipmentId = "shipment_id"

            case prices

            case orderingChannel = "ordering_channel"

            case gst

            case item

            case totalShipmentBags = "total_shipment_bags"

            case bagId = "bag_id"
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.itemQuantity = itemQuantity

            self.status = status

            self.shipmentId = shipmentId

            self.prices = prices

            self.orderingChannel = orderingChannel

            self.gst = gst

            self.item = item

            self.totalShipmentBags = totalShipmentBags

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            status = try container.decode([String: Any].self, forKey: .status)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

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

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
