

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var item: PlatformItem?

        public var orderingChannel: String

        public var gst: GSTDetailsData?

        public var status: [String: Any]

        public var itemQuantity: Int

        public var canCancel: Bool?

        public var canReturn: Bool?

        public var prices: Prices?

        public var totalShipmentBags: Int

        public var bagId: Int

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case item

            case orderingChannel = "ordering_channel"

            case gst

            case status

            case itemQuantity = "item_quantity"

            case canCancel = "can_cancel"

            case canReturn = "can_return"

            case prices

            case totalShipmentBags = "total_shipment_bags"

            case bagId = "bag_id"

            case shipmentId = "shipment_id"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.item = item

            self.orderingChannel = orderingChannel

            self.gst = gst

            self.status = status

            self.itemQuantity = itemQuantity

            self.canCancel = canCancel

            self.canReturn = canReturn

            self.prices = prices

            self.totalShipmentBags = totalShipmentBags

            self.bagId = bagId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var item: PlatformItem?

        public var orderingChannel: String

        public var gst: GSTDetailsData?

        public var status: [String: Any]

        public var itemQuantity: Int

        public var canCancel: Bool?

        public var canReturn: Bool?

        public var prices: Prices?

        public var totalShipmentBags: Int

        public var bagId: Int

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case item

            case orderingChannel = "ordering_channel"

            case gst

            case status

            case itemQuantity = "item_quantity"

            case canCancel = "can_cancel"

            case canReturn = "can_return"

            case prices

            case totalShipmentBags = "total_shipment_bags"

            case bagId = "bag_id"

            case shipmentId = "shipment_id"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.item = item

            self.orderingChannel = orderingChannel

            self.gst = gst

            self.status = status

            self.itemQuantity = itemQuantity

            self.canCancel = canCancel

            self.canReturn = canReturn

            self.prices = prices

            self.totalShipmentBags = totalShipmentBags

            self.bagId = bagId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            bagId = try container.decode(Int.self, forKey: .bagId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
