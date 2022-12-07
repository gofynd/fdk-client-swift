

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails
         Used By: Order
     */

    class ArticleDetails: Codable {
        public var weight: [String: Any]

        public var id: String

        public var dimension: [String: Any]

        public var category: [String: Any]

        public var attributes: [String: Any]

        public var brandId: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case weight

            case id = "_id"

            case dimension

            case category

            case attributes

            case brandId = "brand_id"

            case quantity
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.weight = weight

            self.id = id

            self.dimension = dimension

            self.category = category

            self.attributes = attributes

            self.brandId = brandId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode([String: Any].self, forKey: .weight)

            id = try container.decode(String.self, forKey: .id)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            category = try container.decode([String: Any].self, forKey: .category)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            brandId = try container.decode(Int.self, forKey: .brandId)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
