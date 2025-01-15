

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ChargeAmount
        Used By: Order
    */
    class ChargeAmount: Codable {
        
        public var baseCurrency: ChargeAmountCurrency
        
        public var orderingCurrency: ChargeAmountCurrency
        

        public enum CodingKeys: String, CodingKey {
            
            case baseCurrency = "base_currency"
            
            case orderingCurrency = "ordering_currency"
            
        }

        public init(baseCurrency: ChargeAmountCurrency, orderingCurrency: ChargeAmountCurrency) {
            
            self.baseCurrency = baseCurrency
            
            self.orderingCurrency = orderingCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            baseCurrency = try container.decode(ChargeAmountCurrency.self, forKey: .baseCurrency)
            
            
            
            
            orderingCurrency = try container.decode(ChargeAmountCurrency.self, forKey: .orderingCurrency)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
        }
        
    }
}
