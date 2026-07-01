

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferUsesRestriction
        Used By: Cart
    */

    class OfferUsesRestriction: Codable {
        
        
        public var maximum: OfferUsesRemaining?
        
        public var remaining: OfferUsesRemaining?
        

        public enum CodingKeys: String, CodingKey {
            
            case maximum = "maximum"
            
            case remaining = "remaining"
            
        }

        public init(maximum: OfferUsesRemaining? = nil, remaining: OfferUsesRemaining? = nil) {
            
            self.maximum = maximum
            
            self.remaining = remaining
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maximum = try container.decode(OfferUsesRemaining.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remaining = try container.decode(OfferUsesRemaining.self, forKey: .remaining)
                
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


