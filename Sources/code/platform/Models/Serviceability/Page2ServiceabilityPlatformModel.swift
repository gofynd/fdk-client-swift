

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Page2
        Used By: Serviceability
    */

    class Page2: Codable {
        
        
        public var size: Int
        
        public var itemTotal: Int
        
        public var type: String
        
        public var current: Int
        
        public var hasNext: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case current = "current"
            
            case hasNext = "has_next"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.current = current
            
            self.hasNext = hasNext
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Page2
        Used By: Serviceability
    */

    class Page2: Codable {
        
        
        public var size: Int
        
        public var itemTotal: Int
        
        public var type: String
        
        public var current: Int
        
        public var hasNext: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case type = "type"
            
            case current = "current"
            
            case hasNext = "has_next"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.type = type
            
            self.current = current
            
            self.hasNext = hasNext
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}


