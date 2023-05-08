

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var boxType: String?

        public var articles: [ArticleDetails1]

        public var meta: [String: Any]?

        public var fulfillmentId: Int

        public var dpId: Int?

        public var affiliateShipmentId: String

        public var shipments: Int

        public enum CodingKeys: String, CodingKey {
            case boxType = "box_type"

            case articles

            case meta

            case fulfillmentId = "fulfillment_id"

            case dpId = "dp_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case shipments
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.boxType = boxType

            self.articles = articles

            self.meta = meta

            self.fulfillmentId = fulfillmentId

            self.dpId = dpId

            self.affiliateShipmentId = affiliateShipmentId

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            shipments = try container.decode(Int.self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var boxType: String?

        public var articles: [ArticleDetails1]

        public var meta: [String: Any]?

        public var fulfillmentId: Int

        public var dpId: Int?

        public var affiliateShipmentId: String

        public var shipments: Int

        public enum CodingKeys: String, CodingKey {
            case boxType = "box_type"

            case articles

            case meta

            case fulfillmentId = "fulfillment_id"

            case dpId = "dp_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case shipments
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.boxType = boxType

            self.articles = articles

            self.meta = meta

            self.fulfillmentId = fulfillmentId

            self.dpId = dpId

            self.affiliateShipmentId = affiliateShipmentId

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            shipments = try container.decode(Int.self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
