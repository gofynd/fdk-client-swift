

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CurrencyInfo
        Used By: Order
    */

    class CurrencyInfo: Codable {
        
        
        public var currency: CurrencyInfoCurrency?
        
        public var orderCurrency: String?
        
        public var conversionRate: ConversionRate?
        
        public var orderingCurrency: OrderingCurrency?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case orderCurrency = "order_currency"
            
            case conversionRate = "conversion_rate"
            
            case orderingCurrency = "ordering_currency"
            
        }

        public init(conversionRate: ConversionRate? = nil, currency: CurrencyInfoCurrency? = nil, orderingCurrency: OrderingCurrency? = nil, orderCurrency: String? = nil) {
            
            self.currency = currency
            
            self.orderCurrency = orderCurrency
            
            self.conversionRate = conversionRate
            
            self.orderingCurrency = orderingCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(CurrencyInfoCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCurrency = try container.decode(String.self, forKey: .orderCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conversionRate = try container.decode(ConversionRate.self, forKey: .conversionRate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingCurrency = try container.decode(OrderingCurrency.self, forKey: .orderingCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(orderCurrency, forKey: .orderCurrency)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CurrencyInfo
        Used By: Order
    */

    class CurrencyInfo: Codable {
        
        
        public var currency: CurrencyInfoCurrency?
        
        public var orderCurrency: String?
        
        public var conversionRate: ConversionRate?
        
        public var orderingCurrency: OrderingCurrency?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case orderCurrency = "order_currency"
            
            case conversionRate = "conversion_rate"
            
            case orderingCurrency = "ordering_currency"
            
        }

        public init(conversionRate: ConversionRate? = nil, currency: CurrencyInfoCurrency? = nil, orderingCurrency: OrderingCurrency? = nil, orderCurrency: String? = nil) {
            
            self.currency = currency
            
            self.orderCurrency = orderCurrency
            
            self.conversionRate = conversionRate
            
            self.orderingCurrency = orderingCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(CurrencyInfoCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCurrency = try container.decode(String.self, forKey: .orderCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conversionRate = try container.decode(ConversionRate.self, forKey: .conversionRate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingCurrency = try container.decode(OrderingCurrency.self, forKey: .orderingCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(orderCurrency, forKey: .orderCurrency)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
        }
        
    }
}


