

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var canReturn: Bool?

        public var shipmentId: String

        public var status: [String: Any]

        public var canCancel: Bool?

        public var totalShipmentBags: Int

        public var identifier: String

        public var lineNumber: Int

        public var bagId: Int

        public var groupId: String?

        public var appliedPromos: [String: Any]?

        public var parentPromoBags: [String: Any]?

        public var quantity: Int

        public var prices: Prices?

        public var orderingChannel: String

        public var gst: GSTDetailsData?

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case canReturn = "can_return"

            case shipmentId = "shipment_id"

            case status

            case canCancel = "can_cancel"

            case totalShipmentBags = "total_shipment_bags"

            case identifier

            case lineNumber = "line_number"

            case bagId = "bag_id"

            case groupId = "group_id"

            case appliedPromos = "applied_promos"

            case parentPromoBags = "parent_promo_bags"

            case quantity

            case prices

            case orderingChannel = "ordering_channel"

            case gst

            case item
        }

        public init(appliedPromos: [String: Any]? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, groupId: String? = nil, gst: GSTDetailsData? = nil, identifier: String, item: PlatformItem? = nil, lineNumber: Int, orderingChannel: String, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.canReturn = canReturn

            self.shipmentId = shipmentId

            self.status = status

            self.canCancel = canCancel

            self.totalShipmentBags = totalShipmentBags

            self.identifier = identifier

            self.lineNumber = lineNumber

            self.bagId = bagId

            self.groupId = groupId

            self.appliedPromos = appliedPromos

            self.parentPromoBags = parentPromoBags

            self.quantity = quantity

            self.prices = prices

            self.orderingChannel = orderingChannel

            self.gst = gst

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            identifier = try container.decode(String.self, forKey: .identifier)

            lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedPromos = try container.decode([String: Any].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(gst, forKey: .gst)

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
        public var canReturn: Bool?

        public var shipmentId: String

        public var status: [String: Any]

        public var canCancel: Bool?

        public var totalShipmentBags: Int

        public var identifier: String

        public var lineNumber: Int

        public var bagId: Int

        public var groupId: String?

        public var appliedPromos: [String: Any]?

        public var parentPromoBags: [String: Any]?

        public var quantity: Int

        public var prices: Prices?

        public var orderingChannel: String

        public var gst: GSTDetailsData?

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case canReturn = "can_return"

            case shipmentId = "shipment_id"

            case status

            case canCancel = "can_cancel"

            case totalShipmentBags = "total_shipment_bags"

            case identifier

            case lineNumber = "line_number"

            case bagId = "bag_id"

            case groupId = "group_id"

            case appliedPromos = "applied_promos"

            case parentPromoBags = "parent_promo_bags"

            case quantity

            case prices

            case orderingChannel = "ordering_channel"

            case gst

            case item
        }

        public init(appliedPromos: [String: Any]? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, groupId: String? = nil, gst: GSTDetailsData? = nil, identifier: String, item: PlatformItem? = nil, lineNumber: Int, orderingChannel: String, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.canReturn = canReturn

            self.shipmentId = shipmentId

            self.status = status

            self.canCancel = canCancel

            self.totalShipmentBags = totalShipmentBags

            self.identifier = identifier

            self.lineNumber = lineNumber

            self.bagId = bagId

            self.groupId = groupId

            self.appliedPromos = appliedPromos

            self.parentPromoBags = parentPromoBags

            self.quantity = quantity

            self.prices = prices

            self.orderingChannel = orderingChannel

            self.gst = gst

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            identifier = try container.decode(String.self, forKey: .identifier)

            lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedPromos = try container.decode([String: Any].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}
