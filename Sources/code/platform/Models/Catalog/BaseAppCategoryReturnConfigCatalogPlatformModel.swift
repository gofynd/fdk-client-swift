

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BaseAppCategoryReturnConfig
        Used By: Catalog
    */

    class BaseAppCategoryReturnConfig: Codable {
        
        
        public var data: [AppCategoryReturnConfig]
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [AppCategoryReturnConfig]) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([AppCategoryReturnConfig].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
        
        
        public var data: [AppCategoryReturnConfig]
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [AppCategoryReturnConfig]) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([AppCategoryReturnConfig].self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


