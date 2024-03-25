

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: Page
        Used By: CompanyProfile
    */

    class Page: Codable {
        
        
        public var hasPrevious: Bool?
        
        public var itemTotal: Int?
        
        public var nextId: String?
        
        public var size: Int?
        
        public var type: String
        
        public var current: Int?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case hasPrevious = "has_previous"
            
            case itemTotal = "item_total"
            
            case nextId = "next_id"
            
            case size = "size"
            
            case type = "type"
            
            case current = "current"
            
            case hasNext = "has_next"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, nextId: String? = nil, size: Int? = nil, type: String) {
            
            self.hasPrevious = hasPrevious
            
            self.itemTotal = itemTotal
            
            self.nextId = nextId
            
            self.size = size
            
            self.type = type
            
            self.current = current
            
            self.hasNext = hasNext
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextId = try container.decode(String.self, forKey: .nextId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(Int.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    current = try container.decode(Int.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}




