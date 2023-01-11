

import Foundation
public extension PlatformClient {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var fulfillmentId: Int

        public var articles: [ArticleDetails]

        public var fulfillmentType: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentId = "fulfillment_id"

            case articles

            case fulfillmentType = "fulfillment_type"
        }

        public init(articles: [ArticleDetails], fulfillmentId: Int, fulfillmentType: String) {
            self.fulfillmentId = fulfillmentId

            self.articles = articles

            self.fulfillmentType = fulfillmentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            articles = try container.decode([ArticleDetails].self, forKey: .articles)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
        }
    }
}
