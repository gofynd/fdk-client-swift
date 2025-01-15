

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ProductSchema
        Used By: Order
    */

    class ProductSchema: Codable {
        
        
        public var lineNumber: Int
        
        public var paymentMethods: [PaymentMethodSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(lineNumber: Int, paymentMethods: [PaymentMethodSchema]) {
            
            self.lineNumber = lineNumber
            
            self.paymentMethods = paymentMethods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
            
            
            
                paymentMethods = try container.decode([PaymentMethodSchema].self, forKey: .paymentMethods)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ProductSchema
        Used By: Order
    */

    class ProductSchema: Codable {
        
        
        public var lineNumber: Int
        
        public var paymentMethods: [PaymentMethodSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(lineNumber: Int, paymentMethods: [PaymentMethodSchema]) {
            
            self.lineNumber = lineNumber
            
            self.paymentMethods = paymentMethods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
            
            
            
                paymentMethods = try container.decode([PaymentMethodSchema].self, forKey: .paymentMethods)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
}


