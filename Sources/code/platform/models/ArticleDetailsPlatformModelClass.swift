

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails
         Used By: Order
     */

    class ArticleDetails: Codable {
        public var id: String

        public var quantity: Int

        public var weight: [String: Any]

        public var attributes: [String: Any]

        public var dimension: [String: Any]

        public var brandId: Int

        public var category: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case quantity

            case weight

            case attributes

            case dimension

            case brandId = "brand_id"

            case category
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.id = id

            self.quantity = quantity

            self.weight = weight

            self.attributes = attributes

            self.dimension = dimension

            self.brandId = brandId

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            weight = try container.decode([String: Any].self, forKey: .weight)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            brandId = try container.decode(Int.self, forKey: .brandId)

            category = try container.decode([String: Any].self, forKey: .category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
