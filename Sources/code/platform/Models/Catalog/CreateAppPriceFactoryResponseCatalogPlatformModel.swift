

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryResponse
        Used By: Catalog
    */

    class CreateAppPriceFactoryResponse: Codable {
        
        
        public var factoryType: String?
        
        public var isActive: Bool?
        
        public var code: String?
        
        public var factoryTypeIds: [String]?
        
        public var currency: String?
        
        public var applicationId: String?
        
        public var createdOn: String?
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: CreatedBy?
        
        public var name: String?
        
        public var departmentIds: [Int]?
        
        public var modifiedOn: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case factoryType = "factory_type"
            
            case isActive = "is_active"
            
            case code = "code"
            
            case factoryTypeIds = "factory_type_ids"
            
            case currency = "currency"
            
            case applicationId = "application_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case departmentIds = "department_ids"
            
            case modifiedOn = "modified_on"
            
            case id = "_id"
            
        }

        public init(applicationId: String? = nil, code: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, currency: String? = nil, departmentIds: [Int]? = nil, factoryType: String? = nil, factoryTypeIds: [String]? = nil, isActive: Bool? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, name: String? = nil, id: String? = nil) {
            
            self.factoryType = factoryType
            
            self.isActive = isActive
            
            self.code = code
            
            self.factoryTypeIds = factoryTypeIds
            
            self.currency = currency
            
            self.applicationId = applicationId
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.departmentIds = departmentIds
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    factoryType = try container.decode(String.self, forKey: .factoryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeIds = try container.decode([String].self, forKey: .factoryTypeIds)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                    departmentIds = try container.decode([Int].self, forKey: .departmentIds)
                
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
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeIds, forKey: .factoryTypeIds)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryResponse
        Used By: Catalog
    */

    class CreateAppPriceFactoryResponse: Codable {
        
        
        public var factoryType: String?
        
        public var isActive: Bool?
        
        public var code: String?
        
        public var factoryTypeIds: [String]?
        
        public var currency: String?
        
        public var applicationId: String?
        
        public var createdOn: String?
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: CreatedBy?
        
        public var name: String?
        
        public var departmentIds: [Int]?
        
        public var modifiedOn: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case factoryType = "factory_type"
            
            case isActive = "is_active"
            
            case code = "code"
            
            case factoryTypeIds = "factory_type_ids"
            
            case currency = "currency"
            
            case applicationId = "application_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case departmentIds = "department_ids"
            
            case modifiedOn = "modified_on"
            
            case id = "_id"
            
        }

        public init(applicationId: String? = nil, code: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, currency: String? = nil, departmentIds: [Int]? = nil, factoryType: String? = nil, factoryTypeIds: [String]? = nil, isActive: Bool? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, name: String? = nil, id: String? = nil) {
            
            self.factoryType = factoryType
            
            self.isActive = isActive
            
            self.code = code
            
            self.factoryTypeIds = factoryTypeIds
            
            self.currency = currency
            
            self.applicationId = applicationId
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.departmentIds = departmentIds
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    factoryType = try container.decode(String.self, forKey: .factoryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeIds = try container.decode([String].self, forKey: .factoryTypeIds)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                    departmentIds = try container.decode([Int].self, forKey: .departmentIds)
                
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
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeIds, forKey: .factoryTypeIds)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


