

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: DeliveryChargesConfig
        Used By: Cart
    */
    class DeliveryChargesConfig: Codable {
        
        public var enabled: Bool?
        
        public var charges: [ChargesThreshold]?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case charges = "charges"
            
        }

        public init(charges: [ChargesThreshold]? = nil, enabled: Bool? = nil) {
            
            self.enabled = enabled
            
            self.charges = charges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                charges = try container.decode([ChargesThreshold].self, forKey: .charges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
        }
        
    }
}
