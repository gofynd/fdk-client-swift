

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: OwnerAppConfig
        Used By: Configuration
    */

    class OwnerAppConfig: Codable {
        
        
        public var inventory: OwnerAppInventoryConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
        }

        public init(inventory: OwnerAppInventoryConfig? = nil) {
            
            self.inventory = inventory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inventory = try container.decode(OwnerAppInventoryConfig.self, forKey: .inventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: OwnerAppConfig
        Used By: Configuration
    */

    class OwnerAppConfig: Codable {
        
        
        public var inventory: OwnerAppInventoryConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
        }

        public init(inventory: OwnerAppInventoryConfig? = nil) {
            
            self.inventory = inventory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inventory = try container.decode(OwnerAppInventoryConfig.self, forKey: .inventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            
        }
        
    }
}


