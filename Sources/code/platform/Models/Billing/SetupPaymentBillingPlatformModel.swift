

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SetupPayment
        Used By: Billing
    */

    class SetupPayment: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var customer: [String: Any]?
        
        public var clientSecret: String?
        
        public var paymentMethod: String?
        
        public var mandate: String?
        
        public var paymentMethodOptions: PaymentMethodOptions?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case status = "status"
            
            case customer = "customer"
            
            case clientSecret = "client_secret"
            
            case paymentMethod = "payment_method"
            
            case mandate = "mandate"
            
            case paymentMethodOptions = "payment_method_options"
            
        }

        public init(clientSecret: String? = nil, customer: [String: Any]? = nil, id: String? = nil, mandate: String? = nil, paymentMethod: String? = nil, paymentMethodOptions: PaymentMethodOptions? = nil, status: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.customer = customer
            
            self.clientSecret = clientSecret
            
            self.paymentMethod = paymentMethod
            
            self.mandate = mandate
            
            self.paymentMethodOptions = paymentMethodOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customer = try container.decode([String: Any].self, forKey: .customer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    clientSecret = try container.decode(String.self, forKey: .clientSecret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethod = try container.decode(String.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mandate = try container.decode(String.self, forKey: .mandate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethodOptions = try container.decode(PaymentMethodOptions.self, forKey: .paymentMethodOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(clientSecret, forKey: .clientSecret)
            
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
            
            
            try? container.encodeIfPresent(mandate, forKey: .mandate)
            
            
            
            
            try? container.encodeIfPresent(paymentMethodOptions, forKey: .paymentMethodOptions)
            
            
        }
        
    }
}




