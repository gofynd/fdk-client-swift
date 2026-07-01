

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PageInfo
        Used By: Cart
    */
    class PageInfo: Codable {
        
        public var current: Int?
        
        public var hasPrevious: Bool?
        
        public var hasNext: Bool?
        
        public var size: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case hasPrevious = "has_previous"
            
            case hasNext = "has_next"
            
            case size = "size"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, size: Int? = nil) {
            
            self.current = current
            
            self.hasPrevious = hasPrevious
            
            self.hasNext = hasNext
            
            self.size = size
            
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
            
            
            
            do {
                size = try container.decode(Int.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}
