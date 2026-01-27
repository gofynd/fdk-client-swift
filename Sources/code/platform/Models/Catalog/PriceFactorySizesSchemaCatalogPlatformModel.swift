

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactorySizesSchema
        Used By: Catalog
    */

    class PriceFactorySizesSchema: Codable {
        
        
        public var priceFactoryId: String?
        
        public var sellerIdentifier: String?
        
        public var size: String?
        
        public var priceZoneId: String?
        
        public var currencyPrices: [PriceFactoryCurrencyPriceSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceFactoryId = "price_factory_id"
            
            case sellerIdentifier = "seller_identifier"
            
            case size = "size"
            
            case priceZoneId = "price_zone_id"
            
            case currencyPrices = "currency_prices"
            
        }

        public init(currencyPrices: [PriceFactoryCurrencyPriceSchema]? = nil, priceFactoryId: String? = nil, priceZoneId: String? = nil, sellerIdentifier: String? = nil, size: String? = nil) {
            
            self.priceFactoryId = priceFactoryId
            
            self.sellerIdentifier = sellerIdentifier
            
            self.size = size
            
            self.priceZoneId = priceZoneId
            
            self.currencyPrices = currencyPrices
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priceFactoryId = try container.decode(String.self, forKey: .priceFactoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceZoneId = try container.decode(String.self, forKey: .priceZoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyPrices = try container.decode([PriceFactoryCurrencyPriceSchema].self, forKey: .currencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceFactoryId, forKey: .priceFactoryId)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
            
            
            try? container.encodeIfPresent(currencyPrices, forKey: .currencyPrices)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactorySizesSchema
        Used By: Catalog
    */

    class PriceFactorySizesSchema: Codable {
        
        
        public var priceFactoryId: String?
        
        public var sellerIdentifier: String?
        
        public var size: String?
        
        public var priceZoneId: String?
        
        public var currencyPrices: [PriceFactoryCurrencyPriceSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceFactoryId = "price_factory_id"
            
            case sellerIdentifier = "seller_identifier"
            
            case size = "size"
            
            case priceZoneId = "price_zone_id"
            
            case currencyPrices = "currency_prices"
            
        }

        public init(currencyPrices: [PriceFactoryCurrencyPriceSchema]? = nil, priceFactoryId: String? = nil, priceZoneId: String? = nil, sellerIdentifier: String? = nil, size: String? = nil) {
            
            self.priceFactoryId = priceFactoryId
            
            self.sellerIdentifier = sellerIdentifier
            
            self.size = size
            
            self.priceZoneId = priceZoneId
            
            self.currencyPrices = currencyPrices
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priceFactoryId = try container.decode(String.self, forKey: .priceFactoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceZoneId = try container.decode(String.self, forKey: .priceZoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyPrices = try container.decode([PriceFactoryCurrencyPriceSchema].self, forKey: .currencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceFactoryId, forKey: .priceFactoryId)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
            
            
            try? container.encodeIfPresent(currencyPrices, forKey: .currencyPrices)
            
            
        }
        
    }
}


