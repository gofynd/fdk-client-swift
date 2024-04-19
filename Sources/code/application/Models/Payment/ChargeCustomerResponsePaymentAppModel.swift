

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ChargeCustomerResponse
        Used By: Payment
    */
    class ChargeCustomerResponse: Codable {
        
        public var status: String
        
        public var cartId: String?
        
        public var success: Bool
        
        public var aggregator: String
        
        public var message: String
        
        public var orderId: String
        
        public var deliveryAddressId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case cartId = "cart_id"
            
            case success = "success"
            
            case aggregator = "aggregator"
            
            case message = "message"
            
            case orderId = "order_id"
            
            case deliveryAddressId = "delivery_address_id"
            
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            
            self.status = status
            
            self.cartId = cartId
            
            self.success = success
            
            self.aggregator = aggregator
            
            self.message = message
            
            self.orderId = orderId
            
            self.deliveryAddressId = deliveryAddressId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(String.self, forKey: .status)
            
            
            
            
            do {
                cartId = try container.decode(String.self, forKey: .cartId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encode(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
            
            
        }
        
    }
}
