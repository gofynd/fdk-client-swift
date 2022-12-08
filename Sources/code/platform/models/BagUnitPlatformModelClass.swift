

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var status: [String: Any]

        public var prices: Prices?

        public var shipmentId: String

        public var totalShipmentBags: Int

        public var item: PlatformItem?

        public var bagId: Int

        public var gst: GSTDetailsData?

        public var orderingChannel: String

        public var itemQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case status

            case prices

            case shipmentId = "shipment_id"

            case totalShipmentBags = "total_shipment_bags"

            case item

            case bagId = "bag_id"

            case gst

            case orderingChannel = "ordering_channel"

            case itemQuantity = "item_quantity"
        }

        public init(bagId: Int, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.status = status

            self.prices = prices

            self.shipmentId = shipmentId

            self.totalShipmentBags = totalShipmentBags

            self.item = item

            self.bagId = bagId

            self.gst = gst

            self.orderingChannel = orderingChannel

            self.itemQuantity = itemQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)
        }
    }
}
