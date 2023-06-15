

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var totalShipmentBags: Int

        public var gst: GSTDetailsData?

        public var shipmentId: String

        public var itemQuantity: Int

        public var canCancel: Bool?

        public var prices: Prices?

        public var orderingChannel: String

        public var status: [String: Any]

        public var canReturn: Bool?

        public var bagId: Int

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case totalShipmentBags = "total_shipment_bags"

            case gst

            case shipmentId = "shipment_id"

            case itemQuantity = "item_quantity"

            case canCancel = "can_cancel"

            case prices

            case orderingChannel = "ordering_channel"

            case status

            case canReturn = "can_return"

            case bagId = "bag_id"

            case item
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.totalShipmentBags = totalShipmentBags

            self.gst = gst

            self.shipmentId = shipmentId

            self.itemQuantity = itemQuantity

            self.canCancel = canCancel

            self.prices = prices

            self.orderingChannel = orderingChannel

            self.status = status

            self.canReturn = canReturn

            self.bagId = bagId

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var totalShipmentBags: Int

        public var gst: GSTDetailsData?

        public var shipmentId: String

        public var itemQuantity: Int

        public var canCancel: Bool?

        public var prices: Prices?

        public var orderingChannel: String

        public var status: [String: Any]

        public var canReturn: Bool?

        public var bagId: Int

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case totalShipmentBags = "total_shipment_bags"

            case gst

            case shipmentId = "shipment_id"

            case itemQuantity = "item_quantity"

            case canCancel = "can_cancel"

            case prices

            case orderingChannel = "ordering_channel"

            case status

            case canReturn = "can_return"

            case bagId = "bag_id"

            case item
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.totalShipmentBags = totalShipmentBags

            self.gst = gst

            self.shipmentId = shipmentId

            self.itemQuantity = itemQuantity

            self.canCancel = canCancel

            self.prices = prices

            self.orderingChannel = orderingChannel

            self.status = status

            self.canReturn = canReturn

            self.bagId = bagId

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}
