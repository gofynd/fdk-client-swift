

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionItemSchemaV2
        Used By: Catalog
    */

    class CollectionItemSchemaV2: Codable {
        
        
        public var action: String
        
        public var itemId: Int
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case itemId = "item_id"
            
            case priority = "priority"
            
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            
            self.action = action
            
            self.itemId = itemId
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionItemSchemaV2
        Used By: Catalog
    */

    class CollectionItemSchemaV2: Codable {
        
        
        public var action: String
        
        public var itemId: Int
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case itemId = "item_id"
            
            case priority = "priority"
            
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            
            self.action = action
            
            self.itemId = itemId
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}


