

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateUpdateAppReturnConfig
        Used By: Catalog
    */

    class CreateUpdateAppReturnConfig: Codable {
        
        
        public var returnConfigLevel: String
        

        public enum CodingKeys: String, CodingKey {
            
            case returnConfigLevel = "return_config_level"
            
        }

        public init(returnConfigLevel: String) {
            
            self.returnConfigLevel = returnConfigLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                returnConfigLevel = try container.decode(String.self, forKey: .returnConfigLevel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
        
        
        public var returnConfigLevel: String
        

        public enum CodingKeys: String, CodingKey {
            
            case returnConfigLevel = "return_config_level"
            
        }

        public init(returnConfigLevel: String) {
            
            self.returnConfigLevel = returnConfigLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                returnConfigLevel = try container.decode(String.self, forKey: .returnConfigLevel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(returnConfigLevel, forKey: .returnConfigLevel)
            
            
        }
        
    }
}


