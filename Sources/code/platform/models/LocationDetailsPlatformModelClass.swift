

import Foundation
public extension PlatformClient {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var fulfillmentType: String

        public var articles: [ArticleDetails1]

        public var fulfillmentId: Int

        public enum CodingKeys: String, CodingKey {
            case fulfillmentType = "fulfillment_type"

            case articles

            case fulfillmentId = "fulfillment_id"
        }

        public init(articles: [ArticleDetails1], fulfillmentId: Int, fulfillmentType: String) {
            self.fulfillmentType = fulfillmentType

            self.articles = articles

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}
