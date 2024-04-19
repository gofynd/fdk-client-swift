

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PageCoupon
        Used By: Cart
    */
    class PageCoupon: Codable {
        
        public var totalItemCount: Int?
        
        public var hasNext: Bool?
        
        public var total: Int?
        
        public var current: Int?
        
        public var hasPrevious: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalItemCount = "total_item_count"
            
            case hasNext = "has_next"
            
            case total = "total"
            
            case current = "current"
            
            case hasPrevious = "has_previous"
            
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, total: Int? = nil, totalItemCount: Int? = nil) {
            
            self.totalItemCount = totalItemCount
            
            self.hasNext = hasNext
            
            self.total = total
            
            self.current = current
            
            self.hasPrevious = hasPrevious
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)
            
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
                total = try container.decode(Int.self, forKey: .total)
            
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
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            
        }
        
    }
}
