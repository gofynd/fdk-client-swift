

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var boxType: String?

        public var affiliateShipmentId: String

        public var dpId: Int?

        public var shipments: Int

        public var fulfillmentId: Int

        public var articles: [ArticleDetails1]

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case boxType = "box_type"

            case affiliateShipmentId = "affiliate_shipment_id"

            case dpId = "dp_id"

            case shipments

            case fulfillmentId = "fulfillment_id"

            case articles

            case meta
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.boxType = boxType

            self.affiliateShipmentId = affiliateShipmentId

            self.dpId = dpId

            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.articles = articles

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var boxType: String?

        public var affiliateShipmentId: String

        public var dpId: Int?

        public var shipments: Int

        public var fulfillmentId: Int

        public var articles: [ArticleDetails1]

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case boxType = "box_type"

            case affiliateShipmentId = "affiliate_shipment_id"

            case dpId = "dp_id"

            case shipments

            case fulfillmentId = "fulfillment_id"

            case articles

            case meta
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.boxType = boxType

            self.affiliateShipmentId = affiliateShipmentId

            self.dpId = dpId

            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.articles = articles

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
