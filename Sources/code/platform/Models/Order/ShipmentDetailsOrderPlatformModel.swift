

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var shipments: Int

        public var fulfillmentId: Int

        public var affiliateShipmentId: String

        public var dpId: Int?

        public var meta: [String: Any]?

        public var boxType: String?

        public var articles: [ArticleDetails1]

        public enum CodingKeys: String, CodingKey {
            case shipments

            case fulfillmentId = "fulfillment_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case dpId = "dp_id"

            case meta

            case boxType = "box_type"

            case articles
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.affiliateShipmentId = affiliateShipmentId

            self.dpId = dpId

            self.meta = meta

            self.boxType = boxType

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var shipments: Int

        public var fulfillmentId: Int

        public var affiliateShipmentId: String

        public var dpId: Int?

        public var meta: [String: Any]?

        public var boxType: String?

        public var articles: [ArticleDetails1]

        public enum CodingKeys: String, CodingKey {
            case shipments

            case fulfillmentId = "fulfillment_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case dpId = "dp_id"

            case meta

            case boxType = "box_type"

            case articles
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.affiliateShipmentId = affiliateShipmentId

            self.dpId = dpId

            self.meta = meta

            self.boxType = boxType

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
