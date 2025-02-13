

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentCustomConfigDetailsSchema
        Used By: Payment
    */

    class PaymentCustomConfigDetailsSchema: Codable {
        
        
        public var customer: PaymentCustomConfigCustomerSchema?
        
        public var paymentMode: PaymentCustomConfigDetailsSchema?
        
        public var minOrderValue: Double?
        
        public var available: Bool?
        
        public var preOrder: [String]?
        
        public var postOrder: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customer = "customer"
            
            case paymentMode = "payment_mode"
            
            case minOrderValue = "min_order_value"
            
            case available = "available"
            
            case preOrder = "pre_order"
            
            case postOrder = "post_order"
            
        }

        public init(available: Bool? = nil, customer: PaymentCustomConfigCustomerSchema? = nil, minOrderValue: Double? = nil, paymentMode: PaymentCustomConfigDetailsSchema? = nil, postOrder: [String]? = nil, preOrder: [String]? = nil) {
            
            self.customer = customer
            
            self.paymentMode = paymentMode
            
            self.minOrderValue = minOrderValue
            
            self.available = available
            
            self.preOrder = preOrder
            
            self.postOrder = postOrder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customer = try container.decode(PaymentCustomConfigCustomerSchema.self, forKey: .customer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(PaymentCustomConfigDetailsSchema.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOrderValue = try container.decode(Double.self, forKey: .minOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    available = try container.decode(Bool.self, forKey: .available)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    preOrder = try container.decode([String].self, forKey: .preOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode([String].self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
            
            
            try? container.encodeIfPresent(available, forKey: .available)
            
            
            
            
            try? container.encodeIfPresent(preOrder, forKey: .preOrder)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentCustomConfigDetailsSchema
        Used By: Payment
    */

    class PaymentCustomConfigDetailsSchema: Codable {
        
        
        public var customer: PaymentCustomConfigCustomerSchema?
        
        public var paymentMode: PaymentCustomConfigDetailsSchema?
        
        public var minOrderValue: Double?
        
        public var available: Bool?
        
        public var preOrder: [String]?
        
        public var postOrder: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customer = "customer"
            
            case paymentMode = "payment_mode"
            
            case minOrderValue = "min_order_value"
            
            case available = "available"
            
            case preOrder = "pre_order"
            
            case postOrder = "post_order"
            
        }

        public init(available: Bool? = nil, customer: PaymentCustomConfigCustomerSchema? = nil, minOrderValue: Double? = nil, paymentMode: PaymentCustomConfigDetailsSchema? = nil, postOrder: [String]? = nil, preOrder: [String]? = nil) {
            
            self.customer = customer
            
            self.paymentMode = paymentMode
            
            self.minOrderValue = minOrderValue
            
            self.available = available
            
            self.preOrder = preOrder
            
            self.postOrder = postOrder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customer = try container.decode(PaymentCustomConfigCustomerSchema.self, forKey: .customer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(PaymentCustomConfigDetailsSchema.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOrderValue = try container.decode(Double.self, forKey: .minOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    available = try container.decode(Bool.self, forKey: .available)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    preOrder = try container.decode([String].self, forKey: .preOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode([String].self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
            
            
            try? container.encodeIfPresent(available, forKey: .available)
            
            
            
            
            try? container.encodeIfPresent(preOrder, forKey: .preOrder)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
        }
        
    }
}


