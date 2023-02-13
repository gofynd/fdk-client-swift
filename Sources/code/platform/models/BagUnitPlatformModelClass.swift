

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var gst: GSTDetailsData?

        public var prices: Prices?

        public var item: PlatformItem?

        public var canCancel: Bool?

        public var totalShipmentBags: Int

        public var shipmentId: String

        public var orderingChannel: String

        public var status: [String: Any]

        public var canReturn: Bool?

        public var itemQuantity: Int

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case gst

            case prices

            case item

            case canCancel = "can_cancel"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentId = "shipment_id"

            case orderingChannel = "ordering_channel"

            case status

            case canReturn = "can_return"

            case itemQuantity = "item_quantity"

            case bagId = "bag_id"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.gst = gst

            self.prices = prices

            self.item = item

            self.canCancel = canCancel

            self.totalShipmentBags = totalShipmentBags

            self.shipmentId = shipmentId

            self.orderingChannel = orderingChannel

            self.status = status

            self.canReturn = canReturn

            self.itemQuantity = itemQuantity

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

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

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
