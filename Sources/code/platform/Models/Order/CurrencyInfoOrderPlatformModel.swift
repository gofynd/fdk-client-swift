

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CurrencyInfo
        Used By: Order
    */

    class CurrencyInfo: Codable {
        
        
        public var orderingCurrency: OrderingCurrency?
        
        public var conversionRate: ConversionRate?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case conversionRate = "conversion_rate"
            
        }

        public init(conversionRate: ConversionRate? = nil, orderingCurrency: OrderingCurrency? = nil) {
            
            self.orderingCurrency = orderingCurrency
            
            self.conversionRate = conversionRate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderingCurrency = try container.decode(OrderingCurrency.self, forKey: .orderingCurrency)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CurrencyInfo
        Used By: Order
    */

    class CurrencyInfo: Codable {
        
        
        public var orderingCurrency: OrderingCurrency?
        
        public var conversionRate: ConversionRate?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case conversionRate = "conversion_rate"
            
        }

        public init(conversionRate: ConversionRate? = nil, orderingCurrency: OrderingCurrency? = nil) {
            
            self.orderingCurrency = orderingCurrency
            
            self.conversionRate = conversionRate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderingCurrency = try container.decode(OrderingCurrency.self, forKey: .orderingCurrency)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            
            try? container.encodeIfPresent(conversionRate, forKey: .conversionRate)
            
            
        }
        
    }
}


