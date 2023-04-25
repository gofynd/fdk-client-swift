

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var orderingChannel: String

        public var itemQuantity: Int

        public var canCancel: Bool?

        public var totalShipmentBags: Int

        public var status: [String: Any]

        public var item: PlatformItem?

        public var prices: Prices?

        public var gst: GSTDetailsData?

        public var bagId: Int

        public var shipmentId: String

        public var canReturn: Bool?

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case itemQuantity = "item_quantity"

            case canCancel = "can_cancel"

            case totalShipmentBags = "total_shipment_bags"

            case status

            case item

            case prices

            case gst

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case canReturn = "can_return"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.orderingChannel = orderingChannel

            self.itemQuantity = itemQuantity

            self.canCancel = canCancel

            self.totalShipmentBags = totalShipmentBags

            self.status = status

            self.item = item

            self.prices = prices

            self.gst = gst

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.canReturn = canReturn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            status = try container.decode([String: Any].self, forKey: .status)

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

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var orderingChannel: String

        public var itemQuantity: Int

        public var canCancel: Bool?

        public var totalShipmentBags: Int

        public var status: [String: Any]

        public var item: PlatformItem?

        public var prices: Prices?

        public var gst: GSTDetailsData?

        public var bagId: Int

        public var shipmentId: String

        public var canReturn: Bool?

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case itemQuantity = "item_quantity"

            case canCancel = "can_cancel"

            case totalShipmentBags = "total_shipment_bags"

            case status

            case item

            case prices

            case gst

            case bagId = "bag_id"

            case shipmentId = "shipment_id"

            case canReturn = "can_return"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.orderingChannel = orderingChannel

            self.itemQuantity = itemQuantity

            self.canCancel = canCancel

            self.totalShipmentBags = totalShipmentBags

            self.status = status

            self.item = item

            self.prices = prices

            self.gst = gst

            self.bagId = bagId

            self.shipmentId = shipmentId

            self.canReturn = canReturn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            status = try container.decode([String: Any].self, forKey: .status)

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

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
        }
    }
}
