

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DeliveryCharges
        Used By: Cart
    */

    class DeliveryCharges: Codable {
        
        
        public var charges: [Charges]?
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case charges = "charges"
            
            case enabled = "enabled"
            
        }

        public init(charges: [Charges]? = nil, enabled: Bool? = nil) {
            
            self.charges = charges
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    charges = try container.decode([Charges].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}


