

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ParentItemIdentifiers
        Used By: Serviceability
    */

    class ParentItemIdentifiers: Codable {
        
        
        public var identifier: String
        
        public var parentItemId: String
        
        public var parentItemSize: String
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case parentItemId = "parent_item_id"
            
            case parentItemSize = "parent_item_size"
            
        }

        public init(identifier: String, parentItemId: String, parentItemSize: String) {
            
            self.identifier = identifier
            
            self.parentItemId = parentItemId
            
            self.parentItemSize = parentItemSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                parentItemId = try container.decode(String.self, forKey: .parentItemId)
                
            
            
            
                parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
            
            
            
            
            try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ParentItemIdentifiers
        Used By: Serviceability
    */

    class ParentItemIdentifiers: Codable {
        
        
        public var identifier: String
        
        public var parentItemId: String
        
        public var parentItemSize: String
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case parentItemId = "parent_item_id"
            
            case parentItemSize = "parent_item_size"
            
        }

        public init(identifier: String, parentItemId: String, parentItemSize: String) {
            
            self.identifier = identifier
            
            self.parentItemId = parentItemId
            
            self.parentItemSize = parentItemSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                parentItemId = try container.decode(String.self, forKey: .parentItemId)
                
            
            
            
                parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
            
            
            
            
            try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
            
            
        }
        
    }
}


