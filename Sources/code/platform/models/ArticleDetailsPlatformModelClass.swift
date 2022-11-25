

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleDetails
         Used By: OrderManage
     */

    class ArticleDetails: Codable {
        public var quantity: Int

        public var attributes: [String: Any]

        public var brandId: Int

        public var dimension: [String: Any]

        public var id: String

        public var category: [String: Any]

        public var weight: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case quantity

            case attributes

            case brandId = "brand_id"

            case dimension

            case id = "_id"

            case category

            case weight
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            self.quantity = quantity

            self.attributes = attributes

            self.brandId = brandId

            self.dimension = dimension

            self.id = id

            self.category = category

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            attributes = try container.decode([String: Any].self, forKey: .attributes)

            brandId = try container.decode(Int.self, forKey: .brandId)

            dimension = try container.decode([String: Any].self, forKey: .dimension)

            id = try container.decode(String.self, forKey: .id)

            category = try container.decode([String: Any].self, forKey: .category)

            weight = try container.decode([String: Any].self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
