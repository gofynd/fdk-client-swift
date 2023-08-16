

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationCategoryJson
        Used By: Catalog
    */

    class ApplicationCategoryJson: Codable {
        
        
        public var customJson: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
        }

        public init(customJson: [String: Any]) {
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                customJson = try container.decode([String: Any].self, forKey: .customJson)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationCategoryJson
        Used By: Catalog
    */

    class ApplicationCategoryJson: Codable {
        
        
        public var customJson: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
        }

        public init(customJson: [String: Any]) {
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                customJson = try container.decode([String: Any].self, forKey: .customJson)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}


