

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderResponseSchema
        Used By: Order
    */

    class CreateOrderResponseSchema: Codable {
        
        
        public var fyndOrderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
        }

        public init(fyndOrderId: String) {
            
            self.fyndOrderId = fyndOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderResponseSchema
        Used By: Order
    */

    class CreateOrderResponseSchema: Codable {
        
        
        public var fyndOrderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
        }

        public init(fyndOrderId: String) {
            
            self.fyndOrderId = fyndOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
        }
        
    }
}


