

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AddInventoryRequestPayload
        Used By: Catalog
    */

    class AddInventoryRequestPayload: Codable {
        
        
        public var sizes: [InventoryResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
        }

        public init(sizes: [InventoryResponseSchema]? = nil) {
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizes = try container.decode([InventoryResponseSchema].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AddInventoryRequestPayload
        Used By: Catalog
    */

    class AddInventoryRequestPayload: Codable {
        
        
        public var sizes: [InventoryResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
        }

        public init(sizes: [InventoryResponseSchema]? = nil) {
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizes = try container.decode([InventoryResponseSchema].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}


