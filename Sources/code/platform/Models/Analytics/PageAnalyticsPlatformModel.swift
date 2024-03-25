

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: Page
        Used By: Analytics
    */

    class Page: Codable {
        
        
        public var current: Int?
        
        public var size: Int?
        
        public var itemTotal: Int?
        
        public var totalPage: Int?
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case totalPage = "total_page"
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case type = "type"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, size: Int? = nil, totalPage: Int? = nil, type: String? = nil) {
            
            self.current = current
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.totalPage = totalPage
            
            self.hasNext = hasNext
            
            self.hasPrevious = hasPrevious
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    current = try container.decode(Int.self, forKey: .current)
                
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
                    itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalPage = try container.decode(Int.self, forKey: .totalPage)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(totalPage, forKey: .totalPage)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


