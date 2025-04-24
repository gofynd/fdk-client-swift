

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DeleteAppCategoryReturnConfig
        Used By: Catalog
    */

    class DeleteAppCategoryReturnConfig: Codable {
        
        
        public var categoryIds: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryIds = "category_ids"
            
        }

        public init(categoryIds: [Int]) {
            
            self.categoryIds = categoryIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                categoryIds = try container.decode([Int].self, forKey: .categoryIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DeleteAppCategoryReturnConfig
        Used By: Catalog
    */

    class DeleteAppCategoryReturnConfig: Codable {
        
        
        public var categoryIds: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryIds = "category_ids"
            
        }

        public init(categoryIds: [Int]) {
            
            self.categoryIds = categoryIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                categoryIds = try container.decode([Int].self, forKey: .categoryIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
        }
        
    }
}


