

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var dpId: Int?

        public var shipments: Int

        public var affiliateShipmentId: String

        public var articles: [ArticleDetails1]

        public var fulfillmentId: Int

        public var meta: [String: Any]?

        public var boxType: String?

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case shipments

            case affiliateShipmentId = "affiliate_shipment_id"

            case articles

            case fulfillmentId = "fulfillment_id"

            case meta

            case boxType = "box_type"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.dpId = dpId

            self.shipments = shipments

            self.affiliateShipmentId = affiliateShipmentId

            self.articles = articles

            self.fulfillmentId = fulfillmentId

            self.meta = meta

            self.boxType = boxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(boxType, forKey: .boxType)
        }
    }
}
