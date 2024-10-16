

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationIntegrationType
        Used By: Catalog
    */

    class LocationIntegrationType: Codable {
        
        
        public var inventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
        }

        public init(inventory: String? = nil) {
            
            self.inventory = inventory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inventory = try container.decode(String.self, forKey: .inventory)
                
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



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LocationIntegrationType
        Used By: Catalog
    */

    class LocationIntegrationType: Codable {
        
        
        public var inventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
        }

        public init(inventory: String? = nil) {
            
            self.inventory = inventory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inventory = try container.decode(String.self, forKey: .inventory)
                
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


