

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BaseAppCategoryReturnConfig
        Used By: Catalog
    */

    class BaseAppCategoryReturnConfig: Codable {
        
        
        public var appId: String
        
        public var companyId: Int
        
        public var data: [AppCategoryReturnConfig]
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case companyId = "company_id"
            
            case data = "data"
            
        }

        public init(appId: String, companyId: Int, data: [AppCategoryReturnConfig]) {
            
            self.appId = appId
            
            self.companyId = companyId
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                data = try container.decode([AppCategoryReturnConfig].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BaseAppCategoryReturnConfig
        Used By: Catalog
    */

    class BaseAppCategoryReturnConfig: Codable {
        
        
        public var appId: String
        
        public var companyId: Int
        
        public var data: [AppCategoryReturnConfig]
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case companyId = "company_id"
            
            case data = "data"
            
        }

        public init(appId: String, companyId: Int, data: [AppCategoryReturnConfig]) {
            
            self.appId = appId
            
            self.companyId = companyId
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                data = try container.decode([AppCategoryReturnConfig].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


