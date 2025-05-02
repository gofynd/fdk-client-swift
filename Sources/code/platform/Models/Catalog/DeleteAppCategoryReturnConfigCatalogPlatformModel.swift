

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DeleteAppCategoryReturnConfig
        Used By: Catalog
    */

    class DeleteAppCategoryReturnConfig: Codable {
        
        
        public var appId: String
        
        public var categoryIds: [Int]
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case categoryIds = "category_ids"
            
            case companyId = "company_id"
            
        }

        public init(appId: String, categoryIds: [Int], companyId: Int) {
            
            self.appId = appId
            
            self.categoryIds = categoryIds
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                categoryIds = try container.decode([Int].self, forKey: .categoryIds)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DeleteAppCategoryReturnConfig
        Used By: Catalog
    */

    class DeleteAppCategoryReturnConfig: Codable {
        
        
        public var appId: String
        
        public var categoryIds: [Int]
        
        public var companyId: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case categoryIds = "category_ids"
            
            case companyId = "company_id"
            
        }

        public init(appId: String, categoryIds: [Int], companyId: Int) {
            
            self.appId = appId
            
            self.categoryIds = categoryIds
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                categoryIds = try container.decode([Int].self, forKey: .categoryIds)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(categoryIds, forKey: .categoryIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}


