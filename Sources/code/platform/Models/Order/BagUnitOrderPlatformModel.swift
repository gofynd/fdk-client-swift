

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var prices: Prices?

        public var bagId: Int

        public var canCancel: Bool?

        public var item: PlatformItem?

        public var itemQuantity: Int

        public var status: [String: Any]

        public var shipmentId: String

        public var canReturn: Bool?

        public var totalShipmentBags: Int

        public var currentStatus: BagCurrentStatus?

        public var gst: GSTDetailsData?

        public var orderingChannel: String

        public enum CodingKeys: String, CodingKey {
            case prices

            case bagId = "bag_id"

            case canCancel = "can_cancel"

            case item

            case itemQuantity = "item_quantity"

            case status

            case shipmentId = "shipment_id"

            case canReturn = "can_return"

            case totalShipmentBags = "total_shipment_bags"

            case currentStatus = "current_status"

            case gst

            case orderingChannel = "ordering_channel"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: BagCurrentStatus? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.prices = prices

            self.bagId = bagId

            self.canCancel = canCancel

            self.item = item

            self.itemQuantity = itemQuantity

            self.status = status

            self.shipmentId = shipmentId

            self.canReturn = canReturn

            self.totalShipmentBags = totalShipmentBags

            self.currentStatus = currentStatus

            self.gst = gst

            self.orderingChannel = orderingChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            status = try container.decode([String: Any].self, forKey: .status)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                currentStatus = try container.decode(BagCurrentStatus.self, forKey: .currentStatus)

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

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var prices: Prices?

        public var bagId: Int

        public var canCancel: Bool?

        public var item: PlatformItem?

        public var itemQuantity: Int

        public var status: [String: Any]

        public var shipmentId: String

        public var canReturn: Bool?

        public var totalShipmentBags: Int

        public var currentStatus: BagCurrentStatus?

        public var gst: GSTDetailsData?

        public var orderingChannel: String

        public enum CodingKeys: String, CodingKey {
            case prices

            case bagId = "bag_id"

            case canCancel = "can_cancel"

            case item

            case itemQuantity = "item_quantity"

            case status

            case shipmentId = "shipment_id"

            case canReturn = "can_return"

            case totalShipmentBags = "total_shipment_bags"

            case currentStatus = "current_status"

            case gst

            case orderingChannel = "ordering_channel"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: BagCurrentStatus? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.prices = prices

            self.bagId = bagId

            self.canCancel = canCancel

            self.item = item

            self.itemQuantity = itemQuantity

            self.status = status

            self.shipmentId = shipmentId

            self.canReturn = canReturn

            self.totalShipmentBags = totalShipmentBags

            self.currentStatus = currentStatus

            self.gst = gst

            self.orderingChannel = orderingChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            status = try container.decode([String: Any].self, forKey: .status)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                currentStatus = try container.decode(BagCurrentStatus.self, forKey: .currentStatus)

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

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
        }
    }
}
