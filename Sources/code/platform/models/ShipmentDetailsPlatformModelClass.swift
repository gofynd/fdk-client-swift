

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var articles: [ArticleDetails1]

        public var shipments: Int

        public var boxType: String?

        public var fulfillmentId: Int

        public var meta: [String: Any]?

        public var affiliateShipmentId: String

        public var dpId: Int?

        public enum CodingKeys: String, CodingKey {
            case articles

            case shipments

            case boxType = "box_type"

            case fulfillmentId = "fulfillment_id"

            case meta

            case affiliateShipmentId = "affiliate_shipment_id"

            case dpId = "dp_id"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.articles = articles

            self.shipments = shipments

            self.boxType = boxType

            self.fulfillmentId = fulfillmentId

            self.meta = meta

            self.affiliateShipmentId = affiliateShipmentId

            self.dpId = dpId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            shipments = try container.decode(Int.self, forKey: .shipments)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(dpId, forKey: .dpId)
        }
    }
}
