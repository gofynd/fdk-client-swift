

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails
         Used By: OrderManage
     */

    class ArticleDetails: Codable {
        public var attributes: [String: Any]

        public var brandId: Int

        public var category: [String: Any]

        public var dimension: [String: Any]

        public var quantity: Int

        public var id: String

        public var weight: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case attributes

            case brandId = "brand_id"

            case category

            case dimension

            case quantity

            case id = "_id"

            case weight
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.attributes = attributes

            self.brandId = brandId

            self.category = category

            self.dimension = dimension

            self.quantity = quantity

            self.id = id

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            brandId = try container.decode(Int.self, forKey: .brandId)

            category = try container.decode([String: Any].self, forKey: .category)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            weight = try container.decode([String: Any].self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
