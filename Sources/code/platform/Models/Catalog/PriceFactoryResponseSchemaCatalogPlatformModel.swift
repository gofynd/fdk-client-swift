

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactoryResponseSchema
        Used By: Catalog
    */

    class PriceFactoryResponseSchema: Codable {
        
        
        public var priceZoneId: String?
        
        public var priceFactoryId: String?
        
        public var modifiedBy: String?
        
        public var currencies: [String]?
        
        public var name: String?
        
        public var priceStrategy: [PriceStrategySchema]?
        
        public var active: Bool?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceZoneId = "price_zone_id"
            
            case priceFactoryId = "price_factory_id"
            
            case modifiedBy = "modified_by"
            
            case currencies = "currencies"
            
            case name = "name"
            
            case priceStrategy = "price_strategy"
            
            case active = "active"
            
            case createdBy = "created_by"
            
        }

        public init(active: Bool? = nil, createdBy: String? = nil, currencies: [String]? = nil, modifiedBy: String? = nil, name: String? = nil, priceFactoryId: String? = nil, priceStrategy: [PriceStrategySchema]? = nil, priceZoneId: String? = nil) {
            
            self.priceZoneId = priceZoneId
            
            self.priceFactoryId = priceFactoryId
            
            self.modifiedBy = modifiedBy
            
            self.currencies = currencies
            
            self.name = name
            
            self.priceStrategy = priceStrategy
            
            self.active = active
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priceZoneId = try container.decode(String.self, forKey: .priceZoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceFactoryId = try container.decode(String.self, forKey: .priceFactoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
            
            
            try? container.encodeIfPresent(priceFactoryId, forKey: .priceFactoryId)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priceStrategy, forKey: .priceStrategy)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactoryResponseSchema
        Used By: Catalog
    */

    class PriceFactoryResponseSchema: Codable {
        
        
        public var priceZoneId: String?
        
        public var priceFactoryId: String?
        
        public var modifiedBy: String?
        
        public var currencies: [String]?
        
        public var name: String?
        
        public var priceStrategy: [PriceStrategySchema]?
        
        public var active: Bool?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceZoneId = "price_zone_id"
            
            case priceFactoryId = "price_factory_id"
            
            case modifiedBy = "modified_by"
            
            case currencies = "currencies"
            
            case name = "name"
            
            case priceStrategy = "price_strategy"
            
            case active = "active"
            
            case createdBy = "created_by"
            
        }

        public init(active: Bool? = nil, createdBy: String? = nil, currencies: [String]? = nil, modifiedBy: String? = nil, name: String? = nil, priceFactoryId: String? = nil, priceStrategy: [PriceStrategySchema]? = nil, priceZoneId: String? = nil) {
            
            self.priceZoneId = priceZoneId
            
            self.priceFactoryId = priceFactoryId
            
            self.modifiedBy = modifiedBy
            
            self.currencies = currencies
            
            self.name = name
            
            self.priceStrategy = priceStrategy
            
            self.active = active
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priceZoneId = try container.decode(String.self, forKey: .priceZoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceFactoryId = try container.decode(String.self, forKey: .priceFactoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
            
            
            try? container.encodeIfPresent(priceFactoryId, forKey: .priceFactoryId)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priceStrategy, forKey: .priceStrategy)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}


