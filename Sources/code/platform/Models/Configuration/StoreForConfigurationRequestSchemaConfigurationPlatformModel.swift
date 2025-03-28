

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: StoreForConfigurationRequestSchema
        Used By: Configuration
    */

    class StoreForConfigurationRequestSchema: Codable {
        
        
        public var conf: [AppStoreRules]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conf = "conf"
            
        }

        public init(conf: [AppStoreRules]? = nil) {
            
            self.conf = conf
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conf = try container.decode([AppStoreRules].self, forKey: .conf)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conf, forKey: .conf)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: StoreForConfigurationRequestSchema
        Used By: Configuration
    */

    class StoreForConfigurationRequestSchema: Codable {
        
        
        public var conf: [AppStoreRules]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conf = "conf"
            
        }

        public init(conf: [AppStoreRules]? = nil) {
            
            self.conf = conf
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conf = try container.decode([AppStoreRules].self, forKey: .conf)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conf, forKey: .conf)
            
            
        }
        
    }
}


