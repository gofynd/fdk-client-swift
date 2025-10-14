

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderingCurrencySchema
        Used By: Order
    */

    class OrderingCurrencySchema: Codable {
        
        
        public var currencyCode: String
        
        public var currencySymbol: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(currencyCode: String, currencySymbol: String) {
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
            
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderingCurrencySchema
        Used By: Order
    */

    class OrderingCurrencySchema: Codable {
        
        
        public var currencyCode: String
        
        public var currencySymbol: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(currencyCode: String, currencySymbol: String) {
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
            
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
}


