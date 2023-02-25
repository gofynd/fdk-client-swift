

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var item: PlatformItem?

        public var canCancel: Bool?

        public var parentPromoBags: [String: Any]?

        public var bagId: Int

        public var canReturn: Bool?

        public var totalShipmentBags: Int

        public var orderingChannel: String

        public var groupId: String?

        public var appliedPromos: [String: Any]?

        public var prices: Prices?

        public var lineNumber: Int

        public var quantity: Int

        public var status: [String: Any]

        public var gst: GSTDetailsData?

        public var identifier: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case item

            case canCancel = "can_cancel"

            case parentPromoBags = "parent_promo_bags"

            case bagId = "bag_id"

            case canReturn = "can_return"

            case totalShipmentBags = "total_shipment_bags"

            case orderingChannel = "ordering_channel"

            case groupId = "group_id"

            case appliedPromos = "applied_promos"

            case prices

            case lineNumber = "line_number"

            case quantity

            case status

            case gst

            case identifier

            case shipmentId = "shipment_id"
        }

        public init(appliedPromos: [String: Any]? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, groupId: String? = nil, gst: GSTDetailsData? = nil, identifier: String, item: PlatformItem? = nil, lineNumber: Int, orderingChannel: String, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Int, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.item = item

            self.canCancel = canCancel

            self.parentPromoBags = parentPromoBags

            self.bagId = bagId

            self.canReturn = canReturn

            self.totalShipmentBags = totalShipmentBags

            self.orderingChannel = orderingChannel

            self.groupId = groupId

            self.appliedPromos = appliedPromos

            self.prices = prices

            self.lineNumber = lineNumber

            self.quantity = quantity

            self.status = status

            self.gst = gst

            self.identifier = identifier

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

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

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
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            quantity = try container.decode(Int.self, forKey: .quantity)

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                gst = try container.decode(GSTDetailsData.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
