

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreatePriceFactoryConfigSchema
        Used By: Catalog
    */

    class CreatePriceFactoryConfigSchema: Codable {
        
        
        public var name: String?
        
        public var type: String?
        
        public var currencies: [String]?
        
        public var priceStrategy: [PriceStrategySchema]?
        
        public var priceZoneId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case type = "type"
            
            case currencies = "currencies"
            
            case priceStrategy = "price_strategy"
            
            case priceZoneId = "price_zone_id"
            
        }

        public init(currencies: [String]? = nil, name: String? = nil, priceStrategy: [PriceStrategySchema]? = nil, priceZoneId: String? = nil, type: String? = nil) {
            
            self.name = name
            
            self.type = type
            
            self.currencies = currencies
            
            self.priceStrategy = priceStrategy
            
            self.priceZoneId = priceZoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencies = try container.decode([String].self, forKey: .currencies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceStrategy = try container.decode([PriceStrategySchema].self, forKey: .priceStrategy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
            
            
            try? container.encodeIfPresent(priceStrategy, forKey: .priceStrategy)
            
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreatePriceFactoryConfigSchema
        Used By: Catalog
    */

    class CreatePriceFactoryConfigSchema: Codable {
        
        
        public var name: String?
        
        public var type: String?
        
        public var currencies: [String]?
        
        public var priceStrategy: [PriceStrategySchema]?
        
        public var priceZoneId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case type = "type"
            
            case currencies = "currencies"
            
            case priceStrategy = "price_strategy"
            
            case priceZoneId = "price_zone_id"
            
        }

        public init(currencies: [String]? = nil, name: String? = nil, priceStrategy: [PriceStrategySchema]? = nil, priceZoneId: String? = nil, type: String? = nil) {
            
            self.name = name
            
            self.type = type
            
            self.currencies = currencies
            
            self.priceStrategy = priceStrategy
            
            self.priceZoneId = priceZoneId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencies = try container.decode([String].self, forKey: .currencies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceStrategy = try container.decode([PriceStrategySchema].self, forKey: .priceStrategy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
            
            
            try? container.encodeIfPresent(priceStrategy, forKey: .priceStrategy)
            
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
        }
        
    }
}


