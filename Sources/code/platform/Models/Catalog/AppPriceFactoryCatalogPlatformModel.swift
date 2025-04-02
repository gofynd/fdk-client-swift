

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppPriceFactory
        Used By: Catalog
    */

    class AppPriceFactory: Codable {
        
        
        public var id: String?
        
        public var applicationId: String
        
        public var departmentIds: [Int]
        
        public var factoryType: String
        
        public var factoryTypeIds: [String]
        
        public var code: String
        
        public var name: String
        
        public var isActive: Bool
        
        public var currency: String
        
        public var createdBy: [String: Any]?
        
        public var modifiedBy: [String: Any]?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case departmentIds = "department_ids"
            
            case factoryType = "factory_type"
            
            case factoryTypeIds = "factory_type_ids"
            
            case code = "code"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case currency = "currency"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(applicationId: String, code: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, currency: String, departmentIds: [Int], factoryType: String, factoryTypeIds: [String], isActive: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, id: String? = nil) {
            
            self.id = id
            
            self.applicationId = applicationId
            
            self.departmentIds = departmentIds
            
            self.factoryType = factoryType
            
            self.factoryTypeIds = factoryTypeIds
            
            self.code = code
            
            self.name = name
            
            self.isActive = isActive
            
            self.currency = currency
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                departmentIds = try container.decode([Int].self, forKey: .departmentIds)
                
            
            
            
                factoryType = try container.decode(String.self, forKey: .factoryType)
                
            
            
            
                factoryTypeIds = try container.decode([String].self, forKey: .factoryTypeIds)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeIds, forKey: .factoryTypeIds)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppPriceFactory
        Used By: Catalog
    */

    class AppPriceFactory: Codable {
        
        
        public var id: String?
        
        public var applicationId: String
        
        public var departmentIds: [Int]
        
        public var factoryType: String
        
        public var factoryTypeIds: [String]
        
        public var code: String
        
        public var name: String
        
        public var isActive: Bool
        
        public var currency: String
        
        public var createdBy: [String: Any]?
        
        public var modifiedBy: [String: Any]?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case departmentIds = "department_ids"
            
            case factoryType = "factory_type"
            
            case factoryTypeIds = "factory_type_ids"
            
            case code = "code"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case currency = "currency"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(applicationId: String, code: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, currency: String, departmentIds: [Int], factoryType: String, factoryTypeIds: [String], isActive: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, id: String? = nil) {
            
            self.id = id
            
            self.applicationId = applicationId
            
            self.departmentIds = departmentIds
            
            self.factoryType = factoryType
            
            self.factoryTypeIds = factoryTypeIds
            
            self.code = code
            
            self.name = name
            
            self.isActive = isActive
            
            self.currency = currency
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                departmentIds = try container.decode([Int].self, forKey: .departmentIds)
                
            
            
            
                factoryType = try container.decode(String.self, forKey: .factoryType)
                
            
            
            
                factoryTypeIds = try container.decode([String].self, forKey: .factoryTypeIds)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(departmentIds, forKey: .departmentIds)
            
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeIds, forKey: .factoryTypeIds)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}


