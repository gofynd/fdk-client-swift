

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryUpdateResponseSchema
        Used By: Catalog
    */

    class InventoryUpdateResponseSchema: Codable {
        
        
        public var items: [InventoryResponseItem]?
        
        public var message: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(items: [InventoryResponseItem]? = nil, message: String, success: Bool? = nil) {
            
            self.items = items
            
            self.message = message
            
            self.success = success
            
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
                
            
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryUpdateResponseSchema
        Used By: Catalog
    */

    class InventoryUpdateResponseSchema: Codable {
        
        
        public var items: [InventoryResponseItem]?
        
        public var message: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(items: [InventoryResponseItem]? = nil, message: String, success: Bool? = nil) {
            
            self.items = items
            
            self.message = message
            
            self.success = success
            
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
                
            
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


