

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactoryErrorSchema
        Used By: Catalog
    */

    class PriceFactoryErrorSchema: Codable {
        
        
        public var departments: CreatedBy?
        
        public var pricingStrategy: CreatedBy?
        
        public var departmentPriceZonewiseDepartmentIds: CreatedBy?
        
        public var factoryType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case pricingStrategy = "pricing_strategy"
            
            case departmentPriceZonewiseDepartmentIds = "department_price_zonewise_department_ids"
            
            case factoryType = "factory_type"
            
        }

        public init(departments: CreatedBy? = nil, departmentPriceZonewiseDepartmentIds: CreatedBy? = nil, factoryType: [String]? = nil, pricingStrategy: CreatedBy? = nil) {
            
            self.departments = departments
            
            self.pricingStrategy = pricingStrategy
            
            self.departmentPriceZonewiseDepartmentIds = departmentPriceZonewiseDepartmentIds
            
            self.factoryType = factoryType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departments = try container.decode(CreatedBy.self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pricingStrategy = try container.decode(CreatedBy.self, forKey: .pricingStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departmentPriceZonewiseDepartmentIds = try container.decode(CreatedBy.self, forKey: .departmentPriceZonewiseDepartmentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryType = try container.decode([String].self, forKey: .factoryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(pricingStrategy, forKey: .pricingStrategy)
            
            
            
            
            try? container.encodeIfPresent(departmentPriceZonewiseDepartmentIds, forKey: .departmentPriceZonewiseDepartmentIds)
            
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactoryErrorSchema
        Used By: Catalog
    */

    class PriceFactoryErrorSchema: Codable {
        
        
        public var departments: CreatedBy?
        
        public var pricingStrategy: CreatedBy?
        
        public var departmentPriceZonewiseDepartmentIds: CreatedBy?
        
        public var factoryType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case pricingStrategy = "pricing_strategy"
            
            case departmentPriceZonewiseDepartmentIds = "department_price_zonewise_department_ids"
            
            case factoryType = "factory_type"
            
        }

        public init(departments: CreatedBy? = nil, departmentPriceZonewiseDepartmentIds: CreatedBy? = nil, factoryType: [String]? = nil, pricingStrategy: CreatedBy? = nil) {
            
            self.departments = departments
            
            self.pricingStrategy = pricingStrategy
            
            self.departmentPriceZonewiseDepartmentIds = departmentPriceZonewiseDepartmentIds
            
            self.factoryType = factoryType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departments = try container.decode(CreatedBy.self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pricingStrategy = try container.decode(CreatedBy.self, forKey: .pricingStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departmentPriceZonewiseDepartmentIds = try container.decode(CreatedBy.self, forKey: .departmentPriceZonewiseDepartmentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryType = try container.decode([String].self, forKey: .factoryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(pricingStrategy, forKey: .pricingStrategy)
            
            
            
            
            try? container.encodeIfPresent(departmentPriceZonewiseDepartmentIds, forKey: .departmentPriceZonewiseDepartmentIds)
            
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
        }
        
    }
}


