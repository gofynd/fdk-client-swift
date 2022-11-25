

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails
         Used By: Order
     */

    class ArticleDetails: Codable {
        public var dimension: [String: Any]

        public var quantity: Int

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public var category: [String: Any]

        public var brandId: Int

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case dimension

            case quantity

            case weight

            case attributes

            case category

            case brandId = "brand_id"

            case id = "_id"
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.dimension = dimension

            self.quantity = quantity

            self.weight = weight

            self.attributes = attributes

            self.category = category

            self.brandId = brandId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            quantity = try container.decode(Int.self, forKey: .quantity)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            category = try container.decode([String: Any].self, forKey: .category)

            brandId = try container.decode(Int.self, forKey: .brandId)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
