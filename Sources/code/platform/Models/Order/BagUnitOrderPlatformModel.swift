

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagUnit
         Used By: Order
     */

    class BagUnit: Codable {
        public var shipmentId: String

        public var orderingChannel: String

        public var bagId: Int

        public var lineNumber: Int?

        public var prices: Prices?

        public var totalShipmentBags: Int

        public var itemQuantity: Int

        public var canReturn: Bool?

        public var status: [String: Any]

        public var canCancel: Bool?

        public var item: PlatformItem?

        public var article: PlatformArticle?

        public var gst: GSTDetailsData?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case orderingChannel = "ordering_channel"

            case bagId = "bag_id"

            case lineNumber = "line_number"

            case prices

            case totalShipmentBags = "total_shipment_bags"

            case itemQuantity = "item_quantity"

            case canReturn = "can_return"

            case status

            case canCancel = "can_cancel"

            case item

            case article

            case gst
        }

        public init(article: PlatformArticle? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, lineNumber: Int? = nil, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.shipmentId = shipmentId

            self.orderingChannel = orderingChannel

            self.bagId = bagId

            self.lineNumber = lineNumber

            self.prices = prices

            self.totalShipmentBags = totalShipmentBags

            self.itemQuantity = itemQuantity

            self.canReturn = canReturn

            self.status = status

            self.canCancel = canCancel

            self.item = item

            self.article = article

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(PlatformArticle.self, forKey: .article)

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

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(article, forKey: .article)

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
        public var shipmentId: String

        public var orderingChannel: String

        public var bagId: Int

        public var lineNumber: Int?

        public var prices: Prices?

        public var totalShipmentBags: Int

        public var itemQuantity: Int

        public var canReturn: Bool?

        public var status: [String: Any]

        public var canCancel: Bool?

        public var item: PlatformItem?

        public var article: PlatformArticle?

        public var gst: GSTDetailsData?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case orderingChannel = "ordering_channel"

            case bagId = "bag_id"

            case lineNumber = "line_number"

            case prices

            case totalShipmentBags = "total_shipment_bags"

            case itemQuantity = "item_quantity"

            case canReturn = "can_return"

            case status

            case canCancel = "can_cancel"

            case item

            case article

            case gst
        }

        public init(article: PlatformArticle? = nil, bagId: Int, canCancel: Bool? = nil, canReturn: Bool? = nil, gst: GSTDetailsData? = nil, item: PlatformItem? = nil, itemQuantity: Int, lineNumber: Int? = nil, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.shipmentId = shipmentId

            self.orderingChannel = orderingChannel

            self.bagId = bagId

            self.lineNumber = lineNumber

            self.prices = prices

            self.totalShipmentBags = totalShipmentBags

            self.itemQuantity = itemQuantity

            self.canReturn = canReturn

            self.status = status

            self.canCancel = canCancel

            self.item = item

            self.article = article

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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
                item = try container.decode(PlatformItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(PlatformArticle.self, forKey: .article)

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

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
