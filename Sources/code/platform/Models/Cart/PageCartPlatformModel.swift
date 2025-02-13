

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Page
        Used By: Cart
    */

    class Page: Codable {
        
        
        public var hasNext: Bool?
        
        public var itemTotal: Int?
        
        public var current: Int?
        
        public var nextId: String?
        
        public var page: Int?
        
        public var lastId: String?
        
        public var type: String
        
        public var size: Int?
        
        public var hasPrevious: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case current = "current"
            
            case nextId = "next_id"
            
            case page = "page"
            
            case lastId = "last_id"
            
            case type = "type"
            
            case size = "size"
            
            case hasPrevious = "has_previous"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, lastId: String? = nil, nextId: String? = nil, page: Int? = nil, size: Int? = nil, type: String) {
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
            self.current = current
            
            self.nextId = nextId
            
            self.page = page
            
            self.lastId = lastId
            
            self.type = type
            
            self.size = size
            
            self.hasPrevious = hasPrevious
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
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
                    current = try container.decode(Int.self, forKey: .current)
                
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
                    page = try container.decode(Int.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastId = try container.decode(String.self, forKey: .lastId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    size = try container.decode(Int.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(lastId, forKey: .lastId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
        }
        
    }
}


