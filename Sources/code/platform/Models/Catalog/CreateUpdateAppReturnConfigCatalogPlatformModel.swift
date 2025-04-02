

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateUpdateAppReturnConfig
        Used By: Catalog
    */

    class CreateUpdateAppReturnConfig: Codable {
        
        
        public var appId: String
        
        public var companyId: Int
        
        public var returnConfigLevel: String
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case companyId = "company_id"
            
            case returnConfigLevel = "return_config_level"
            
        }

        public init(appId: String, companyId: Int, returnConfigLevel: String) {
            
            self.appId = appId
            
            self.companyId = companyId
            
            self.returnConfigLevel = returnConfigLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                returnConfigLevel = try container.decode(String.self, forKey: .returnConfigLevel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(returnConfigLevel, forKey: .returnConfigLevel)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateUpdateAppReturnConfig
        Used By: Catalog
    */

    class CreateUpdateAppReturnConfig: Codable {
        
        
        public var appId: String
        
        public var companyId: Int
        
        public var returnConfigLevel: String
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case companyId = "company_id"
            
            case returnConfigLevel = "return_config_level"
            
        }

        public init(appId: String, companyId: Int, returnConfigLevel: String) {
            
            self.appId = appId
            
            self.companyId = companyId
            
            self.returnConfigLevel = returnConfigLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                returnConfigLevel = try container.decode(String.self, forKey: .returnConfigLevel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(returnConfigLevel, forKey: .returnConfigLevel)
            
            
        }
        
    }
}


