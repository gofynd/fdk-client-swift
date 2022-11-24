

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails
         Used By: OrderManage
     */

    class ShipmentDetails: Codable {
        public var affiliateShipmentId: String

        public var meta: [String: Any]?

        public var shipments: Int

        public var articles: [ArticleDetails]

        public var boxType: String?

        public var dpId: Int?

        public var fulfillmentId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateShipmentId = "affiliate_shipment_id"

            case meta

            case shipments

            case articles

            case boxType = "box_type"

            case dpId = "dp_id"

            case fulfillmentId = "fulfillment_id"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.affiliateShipmentId = affiliateShipmentId

            self.meta = meta

            self.shipments = shipments

            self.articles = articles

            self.boxType = boxType

            self.dpId = dpId

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode(Int.self, forKey: .shipments)

            articles = try container.decode([ArticleDetails].self, forKey: .articles)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

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

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}
