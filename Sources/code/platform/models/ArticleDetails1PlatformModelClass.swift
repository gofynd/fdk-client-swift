

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails1
         Used By: Order
     */

    class ArticleDetails1: Codable {
        public var category: [String: Any]

        public var brandId: Int

        public var weight: [String: Any]

        public var id: String

        public var attributes: [String: Any]

        public var dimension: [String: Any]

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case category

            case brandId = "brand_id"

            case weight

            case id = "_id"

            case attributes

            case dimension

            case quantity
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.category = category

            self.brandId = brandId

            self.weight = weight

            self.id = id

            self.attributes = attributes

            self.dimension = dimension

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            category = try container.decode([String: Any].self, forKey: .category)

            brandId = try container.decode(Int.self, forKey: .brandId)

            weight = try container.decode([String: Any].self, forKey: .weight)

            id = try container.decode(String.self, forKey: .id)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}