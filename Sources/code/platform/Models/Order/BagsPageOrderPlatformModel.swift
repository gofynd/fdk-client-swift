

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagsPage
        Used By: Order
    */

    class BagsPage: Codable {
        
        
        public var itemTotal: Int
        
        public var hasNext: Bool
        
        public var pageType: String
        
        public var current: Int
        
        public var size: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case pageType = "page_type"
            
            case current = "current"
            
            case size = "size"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.pageType = pageType
            
            self.current = current
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                pageType = try container.decode(String.self, forKey: .pageType)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagsPage
        Used By: Order
    */

    class BagsPage: Codable {
        
        
        public var itemTotal: Int
        
        public var hasNext: Bool
        
        public var pageType: String
        
        public var current: Int
        
        public var size: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case pageType = "page_type"
            
            case current = "current"
            
            case size = "size"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.pageType = pageType
            
            self.current = current
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                pageType = try container.decode(String.self, forKey: .pageType)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}


