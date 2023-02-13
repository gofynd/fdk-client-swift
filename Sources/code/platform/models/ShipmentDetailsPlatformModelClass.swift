

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails
         Used By: OrderManage
     */

    class ShipmentDetails: Codable {
        public var dpId: Int?

        public var affiliateShipmentId: String

        public var boxType: String?

        public var fulfillmentId: Int

        public var meta: [String: Any]?

        public var articles: [ArticleDetails]

        public var shipments: Int

        public enum CodingKeys: String, CodingKey {
            case dpId = "dp_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case boxType = "box_type"

            case fulfillmentId = "fulfillment_id"

            case meta

            case articles

            case shipments
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.dpId = dpId

            self.affiliateShipmentId = affiliateShipmentId

            self.boxType = boxType

            self.fulfillmentId = fulfillmentId

            self.meta = meta

            self.articles = articles

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

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

            articles = try container.decode([ArticleDetails].self, forKey: .articles)

            shipments = try container.decode(Int.self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
