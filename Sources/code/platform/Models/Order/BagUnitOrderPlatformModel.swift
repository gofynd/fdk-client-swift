

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var itemQuantity: Int

        public var totalShipmentBags: Int

        public var shipmentId: String

        public var orderingChannel: String

        public var canReturn: Bool?

        public var bagId: Int

        public var canCancel: Bool?

        public var status: [String: Any]

        public var prices: Prices?

        public var item: PlatformItem?

        public var gst: GSTDetailsData?

        public enum CodingKeys: String, CodingKey {
            case itemQuantity = "item_quantity"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentId = "shipment_id"

            case orderingChannel = "ordering_channel"

            case canReturn = "can_return"

            case bagId = "bag_id"

            case canCancel = "can_cancel"

            case status

            case prices

            case item

            case gst
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.itemQuantity = itemQuantity

            self.totalShipmentBags = totalShipmentBags

            self.shipmentId = shipmentId

            self.orderingChannel = orderingChannel

            self.canReturn = canReturn

            self.bagId = bagId

            self.canCancel = canCancel

            self.status = status

            self.prices = prices

            self.item = item

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

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
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var itemQuantity: Int

        public var totalShipmentBags: Int

        public var shipmentId: String

        public var orderingChannel: String

        public var canReturn: Bool?

        public var bagId: Int

        public var canCancel: Bool?

        public var status: [String: Any]

        public var prices: Prices?

        public var item: PlatformItem?

        public var gst: GSTDetailsData?

        public enum CodingKeys: String, CodingKey {
            case itemQuantity = "item_quantity"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentId = "shipment_id"

            case orderingChannel = "ordering_channel"

            case canReturn = "can_return"

            case bagId = "bag_id"

            case canCancel = "can_cancel"

            case status

            case prices

            case item

            case gst
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.itemQuantity = itemQuantity

            self.totalShipmentBags = totalShipmentBags

            self.shipmentId = shipmentId

            self.orderingChannel = orderingChannel

            self.canReturn = canReturn

            self.bagId = bagId

            self.canCancel = canCancel

            self.status = status

            self.prices = prices

            self.item = item

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

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
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
