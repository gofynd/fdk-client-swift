

import Foundation
public extension PlatformClient {
    /*
        Model: ArticleDetails1
        Used By: Order
    */

    class ArticleDetails1: Codable {
        
        
        public var quantity: Int
        
        public var category: [String: Any]
        
        public var id: String
        
        public var dimension: [String: Any]
        
        public var brandId: Int
        
        public var attributes: [String: Any]
        
        public var weight: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case category = "category"
            
            case id = "_id"
            
            case dimension = "dimension"
            
            case brandId = "brand_id"
            
            case attributes = "attributes"
            
            case weight = "weight"
            
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            
            self.quantity = quantity
            
            self.category = category
            
            self.id = id
            
            self.dimension = dimension
            
            self.brandId = brandId
            
            self.attributes = attributes
            
            self.weight = weight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                category = try container.decode([String: Any].self, forKey: .category)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                dimension = try container.decode([String: Any].self, forKey: .dimension)
                
            
            
            
                brandId = try container.decode(Int.self, forKey: .brandId)
                
            
            
            
                attributes = try container.decode([String: Any].self, forKey: .attributes)
                
            
            
            
                weight = try container.decode([String: Any].self, forKey: .weight)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}
