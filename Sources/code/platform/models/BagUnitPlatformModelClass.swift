

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var orderingChannel: String

        public var totalShipmentBags: Int

        public var status: [String: Any]

        public var parentPromoBags: [String: Any]?

        public var identifier: String

        public var canReturn: Bool?

        public var shipmentId: String

        public var canCancel: Bool?

        public var prices: Prices?

        public var appliedPromos: [String: Any]?

        public var item: PlatformItem?

        public var bagId: Int

        public var lineNumber: Int

        public var gst: GSTDetailsData?

        public var quantity: Int

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case totalShipmentBags = "total_shipment_bags"

            case status

            case parentPromoBags = "parent_promo_bags"

            case identifier

            case canReturn = "can_return"

            case shipmentId = "shipment_id"

            case canCancel = "can_cancel"

            case prices

            case appliedPromos = "applied_promos"

            case item

            case bagId = "bag_id"

            case lineNumber = "line_number"

            case gst

            case quantity

            case groupId = "group_id"
        }

        public init(appliedPromos: [String: Any]? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, groupId: String? = nil, gst: GSTDetailsData? = nil, identifier: String, item: PlatformItem? = nil, lineNumber: Int, orderingChannel: String, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.orderingChannel = orderingChannel

            self.totalShipmentBags = totalShipmentBags

            self.status = status

            self.parentPromoBags = parentPromoBags

            self.identifier = identifier

            self.canReturn = canReturn

            self.shipmentId = shipmentId

            self.canCancel = canCancel

            self.prices = prices

            self.appliedPromos = appliedPromos

            self.item = item

            self.bagId = bagId

            self.lineNumber = lineNumber

            self.gst = gst

            self.quantity = quantity

            self.groupId = groupId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

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

            do {
                appliedPromos = try container.decode([String: Any].self, forKey: .appliedPromos)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(groupId, forKey: .groupId)
        }
    }
}
