

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: EditAppPriceFactoryRequest
        Used By: Catalog
    */

    class EditAppPriceFactoryRequest: Codable {
        
        
        public var departments: [String]?
        
        public var factoryType: String?
        
        public var factoryTypeIds: [Int]?
        
        public var code: String?
        
        public var name: String?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case factoryType = "factory_type"
            
            case factoryTypeIds = "factory_type_ids"
            
            case code = "code"
            
            case name = "name"
            
            case isActive = "is_active"
            
        }

        public init(code: String? = nil, departments: [String]? = nil, factoryType: String? = nil, factoryTypeIds: [Int]? = nil, isActive: Bool? = nil, name: String? = nil) {
            
            self.departments = departments
            
            self.factoryType = factoryType
            
            self.factoryTypeIds = factoryTypeIds
            
            self.code = code
            
            self.name = name
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryType = try container.decode(String.self, forKey: .factoryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeIds = try container.decode([Int].self, forKey: .factoryTypeIds)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeIds, forKey: .factoryTypeIds)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: EditAppPriceFactoryRequest
        Used By: Catalog
    */

    class EditAppPriceFactoryRequest: Codable {
        
        
        public var departments: [String]?
        
        public var factoryType: String?
        
        public var factoryTypeIds: [Int]?
        
        public var code: String?
        
        public var name: String?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case factoryType = "factory_type"
            
            case factoryTypeIds = "factory_type_ids"
            
            case code = "code"
            
            case name = "name"
            
            case isActive = "is_active"
            
        }

        public init(code: String? = nil, departments: [String]? = nil, factoryType: String? = nil, factoryTypeIds: [Int]? = nil, isActive: Bool? = nil, name: String? = nil) {
            
            self.departments = departments
            
            self.factoryType = factoryType
            
            self.factoryTypeIds = factoryTypeIds
            
            self.code = code
            
            self.name = name
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryType = try container.decode(String.self, forKey: .factoryType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeIds = try container.decode([Int].self, forKey: .factoryTypeIds)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(factoryType, forKey: .factoryType)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeIds, forKey: .factoryTypeIds)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


