

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ChargeAmountSerializerData
        Used By: Payment
    */

    class ChargeAmountSerializerData: Codable {
        
        
        public var orderingCurrency: AmountSerializerData
        
        public var baseCurrency: AmountSerializerData
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: AmountSerializerData, orderingCurrency: AmountSerializerData) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(AmountSerializerData.self, forKey: .orderingCurrency)
                
            
            
            
                baseCurrency = try container.decode(AmountSerializerData.self, forKey: .baseCurrency)
                
            
            
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
        Model: ChargeAmountSerializerData
        Used By: Payment
    */

    class ChargeAmountSerializerData: Codable {
        
        
        public var orderingCurrency: AmountSerializerData
        
        public var baseCurrency: AmountSerializerData
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: AmountSerializerData, orderingCurrency: AmountSerializerData) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(AmountSerializerData.self, forKey: .orderingCurrency)
                
            
            
            
                baseCurrency = try container.decode(AmountSerializerData.self, forKey: .baseCurrency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
        }
        
    }
}


