

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ArticleDetails
        Used By: Order
    */

    class ArticleDetails: Codable {
        
        
        public var id: String
        
        public var brandId: Int
        
        public var dimension: [String: Any]
        
        public var category: [String: Any]
        
        public var weight: [String: Any]
        
        public var attributes: [String: Any]
        
        public var quantity: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case brandId = "brand_id"
            
            case dimension = "dimension"
            
            case category = "category"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case quantity = "quantity"
            
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            
            self.id = id
            
            self.brandId = brandId
            
            self.dimension = dimension
            
            self.category = category
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.quantity = quantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                brandId = try container.decode(Int.self, forKey: .brandId)
                
            
            
            
                dimension = try container.decode([String: Any].self, forKey: .dimension)
                
            
            
            
                category = try container.decode([String: Any].self, forKey: .category)
                
            
            
            
                weight = try container.decode([String: Any].self, forKey: .weight)
                
            
            
            
                attributes = try container.decode([String: Any].self, forKey: .attributes)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ArticleDetails
        Used By: Order
    */

    class ArticleDetails: Codable {
        
        
        public var id: String
        
        public var brandId: Int
        
        public var dimension: [String: Any]
        
        public var category: [String: Any]
        
        public var weight: [String: Any]
        
        public var attributes: [String: Any]
        
        public var quantity: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case brandId = "brand_id"
            
            case dimension = "dimension"
            
            case category = "category"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case quantity = "quantity"
            
        }

        public init(attributes: [String: Any], brandId: Int, category: [String: Any], dimension: [String: Any], quantity: Int, weight: [String: Any], id: String) {
            
            self.id = id
            
            self.brandId = brandId
            
            self.dimension = dimension
            
            self.category = category
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.quantity = quantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                brandId = try container.decode(Int.self, forKey: .brandId)
                
            
            
            
                dimension = try container.decode([String: Any].self, forKey: .dimension)
                
            
            
            
                category = try container.decode([String: Any].self, forKey: .category)
                
            
            
            
                weight = try container.decode([String: Any].self, forKey: .weight)
                
            
            
            
                attributes = try container.decode([String: Any].self, forKey: .attributes)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}


