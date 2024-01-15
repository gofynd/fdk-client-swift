

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentCustomConfigDetailsRequestSchema
        Used By: Payment
    */

    class PaymentCustomConfigDetailsRequestSchema: Codable {
        
        
        public var customer: PaymentCustomConfigCustomerRequestSchema
        
        public var paymentMode: PaymentCustomConfigModeSchema
        
        public var minOrderValue: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case customer = "customer"
            
            case paymentMode = "payment_mode"
            
            case minOrderValue = "min_order_value"
            
        }

        public init(customer: PaymentCustomConfigCustomerRequestSchema, minOrderValue: Double, paymentMode: PaymentCustomConfigModeSchema) {
            
            self.customer = customer
            
            self.paymentMode = paymentMode
            
            self.minOrderValue = minOrderValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                customer = try container.decode(PaymentCustomConfigCustomerRequestSchema.self, forKey: .customer)
                
            
            
            
                paymentMode = try container.decode(PaymentCustomConfigModeSchema.self, forKey: .paymentMode)
                
            
            
            
                minOrderValue = try container.decode(Double.self, forKey: .minOrderValue)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentCustomConfigDetailsRequestSchema
        Used By: Payment
    */

    class PaymentCustomConfigDetailsRequestSchema: Codable {
        
        
        public var customer: PaymentCustomConfigCustomerRequestSchema
        
        public var paymentMode: PaymentCustomConfigModeSchema
        
        public var minOrderValue: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case customer = "customer"
            
            case paymentMode = "payment_mode"
            
            case minOrderValue = "min_order_value"
            
        }

        public init(customer: PaymentCustomConfigCustomerRequestSchema, minOrderValue: Double, paymentMode: PaymentCustomConfigModeSchema) {
            
            self.customer = customer
            
            self.paymentMode = paymentMode
            
            self.minOrderValue = minOrderValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                customer = try container.decode(PaymentCustomConfigCustomerRequestSchema.self, forKey: .customer)
                
            
            
            
                paymentMode = try container.decode(PaymentCustomConfigModeSchema.self, forKey: .paymentMode)
                
            
            
            
                minOrderValue = try container.decode(Double.self, forKey: .minOrderValue)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(minOrderValue, forKey: .minOrderValue)
            
            
        }
        
    }
}


