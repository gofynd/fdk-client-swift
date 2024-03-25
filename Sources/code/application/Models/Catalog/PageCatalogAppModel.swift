

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: Page
        Used By: Catalog
    */
    class Page: Codable {
        
        public var nextId: String?
        
        public var size: Int?
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var total: Int?
        
        public var type: String
        
        public var itemTotal: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case nextId = "next_id"
            
            case size = "size"
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case total = "total"
            
            case type = "type"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, nextId: String? = nil, size: Int? = nil, total: Int? = nil, type: String) {
            
            self.nextId = nextId
            
            self.size = size
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.hasPrevious = hasPrevious
            
            self.total = total
            
            self.type = type
            
            self.itemTotal = itemTotal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                total = try container.decode(Int.self, forKey: .total)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            type = try container.decode(String.self, forKey: .type)
            
            
            
            
            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
}
