

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ChargeAmountSerializer
        Used By: Payment
    */

    class ChargeAmountSerializer: Codable {
        
        
        public var orderingCurrency: AmountSerializer
        
        public var baseCurrency: AmountSerializer
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: AmountSerializer, orderingCurrency: AmountSerializer) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(AmountSerializer.self, forKey: .orderingCurrency)
                
            
            
            
                baseCurrency = try container.decode(AmountSerializer.self, forKey: .baseCurrency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ChargeAmountSerializer
        Used By: Payment
    */

    class ChargeAmountSerializer: Codable {
        
        
        public var orderingCurrency: AmountSerializer
        
        public var baseCurrency: AmountSerializer
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: AmountSerializer, orderingCurrency: AmountSerializer) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(AmountSerializer.self, forKey: .orderingCurrency)
                
            
            
            
                baseCurrency = try container.decode(AmountSerializer.self, forKey: .baseCurrency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
        }
        
    }
}


