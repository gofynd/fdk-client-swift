

import Foundation

public extension PlatformClient.Order {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var articles: [ArticleDetails1]

        public var fulfillmentId: Int

        public var fulfillmentType: String

        public enum CodingKeys: String, CodingKey {
            case articles

            case fulfillmentId = "fulfillment_id"

            case fulfillmentType = "fulfillment_type"
        }

        public init(articles: [ArticleDetails1], fulfillmentId: Int, fulfillmentType: String) {
            self.articles = articles

            self.fulfillmentId = fulfillmentId

            self.fulfillmentType = fulfillmentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: LocationDetails
         Used By: Order
     */

    class LocationDetails: Codable {
        public var articles: [ArticleDetails1]

        public var fulfillmentId: Int

        public var fulfillmentType: String

        public enum CodingKeys: String, CodingKey {
            case articles

            case fulfillmentId = "fulfillment_id"

            case fulfillmentType = "fulfillment_type"
        }

        public init(articles: [ArticleDetails1], fulfillmentId: Int, fulfillmentType: String) {
            self.articles = articles

            self.fulfillmentId = fulfillmentId

            self.fulfillmentType = fulfillmentType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
        }
    }
}
