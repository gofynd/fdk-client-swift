

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PageDetails
        Used By: Order
    */

    class PageDetails: Codable {
        
        
        public var itemTotal: Int
        
        public var current: Int?
        
        public var size: Int?
        
        public var type: String?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case current = "current"
            
            case size = "size"
            
            case type = "type"
            
            case hasNext = "has_next"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, itemTotal: Int, size: Int? = nil, type: String? = nil) {
            
            self.itemTotal = itemTotal
            
            self.current = current
            
            self.size = size
            
            self.type = type
            
            self.hasNext = hasNext
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
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
                    type = try container.decode(String.self, forKey: .type)
                
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
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PageDetails
        Used By: Order
    */

    class PageDetails: Codable {
        
        
        public var itemTotal: Int
        
        public var current: Int?
        
        public var size: Int?
        
        public var type: String?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case current = "current"
            
            case size = "size"
            
            case type = "type"
            
            case hasNext = "has_next"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, itemTotal: Int, size: Int? = nil, type: String? = nil) {
            
            self.itemTotal = itemTotal
            
            self.current = current
            
            self.size = size
            
            self.type = type
            
            self.hasNext = hasNext
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
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
                    type = try container.decode(String.self, forKey: .type)
                
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
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}


