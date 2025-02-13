

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderResponse
        Used By: Order
    */

    class CreateOrderResponse: Codable {
        
        
        public var fyndOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
        }

        public init(fyndOrderId: String? = nil) {
            
            self.fyndOrderId = fyndOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderResponse
        Used By: Order
    */

    class CreateOrderResponse: Codable {
        
        
        public var fyndOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
        }

        public init(fyndOrderId: String? = nil) {
            
            self.fyndOrderId = fyndOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
        }
        
    }
}


