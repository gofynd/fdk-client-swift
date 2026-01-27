

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactoryListItemsSchema
        Used By: Catalog
    */

    class PriceFactoryListItemsSchema: Codable {
        
        
        public var priceFactoryId: String?
        
        public var name: String?
        
        public var type: String?
        
        public var currencies: [String]?
        
        public var priceStrategy: [PriceStrategySchema]?
        
        public var priceZoneId: String?
        
        public var active: Bool?
        
        public var modifiedBy: CreatedBy?
        
        public var createdBy: CreatedBy?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceFactoryId = "price_factory_id"
            
            case name = "name"
            
            case type = "type"
            
            case currencies = "currencies"
            
            case priceStrategy = "price_strategy"
            
            case priceZoneId = "price_zone_id"
            
            case active = "active"
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(active: Bool? = nil, createdBy: CreatedBy? = nil, currencies: [String]? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, name: String? = nil, priceFactoryId: String? = nil, priceStrategy: [PriceStrategySchema]? = nil, priceZoneId: String? = nil, type: String? = nil) {
            
            self.priceFactoryId = priceFactoryId
            
            self.name = name
            
            self.type = type
            
            self.currencies = currencies
            
            self.priceStrategy = priceStrategy
            
            self.priceZoneId = priceZoneId
            
            self.active = active
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
            self.modifiedOn = modifiedOn
            
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
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceFactoryId, forKey: .priceFactoryId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
            
            
            try? container.encodeIfPresent(priceStrategy, forKey: .priceStrategy)
            
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactoryListItemsSchema
        Used By: Catalog
    */

    class PriceFactoryListItemsSchema: Codable {
        
        
        public var priceFactoryId: String?
        
        public var name: String?
        
        public var type: String?
        
        public var currencies: [String]?
        
        public var priceStrategy: [PriceStrategySchema]?
        
        public var priceZoneId: String?
        
        public var active: Bool?
        
        public var modifiedBy: CreatedBy?
        
        public var createdBy: CreatedBy?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceFactoryId = "price_factory_id"
            
            case name = "name"
            
            case type = "type"
            
            case currencies = "currencies"
            
            case priceStrategy = "price_strategy"
            
            case priceZoneId = "price_zone_id"
            
            case active = "active"
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(active: Bool? = nil, createdBy: CreatedBy? = nil, currencies: [String]? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, name: String? = nil, priceFactoryId: String? = nil, priceStrategy: [PriceStrategySchema]? = nil, priceZoneId: String? = nil, type: String? = nil) {
            
            self.priceFactoryId = priceFactoryId
            
            self.name = name
            
            self.type = type
            
            self.currencies = currencies
            
            self.priceStrategy = priceStrategy
            
            self.priceZoneId = priceZoneId
            
            self.active = active
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
            self.modifiedOn = modifiedOn
            
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
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceFactoryId, forKey: .priceFactoryId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
            
            
            try? container.encodeIfPresent(priceStrategy, forKey: .priceStrategy)
            
            
            
            
            try? container.encodeIfPresent(priceZoneId, forKey: .priceZoneId)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}


