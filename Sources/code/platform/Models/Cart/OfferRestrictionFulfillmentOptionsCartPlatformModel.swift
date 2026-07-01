

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferRestrictionFulfillmentOptions
        Used By: Cart
    */

    class OfferRestrictionFulfillmentOptions: Codable {
        
        
        public var fulfillmentSlug: String
        
        public var zones: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fulfillmentSlug = "fulfillment_slug"
            
            case zones = "zones"
            
        }

        public init(fulfillmentSlug: String, zones: [String]? = nil) {
            
            self.fulfillmentSlug = fulfillmentSlug
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fulfillmentSlug = try container.decode(String.self, forKey: .fulfillmentSlug)
                
            
            
            
                do {
                    zones = try container.decode([String].self, forKey: .zones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fulfillmentSlug, forKey: .fulfillmentSlug)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}


