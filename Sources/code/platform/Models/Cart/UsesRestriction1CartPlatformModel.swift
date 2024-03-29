

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UsesRestriction1
        Used By: Cart
    */

    class UsesRestriction1: Codable {
        
        
        public var maximum: UsesRemaining1?
        
        public var remaining: UsesRemaining1?
        

        public enum CodingKeys: String, CodingKey {
            
            case maximum = "maximum"
            
            case remaining = "remaining"
            
        }

        public init(maximum: UsesRemaining1? = nil, remaining: UsesRemaining1? = nil) {
            
            self.maximum = maximum
            
            self.remaining = remaining
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maximum = try container.decode(UsesRemaining1.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
        }
        
    }
}


