

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ParentItemIdentifiers
        Used By: Cart
    */

    class ParentItemIdentifiers: Codable {
        
        
        public var identifier: String?
        
        public var parentItemSize: String?
        
        public var parentItemId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case parentItemSize = "parent_item_size"
            
            case parentItemId = "parent_item_id"
            
        }

        public init(identifier: String? = nil, parentItemId: String? = nil, parentItemSize: String? = nil) {
            
            self.identifier = identifier
            
            self.parentItemSize = parentItemSize
            
            self.parentItemId = parentItemId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemId = try container.decode(String.self, forKey: .parentItemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
            
            
            
            
            try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
            
            
        }
        
    }
}


