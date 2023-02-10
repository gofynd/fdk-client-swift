

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var dimension: [String: Any]

        public var attributes: [String: Any]

        public var quantity: Int

        public var category: [String: Any]

        public var weight: [String: Any]

        public var id: String

        public var brandId: Int

        public enum CodingKeys: String, CodingKey {
            case dimension

            case attributes

            case quantity

            case category

            case weight

            case id = "_id"

            case brandId = "brand_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.dimension = dimension

            self.attributes = attributes

            self.quantity = quantity

            self.category = category

            self.weight = weight

            self.id = id

            self.brandId = brandId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            quantity = try container.decode(Int.self, forKey: .quantity)

            category = try container.decode([String: Any].self, forKey: .category)

            weight = try container.decode([String: Any].self, forKey: .weight)

            id = try container.decode(String.self, forKey: .id)

            brandId = try container.decode(Int.self, forKey: .brandId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandId, forKey: .brandId)
        }
    }
}
