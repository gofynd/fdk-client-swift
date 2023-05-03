

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var shipments: Int

        public var fulfillmentId: Int

        public var dpId: Int?

        public var meta: [String: Any]?

        public var affiliateShipmentId: String

        public var articles: [ArticleDetails1]

        public var boxType: String?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case fulfillmentId = "fulfillment_id"

            case dpId = "dp_id"

            case meta

            case affiliateShipmentId = "affiliate_shipment_id"

            case articles

            case boxType = "box_type"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.dpId = dpId

            self.meta = meta

            self.affiliateShipmentId = affiliateShipmentId

            self.articles = articles

            self.boxType = boxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

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

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(boxType, forKey: .boxType)
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

        public var dpId: Int?

        public var meta: [String: Any]?

        public var affiliateShipmentId: String

        public var articles: [ArticleDetails1]

        public var boxType: String?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case fulfillmentId = "fulfillment_id"

            case dpId = "dp_id"

            case meta

            case affiliateShipmentId = "affiliate_shipment_id"

            case articles

            case boxType = "box_type"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.dpId = dpId

            self.meta = meta

            self.affiliateShipmentId = affiliateShipmentId

            self.articles = articles

            self.boxType = boxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

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

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(boxType, forKey: .boxType)
        }
    }
}
