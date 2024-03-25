

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductPricesPage
        Used By: Catalog
    */

    class ProductPricesPage: Codable {
        
        
        public var type: String?
        
        public var current: Double?
        
        public var size: Double?
        
        public var itemTotal: Double?
        
        public var hasPrevious: Bool?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case current = "current"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasPrevious = "has_previous"
            
            case hasNext = "has_next"
            
        }

        public init(current: Double? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Double? = nil, size: Double? = nil, type: String? = nil) {
            
            self.type = type
            
            self.current = current
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.hasPrevious = hasPrevious
            
            self.hasNext = hasNext
            
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
                
            
            
                do {
                    current = try container.decode(Double.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(Double.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemTotal = try container.decode(Double.self, forKey: .itemTotal)
                
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
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductPricesPage
        Used By: Catalog
    */

    class ProductPricesPage: Codable {
        
        
        public var type: String?
        
        public var current: Double?
        
        public var size: Double?
        
        public var itemTotal: Double?
        
        public var hasPrevious: Bool?
        
        public var hasNext: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case current = "current"
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasPrevious = "has_previous"
            
            case hasNext = "has_next"
            
        }

        public init(current: Double? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Double? = nil, size: Double? = nil, type: String? = nil) {
            
            self.type = type
            
            self.current = current
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.hasPrevious = hasPrevious
            
            self.hasNext = hasNext
            
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
                
            
            
                do {
                    current = try container.decode(Double.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(Double.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemTotal = try container.decode(Double.self, forKey: .itemTotal)
                
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
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
        }
        
    }
}

