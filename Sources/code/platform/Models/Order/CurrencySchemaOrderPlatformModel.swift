

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CurrencySchema
        Used By: Order
    */

    class CurrencySchema: Codable {
        
        
        public var orderingCurrency: OrderingCurrencySchema
        
        public var conversionRate: ConversionRateSchema
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case conversionRate = "conversion_rate"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(conversionRate: ConversionRateSchema, currencyCode: String? = nil, currencySymbol: String? = nil, orderingCurrency: OrderingCurrencySchema) {
            
            self.orderingCurrency = orderingCurrency
            
            self.conversionRate = conversionRate
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(OrderingCurrencySchema.self, forKey: .orderingCurrency)
                
            
            
            
                conversionRate = try container.decode(ConversionRateSchema.self, forKey: .conversionRate)
                
            
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CurrencySchema
        Used By: Order
    */

    class CurrencySchema: Codable {
        
        
        public var orderingCurrency: OrderingCurrencySchema
        
        public var conversionRate: ConversionRateSchema
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case conversionRate = "conversion_rate"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(conversionRate: ConversionRateSchema, currencyCode: String? = nil, currencySymbol: String? = nil, orderingCurrency: OrderingCurrencySchema) {
            
            self.orderingCurrency = orderingCurrency
            
            self.conversionRate = conversionRate
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderingCurrency = try container.decode(OrderingCurrencySchema.self, forKey: .orderingCurrency)
                
            
            
            
                conversionRate = try container.decode(ConversionRateSchema.self, forKey: .conversionRate)
                
            
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
}


