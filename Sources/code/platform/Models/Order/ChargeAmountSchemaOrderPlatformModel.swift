

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ChargeAmountSchema
        Used By: Order
    */

    class ChargeAmountSchema: Codable {
        
        
        public var orderingCurrency: CurrencyValueSchema
        
        public var baseCurrency: CurrencyValueSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: CurrencyValueSchema, orderingCurrency: CurrencyValueSchema) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(CurrencyValueSchema.self, forKey: .orderingCurrency)
                
            
            
            
                baseCurrency = try container.decode(CurrencyValueSchema.self, forKey: .baseCurrency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ChargeAmountSchema
        Used By: Order
    */

    class ChargeAmountSchema: Codable {
        
        
        public var orderingCurrency: CurrencyValueSchema
        
        public var baseCurrency: CurrencyValueSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: CurrencyValueSchema, orderingCurrency: CurrencyValueSchema) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(CurrencyValueSchema.self, forKey: .orderingCurrency)
                
            
            
            
                baseCurrency = try container.decode(CurrencyValueSchema.self, forKey: .baseCurrency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
        }
        
    }
}


