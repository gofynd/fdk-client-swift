

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CurrencyInfoConversionRate
        Used By: Order
    */

    class CurrencyInfoConversionRate: Codable {
        
        
        public var rates: [String: Any]?
        
        public var base: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case rates = "rates"
            
            case base = "base"
            
        }

        public init(base: String? = nil, rates: [String: Any]? = nil) {
            
            self.rates = rates
            
            self.base = base
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rates = try container.decode([String: Any].self, forKey: .rates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    base = try container.decode(String.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rates, forKey: .rates)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CurrencyInfoConversionRate
        Used By: Order
    */

    class CurrencyInfoConversionRate: Codable {
        
        
        public var rates: [String: Any]?
        
        public var base: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case rates = "rates"
            
            case base = "base"
            
        }

        public init(base: String? = nil, rates: [String: Any]? = nil) {
            
            self.rates = rates
            
            self.base = base
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rates = try container.decode([String: Any].self, forKey: .rates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    base = try container.decode(String.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rates, forKey: .rates)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
        }
        
    }
}


