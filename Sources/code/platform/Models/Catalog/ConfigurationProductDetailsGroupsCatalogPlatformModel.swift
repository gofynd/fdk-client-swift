

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ConfigurationProductDetailsGroups
        Used By: Catalog
    */

    class ConfigurationProductDetailsGroups: Codable {
        
        
        public var config: [ConfigurationProductDetailsConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
        }

        public init(config: [ConfigurationProductDetailsConfig]? = nil) {
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    config = try container.decode([ConfigurationProductDetailsConfig].self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ConfigurationProductDetailsGroups
        Used By: Catalog
    */

    class ConfigurationProductDetailsGroups: Codable {
        
        
        public var config: [ConfigurationProductDetailsConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
        }

        public init(config: [ConfigurationProductDetailsConfig]? = nil) {
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    config = try container.decode([ConfigurationProductDetailsConfig].self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}


