

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryUpdateResponse
        Used By: Catalog
    */

    class InventoryUpdateResponse: Codable {
        
        
        public var items: [InventoryResponseItem]?
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case message = "message"
            
        }

        public init(items: [InventoryResponseItem]? = nil, message: String) {
            
            self.items = items
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([InventoryResponseItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryUpdateResponse
        Used By: Catalog
    */

    class InventoryUpdateResponse: Codable {
        
        
        public var items: [InventoryResponseItem]?
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case message = "message"
            
        }

        public init(items: [InventoryResponseItem]? = nil, message: String) {
            
            self.items = items
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([InventoryResponseItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


