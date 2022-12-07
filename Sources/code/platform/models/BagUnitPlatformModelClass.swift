

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var prices: Prices?

        public var itemQuantity: Int

        public var gst: GSTDetailsData?

        public var item: PlatformItem?

        public var orderingChannel: String

        public var totalShipmentBags: Int

        public var status: [String: Any]

        public var shipmentId: String

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case prices

            case itemQuantity = "item_quantity"

            case gst

            case item

            case orderingChannel = "ordering_channel"

            case totalShipmentBags = "total_shipment_bags"

            case status

            case shipmentId = "shipment_id"

            case bagId = "bag_id"
        }

        public init(bagId: Int, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.prices = prices

            self.itemQuantity = itemQuantity

            self.gst = gst

            self.item = item

            self.orderingChannel = orderingChannel

            self.totalShipmentBags = totalShipmentBags

            self.status = status

            self.shipmentId = shipmentId

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            status = try container.decode([String: Any].self, forKey: .status)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
