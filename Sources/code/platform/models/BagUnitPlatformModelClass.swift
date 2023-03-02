

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var bagId: Int

        public var orderingChannel: String

        public var shipmentId: String

        public var quantity: Int

        public var parentPromoBags: [String: Any]?

        public var status: [String: Any]

        public var canReturn: Bool?

        public var item: PlatformItem?

        public var canCancel: Bool?

        public var lineNumber: Int

        public var gst: GSTDetailsData?

        public var prices: Prices?

        public var totalShipmentBags: Int

        public var appliedPromos: [String: Any]?

        public var groupId: String?

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case bagId = "bag_id"

            case orderingChannel = "ordering_channel"

            case shipmentId = "shipment_id"

            case quantity

            case parentPromoBags = "parent_promo_bags"

            case status

            case canReturn = "can_return"

            case item

            case canCancel = "can_cancel"

            case lineNumber = "line_number"

            case gst

            case prices

            case totalShipmentBags = "total_shipment_bags"

            case appliedPromos = "applied_promos"

            case groupId = "group_id"

            case identifier
        }

        public init(appliedPromos: [String: Any]? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, groupId: String? = nil, gst: GSTDetailsData? = nil, identifier: String, item: PlatformItem? = nil, lineNumber: Int, orderingChannel: String, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.bagId = bagId

            self.orderingChannel = orderingChannel

            self.shipmentId = shipmentId

            self.quantity = quantity

            self.parentPromoBags = parentPromoBags

            self.status = status

            self.canReturn = canReturn

            self.item = item

            self.canCancel = canCancel

            self.lineNumber = lineNumber

            self.gst = gst

            self.prices = prices

            self.totalShipmentBags = totalShipmentBags

            self.appliedPromos = appliedPromos

            self.groupId = groupId

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagId = try container.decode(Int.self, forKey: .bagId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                appliedPromos = try container.decode([String: Any].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
