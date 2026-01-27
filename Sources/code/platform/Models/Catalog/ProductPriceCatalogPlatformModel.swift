

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductPrice
        Used By: Catalog
    */

    class ProductPrice: Codable {
        
        
        public var zoneType: String?
        
        public var zoneIdentifier: String?
        
        public var currencyPrices: [CurrencyPrice]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneType = "zone_type"
            
            case zoneIdentifier = "zone_identifier"
            
            case currencyPrices = "currency_prices"
            
        }

        public init(currencyPrices: [CurrencyPrice]? = nil, zoneIdentifier: String? = nil, zoneType: String? = nil) {
            
            self.zoneType = zoneType
            
            self.zoneIdentifier = zoneIdentifier
            
            self.currencyPrices = currencyPrices
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneType = try container.decode(String.self, forKey: .zoneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneIdentifier = try container.decode(String.self, forKey: .zoneIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyPrices = try container.decode([CurrencyPrice].self, forKey: .currencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneType, forKey: .zoneType)
            
            
            
            
            try? container.encodeIfPresent(zoneIdentifier, forKey: .zoneIdentifier)
            
            
            
            
            try? container.encodeIfPresent(currencyPrices, forKey: .currencyPrices)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductPrice
        Used By: Catalog
    */

    class ProductPrice: Codable {
        
        
        public var zoneType: String?
        
        public var zoneIdentifier: String?
        
        public var currencyPrices: [CurrencyPrice]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneType = "zone_type"
            
            case zoneIdentifier = "zone_identifier"
            
            case currencyPrices = "currency_prices"
            
        }

        public init(currencyPrices: [CurrencyPrice]? = nil, zoneIdentifier: String? = nil, zoneType: String? = nil) {
            
            self.zoneType = zoneType
            
            self.zoneIdentifier = zoneIdentifier
            
            self.currencyPrices = currencyPrices
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    zoneType = try container.decode(String.self, forKey: .zoneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneIdentifier = try container.decode(String.self, forKey: .zoneIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyPrices = try container.decode([CurrencyPrice].self, forKey: .currencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneType, forKey: .zoneType)
            
            
            
            
            try? container.encodeIfPresent(zoneIdentifier, forKey: .zoneIdentifier)
            
            
            
            
            try? container.encodeIfPresent(currencyPrices, forKey: .currencyPrices)
            
            
        }
        
    }
}


