

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var gst: GSTDetailsData?

        public var item: PlatformItem?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var prices: Prices?

        public var shipmentId: String

        public var itemQuantity: Int

        public var orderingChannel: String

        public var bagId: Int

        public var status: [String: Any]

        public var currentStatus: BagCurrentStatus?

        public var totalShipmentBags: Int

        public enum CodingKeys: String, CodingKey {
            case gst

            case item

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case prices

            case shipmentId = "shipment_id"

            case itemQuantity = "item_quantity"

            case orderingChannel = "ordering_channel"

            case bagId = "bag_id"

            case status

            case currentStatus = "current_status"

            case totalShipmentBags = "total_shipment_bags"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: BagCurrentStatus? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.gst = gst

            self.item = item

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.prices = prices

            self.shipmentId = shipmentId

            self.itemQuantity = itemQuantity

            self.orderingChannel = orderingChannel

            self.bagId = bagId

            self.status = status

            self.currentStatus = currentStatus

            self.totalShipmentBags = totalShipmentBags
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
                item = try container.decode(PlatformItem.self, forKey: .item)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            bagId = try container.decode(Int.self, forKey: .bagId)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                currentStatus = try container.decode(BagCurrentStatus.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var gst: GSTDetailsData?

        public var item: PlatformItem?

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var prices: Prices?

        public var shipmentId: String

        public var itemQuantity: Int

        public var orderingChannel: String

        public var bagId: Int

        public var status: [String: Any]

        public var currentStatus: BagCurrentStatus?

        public var totalShipmentBags: Int

        public enum CodingKeys: String, CodingKey {
            case gst

            case item

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case prices

            case shipmentId = "shipment_id"

            case itemQuantity = "item_quantity"

            case orderingChannel = "ordering_channel"

            case bagId = "bag_id"

            case status

            case currentStatus = "current_status"

            case totalShipmentBags = "total_shipment_bags"
        }

        public init(bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: BagCurrentStatus? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.gst = gst

            self.item = item

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.prices = prices

            self.shipmentId = shipmentId

            self.itemQuantity = itemQuantity

            self.orderingChannel = orderingChannel

            self.bagId = bagId

            self.status = status

            self.currentStatus = currentStatus

            self.totalShipmentBags = totalShipmentBags
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
                item = try container.decode(PlatformItem.self, forKey: .item)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            bagId = try container.decode(Int.self, forKey: .bagId)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                currentStatus = try container.decode(BagCurrentStatus.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
        }
    }
}
