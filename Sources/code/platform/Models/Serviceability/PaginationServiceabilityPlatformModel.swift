

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Pagination
        Used By: Serviceability
    */

    class Pagination: Codable {
        
        
        public var type: String?
        
        public var size: Int
        
        public var current: Int
        
        public var hasNext: Bool
        
        public var itemTotal: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case size = "size"
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String? = nil) {
            
            self.type = type
            
            self.size = size
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Pagination
        Used By: Serviceability
    */

    class Pagination: Codable {
        
        
        public var type: String?
        
        public var size: Int
        
        public var current: Int
        
        public var hasNext: Bool
        
        public var itemTotal: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case size = "size"
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String? = nil) {
            
            self.type = type
            
            self.size = size
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
}


