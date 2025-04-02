

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestPageInfo
        Used By: Order
    */

    class ManifestPageInfo: Codable {
        
        
        public var current: Int
        
        public var total: Int
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var hasPrevious: Bool
        
        public var type: String
        
        public var itemTotal: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case total = "total"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case hasPrevious = "has_previous"
            
            case type = "type"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, itemTotal: Int? = nil, size: Int, total: Int, type: String) {
            
            self.current = current
            
            self.total = total
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.hasPrevious = hasPrevious
            
            self.type = type
            
            self.itemTotal = itemTotal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestPageInfo
        Used By: Order
    */

    class ManifestPageInfo: Codable {
        
        
        public var current: Int
        
        public var total: Int
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var hasPrevious: Bool
        
        public var type: String
        
        public var itemTotal: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case total = "total"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case hasPrevious = "has_previous"
            
            case type = "type"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, itemTotal: Int? = nil, size: Int, total: Int, type: String) {
            
            self.current = current
            
            self.total = total
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.hasPrevious = hasPrevious
            
            self.type = type
            
            self.itemTotal = itemTotal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
}


