

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpsertPriceFactorySizesSchema
        Used By: Catalog
    */

    class UpsertPriceFactorySizesSchema: Codable {
        
        
        public var size: String?
        
        public var currencyPrices: [CurrencyPriceSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case currencyPrices = "currency_prices"
            
        }

        public init(currencyPrices: [CurrencyPriceSchema]? = nil, size: String? = nil) {
            
            self.size = size
            
            self.currencyPrices = currencyPrices
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyPrices = try container.decode([CurrencyPriceSchema].self, forKey: .currencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(currencyPrices, forKey: .currencyPrices)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpsertPriceFactorySizesSchema
        Used By: Catalog
    */

    class UpsertPriceFactorySizesSchema: Codable {
        
        
        public var size: String?
        
        public var currencyPrices: [CurrencyPriceSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case currencyPrices = "currency_prices"
            
        }

        public init(currencyPrices: [CurrencyPriceSchema]? = nil, size: String? = nil) {
            
            self.size = size
            
            self.currencyPrices = currencyPrices
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyPrices = try container.decode([CurrencyPriceSchema].self, forKey: .currencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(currencyPrices, forKey: .currencyPrices)
            
            
        }
        
    }
}


