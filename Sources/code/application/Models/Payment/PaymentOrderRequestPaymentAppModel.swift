

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentOrderRequest
        Used By: Payment
    */
    class PaymentOrderRequest: Codable {
        
        public var paymentMethods: [PaymentOrderMethods]?
        
        public var orderId: String
        
        public var shipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMethods = "payment_methods"
            
            case orderId = "order_id"
            
            case shipmentId = "shipment_id"
            
        }

        public init(orderId: String, paymentMethods: [PaymentOrderMethods]? = nil, shipmentId: String? = nil) {
            
            self.paymentMethods = paymentMethods
            
            self.orderId = orderId
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                paymentMethods = try container.decode([PaymentOrderMethods].self, forKey: .paymentMethods)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}
