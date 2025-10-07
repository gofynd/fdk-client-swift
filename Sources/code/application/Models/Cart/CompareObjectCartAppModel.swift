

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CompareObject
        Used By: Cart
    */
    class CompareObject: Codable {
        
        public var equals: Double?
        
        public var greaterThan: Double?
        
        public var lessThanEquals: Double?
        
        public var lessThan: Double?
        
        public var greaterThanEquals: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case equals = "equals"
            
            case greaterThan = "greater_than"
            
            case lessThanEquals = "less_than_equals"
            
            case lessThan = "less_than"
            
            case greaterThanEquals = "greater_than_equals"
            
        }

        public init(equals: Double? = nil, greaterThan: Double? = nil, greaterThanEquals: Double? = nil, lessThan: Double? = nil, lessThanEquals: Double? = nil) {
            
            self.equals = equals
            
            self.greaterThan = greaterThan
            
            self.lessThanEquals = lessThanEquals
            
            self.lessThan = lessThan
            
            self.greaterThanEquals = greaterThanEquals
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                equals = try container.decode(Double.self, forKey: .equals)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                greaterThan = try container.decode(Double.self, forKey: .greaterThan)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lessThanEquals = try container.decode(Double.self, forKey: .lessThanEquals)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lessThan = try container.decode(Double.self, forKey: .lessThan)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(equals, forKey: .equals)
            
            
            
            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)
            
            
            
            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)
            
            
            
            try? container.encodeIfPresent(lessThan, forKey: .lessThan)
            
            
            
            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)
            
            
        }
        
    }
}
