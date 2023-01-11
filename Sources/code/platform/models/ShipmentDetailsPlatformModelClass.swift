

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var affiliateShipmentId: String

        public var shipments: Int

        public var fulfillmentId: Int

        public var articles: [ArticleDetails]

        public var meta: [String: Any]?

        public var dpId: Int?

        public var boxType: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateShipmentId = "affiliate_shipment_id"

            case shipments

            case fulfillmentId = "fulfillment_id"

            case articles

            case meta

            case dpId = "dp_id"

            case boxType = "box_type"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.affiliateShipmentId = affiliateShipmentId

            self.shipments = shipments

            self.fulfillmentId = fulfillmentId

            self.articles = articles

            self.meta = meta

            self.dpId = dpId

            self.boxType = boxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            shipments = try container.decode(Int.self, forKey: .shipments)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            articles = try container.decode([ArticleDetails].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

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

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encode(boxType, forKey: .boxType)
        }
    }
}
