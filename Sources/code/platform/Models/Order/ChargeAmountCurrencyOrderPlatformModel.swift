

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ChargeAmountCurrency
        Used By: Order
    */

    class ChargeAmountCurrency: Codable {
        
        
        public var value: Double
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case currency = "currency"
            
        }

        public init(currency: String, value: Double) {
            
            self.value = value
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ChargeAmountCurrency
        Used By: Order
    */

    class ChargeAmountCurrency: Codable {
        
        
        public var value: Double
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case currency = "currency"
            
        }

        public init(currency: String, value: Double) {
            
            self.value = value
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


