

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var lineNumber: Int

        public var identifier: String

        public var groupId: String?

        public var status: [String: Any]

        public var canCancel: Bool?

        public var prices: Prices?

        public var bagId: Int

        public var canReturn: Bool?

        public var totalShipmentBags: Int

        public var parentPromoBags: [String: Any]?

        public var appliedPromos: [String: Any]?

        public var quantity: Int

        public var shipmentId: String

        public var gst: GSTDetailsData?

        public var orderingChannel: String

        public var item: PlatformItem?

        public enum CodingKeys: String, CodingKey {
            case lineNumber = "line_number"

            case identifier

            case groupId = "group_id"

            case status

            case canCancel = "can_cancel"

            case prices

            case bagId = "bag_id"

            case canReturn = "can_return"

            case totalShipmentBags = "total_shipment_bags"

            case parentPromoBags = "parent_promo_bags"

            case appliedPromos = "applied_promos"

            case quantity

            case shipmentId = "shipment_id"

            case gst

            case orderingChannel = "ordering_channel"

            case item
        }

        public init(appliedPromos: [String: Any]? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, groupId: String? = nil, gst: GSTDetailsData? = nil, identifier: String, item: PlatformItem? = nil, lineNumber: Int, orderingChannel: String, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.lineNumber = lineNumber

            self.identifier = identifier

            self.groupId = groupId

            self.status = status

            self.canCancel = canCancel

            self.prices = prices

            self.bagId = bagId

            self.canReturn = canReturn

            self.totalShipmentBags = totalShipmentBags

            self.parentPromoBags = parentPromoBags

            self.appliedPromos = appliedPromos

            self.quantity = quantity

            self.shipmentId = shipmentId

            self.gst = gst

            self.orderingChannel = orderingChannel

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            identifier = try container.decode(String.self, forKey: .identifier)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}
