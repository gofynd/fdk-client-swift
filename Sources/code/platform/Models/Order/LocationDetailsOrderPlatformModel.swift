

import Foundation

public extension PlatformClient.Order {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var fulfillmentId: Int

        public var fulfillmentType: String

        public var articles: [ArticleDetails1]

        public enum CodingKeys: String, CodingKey {
            case fulfillmentId = "fulfillment_id"

            case fulfillmentType = "fulfillment_type"

            case articles
        }

        public init(articles: [ArticleDetails1], fulfillmentId: Int, fulfillmentType: String) {
            self.fulfillmentId = fulfillmentId

            self.fulfillmentType = fulfillmentType

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var fulfillmentId: Int

        public var fulfillmentType: String

        public var articles: [ArticleDetails1]

        public enum CodingKeys: String, CodingKey {
            case fulfillmentId = "fulfillment_id"

            case fulfillmentType = "fulfillment_type"

            case articles
        }

        public init(articles: [ArticleDetails1], fulfillmentId: Int, fulfillmentType: String) {
            self.fulfillmentId = fulfillmentId

            self.fulfillmentType = fulfillmentType

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
