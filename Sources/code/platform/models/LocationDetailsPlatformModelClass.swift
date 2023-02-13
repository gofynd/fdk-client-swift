

import Foundation
public extension PlatformClient {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var articles: [ArticleDetails1]

        public var fulfillmentType: String

        public var fulfillmentId: Int

        public enum CodingKeys: String, CodingKey {
            case articles

            case fulfillmentType = "fulfillment_type"

            case fulfillmentId = "fulfillment_id"
        }

        public init(articles: [ArticleDetails1], fulfillmentId: Int, fulfillmentType: String) {
            self.articles = articles

            self.fulfillmentType = fulfillmentType

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}
