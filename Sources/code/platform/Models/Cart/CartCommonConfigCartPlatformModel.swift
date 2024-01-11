

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartCommonConfig
        Used By: Cart
    */

    class CartCommonConfig: Codable {
        
        
        public var deliveryChargesConfig: DeliveryChargesConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryChargesConfig = "delivery_charges_config"
            
        }

        public init(deliveryChargesConfig: DeliveryChargesConfig? = nil) {
            
            self.deliveryChargesConfig = deliveryChargesConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryChargesConfig = try container.decode(DeliveryChargesConfig.self, forKey: .deliveryChargesConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryChargesConfig, forKey: .deliveryChargesConfig)
            
            
        }
        
    }
}


