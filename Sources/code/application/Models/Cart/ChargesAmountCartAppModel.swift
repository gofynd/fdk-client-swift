

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ChargesAmount
        Used By: Cart
    */
    class ChargesAmount: Codable {
        
        public var value: Double?
        
        public var currency: String?
        
        public var baseCurrency: CurrencyValue?
        
        public var orderingCurrency: CurrencyValue?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case currency = "currency"
            
            case baseCurrency = "base_currency"
            
            case orderingCurrency = "ordering_currency"
            
        }

        public init(baseCurrency: CurrencyValue? = nil, currency: String? = nil, orderingCurrency: CurrencyValue? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.currency = currency
            
            self.baseCurrency = baseCurrency
            
            self.orderingCurrency = orderingCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                value = try container.decode(Double.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(String.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                baseCurrency = try container.decode(CurrencyValue.self, forKey: .baseCurrency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderingCurrency = try container.decode(CurrencyValue.self, forKey: .orderingCurrency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
        }
        
    }
}
