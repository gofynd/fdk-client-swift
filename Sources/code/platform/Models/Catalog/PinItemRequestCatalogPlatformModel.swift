

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PinItemRequest
        Used By: Catalog
    */

    class PinItemRequest: Codable {
        
        
        public var action: String
        
        public var itemId: String
        
        public var position: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case itemId = "item_id"
            
            case position = "position"
            
        }

        public init(action: String, itemId: String, position: Int) {
            
            self.action = action
            
            self.itemId = itemId
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                itemId = try container.decode(String.self, forKey: .itemId)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PinItemRequest
        Used By: Catalog
    */

    class PinItemRequest: Codable {
        
        
        public var action: String
        
        public var itemId: String
        
        public var position: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case itemId = "item_id"
            
            case position = "position"
            
        }

        public init(action: String, itemId: String, position: Int) {
            
            self.action = action
            
            self.itemId = itemId
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                itemId = try container.decode(String.self, forKey: .itemId)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}


