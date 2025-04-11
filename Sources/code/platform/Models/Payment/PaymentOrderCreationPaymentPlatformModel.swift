

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOrderCreation
        Used By: Payment
    */

    class PaymentOrderCreation: Codable {
        
        
        public var orderId: String
        
        public var paymentMethods: [PaymentOrderMethods]?
        
        public var shipmentId: String?
        
        public var customerDetails: CustomerDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case paymentMethods = "payment_methods"
            
            case shipmentId = "shipment_id"
            
            case customerDetails = "customer_details"
            
        }

        public init(customerDetails: CustomerDetails? = nil, orderId: String, paymentMethods: [PaymentOrderMethods]? = nil, shipmentId: String? = nil) {
            
            self.orderId = orderId
            
            self.paymentMethods = paymentMethods
            
            self.shipmentId = shipmentId
            
            self.customerDetails = customerDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    paymentMethods = try container.decode([PaymentOrderMethods].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOrderCreation
        Used By: Payment
    */

    class PaymentOrderCreation: Codable {
        
        
        public var orderId: String
        
        public var paymentMethods: [PaymentOrderMethods]?
        
        public var shipmentId: String?
        
        public var customerDetails: CustomerDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case paymentMethods = "payment_methods"
            
            case shipmentId = "shipment_id"
            
            case customerDetails = "customer_details"
            
        }

        public init(customerDetails: CustomerDetails? = nil, orderId: String, paymentMethods: [PaymentOrderMethods]? = nil, shipmentId: String? = nil) {
            
            self.orderId = orderId
            
            self.paymentMethods = paymentMethods
            
            self.shipmentId = shipmentId
            
            self.customerDetails = customerDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    paymentMethods = try container.decode([PaymentOrderMethods].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
            
            
        }
        
    }
}


