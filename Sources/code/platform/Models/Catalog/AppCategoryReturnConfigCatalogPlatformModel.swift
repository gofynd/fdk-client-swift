

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppCategoryReturnConfig
        Used By: Catalog
    */

    class AppCategoryReturnConfig: Codable {
        
        
        public var categoryId: Int
        
        public var returnConfig: ProductReturnConfigBaseSerializer
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryId = "category_id"
            
            case returnConfig = "return_config"
            
        }

        public init(categoryId: Int, returnConfig: ProductReturnConfigBaseSerializer) {
            
            self.categoryId = categoryId
            
            self.returnConfig = returnConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                categoryId = try container.decode(Int.self, forKey: .categoryId)
                
            
            
            
                returnConfig = try container.decode(ProductReturnConfigBaseSerializer.self, forKey: .returnConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppCategoryReturnConfig
        Used By: Catalog
    */

    class AppCategoryReturnConfig: Codable {
        
        
        public var categoryId: Int
        
        public var returnConfig: ProductReturnConfigBaseSerializer
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryId = "category_id"
            
            case returnConfig = "return_config"
            
        }

        public init(categoryId: Int, returnConfig: ProductReturnConfigBaseSerializer) {
            
            self.categoryId = categoryId
            
            self.returnConfig = returnConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                categoryId = try container.decode(Int.self, forKey: .categoryId)
                
            
            
            
                returnConfig = try container.decode(ProductReturnConfigBaseSerializer.self, forKey: .returnConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
        }
        
    }
}


