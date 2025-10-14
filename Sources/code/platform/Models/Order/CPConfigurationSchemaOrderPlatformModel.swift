

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CPConfigurationSchema
        Used By: Order
    */

    class CPConfigurationSchema: Codable {
        
        
        public var shippingBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shippingBy = "shipping_by"
            
        }

        public init(shippingBy: String) {
            
            self.shippingBy = shippingBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shippingBy = try container.decode(String.self, forKey: .shippingBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CPConfigurationSchema
        Used By: Order
    */

    class CPConfigurationSchema: Codable {
        
        
        public var shippingBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shippingBy = "shipping_by"
            
        }

        public init(shippingBy: String) {
            
            self.shippingBy = shippingBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shippingBy = try container.decode(String.self, forKey: .shippingBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shippingBy, forKey: .shippingBy)
            
            
        }
        
    }
}


