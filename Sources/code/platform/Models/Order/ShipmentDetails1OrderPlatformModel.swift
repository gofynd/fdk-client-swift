

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var meta: [String: Any]?

        public var articles: [ArticleDetails1]

        public var dpId: Int?

        public var shipments: Int

        public var affiliateShipmentId: String

        public var fulfillmentId: Int

        public var boxType: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case articles

            case dpId = "dp_id"

            case shipments

            case affiliateShipmentId = "affiliate_shipment_id"

            case fulfillmentId = "fulfillment_id"

            case boxType = "box_type"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.meta = meta

            self.articles = articles

            self.dpId = dpId

            self.shipments = shipments

            self.affiliateShipmentId = affiliateShipmentId

            self.fulfillmentId = fulfillmentId

            self.boxType = boxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(boxType, forKey: .boxType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var meta: [String: Any]?

        public var articles: [ArticleDetails1]

        public var dpId: Int?

        public var shipments: Int

        public var affiliateShipmentId: String

        public var fulfillmentId: Int

        public var boxType: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case articles

            case dpId = "dp_id"

            case shipments

            case affiliateShipmentId = "affiliate_shipment_id"

            case fulfillmentId = "fulfillment_id"

            case boxType = "box_type"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.meta = meta

            self.articles = articles

            self.dpId = dpId

            self.shipments = shipments

            self.affiliateShipmentId = affiliateShipmentId

            self.fulfillmentId = fulfillmentId

            self.boxType = boxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(boxType, forKey: .boxType)
        }
    }
}