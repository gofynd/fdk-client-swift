

import Foundation
public extension ApplicationClient {
    /*
        Model: ChargeCustomerResponse
        Used By: Payment
    */
    class ChargeCustomerResponse: Codable {
        
        public var aggregator: String
        
        public var message: String
        
        public var success: Bool
        
        public var cartId: String?
        
        public var status: String
        
        public var deliveryAddressId: String?
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case message = "message"
            
            case success = "success"
            
            case cartId = "cart_id"
            
            case status = "status"
            
            case deliveryAddressId = "delivery_address_id"
            
            case orderId = "order_id"
            
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            
            self.aggregator = aggregator
            
            self.message = message
            
            self.success = success
            
            self.cartId = cartId
            
            self.status = status
            
            self.deliveryAddressId = deliveryAddressId
            
            self.orderId = orderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                cartId = try container.decode(String.self, forKey: .cartId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            status = try container.decode(String.self, forKey: .status)
            
            
            
            
            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encode(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
}
