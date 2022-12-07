

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var item: PlatformItem?

        public var prices: Prices?

        public var bagId: Int

        public var shipmentId: String

        public var itemQuantity: Int

        public var status: [String: Any]

        public var orderingChannel: String

        public var gst: GSTDetailsData?

        public var totalShipmentBags: Int

        public enum CodingKeys: String, CodingKey {
            case item

            case prices

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case itemQuantity = "item_quantity"

            case status

            case orderingChannel = "ordering_channel"

            case gst

            case totalShipmentBags = "total_shipment_bags"
        }

        public init(bagId: Int, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.item = item

            self.prices = prices

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.itemQuantity = itemQuantity

            self.status = status

            self.orderingChannel = orderingChannel

            self.gst = gst

            self.totalShipmentBags = totalShipmentBags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            status = try container.decode([String: Any].self, forKey: .status)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
        }
    }
}
