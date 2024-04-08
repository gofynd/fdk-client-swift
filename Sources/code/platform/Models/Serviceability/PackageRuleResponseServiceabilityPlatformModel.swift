

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageRuleResponse
        Used By: Serviceability
    */

    class PackageRuleResponse: Codable {
        
        
        public var isActive: Bool?
        
        public var companyId: Int
        
        public var productTag: PackageRuleProductTag?
        
        public var departmentId: PackageRuleDepartmentId?
        
        public var productAttributes: PackageRuleProductAttributes?
        
        public var name: String
        
        public var categoryId: PackageRuleCategory?
        
        public var productId: PackageRuleProduct?
        
        public var type: String
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case productTag = "product_tag"
            
            case departmentId = "department_id"
            
            case productAttributes = "product_attributes"
            
            case name = "name"
            
            case categoryId = "category_id"
            
            case productId = "product_id"
            
            case type = "type"
            
            case id = "id"
            
        }

        public init(categoryId: PackageRuleCategory? = nil, companyId: Int, departmentId: PackageRuleDepartmentId? = nil, id: String? = nil, isActive: Bool? = nil, name: String, productAttributes: PackageRuleProductAttributes? = nil, productId: PackageRuleProduct? = nil, productTag: PackageRuleProductTag? = nil, type: String) {
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.productTag = productTag
            
            self.departmentId = departmentId
            
            self.productAttributes = productAttributes
            
            self.name = name
            
            self.categoryId = categoryId
            
            self.productId = productId
            
            self.type = type
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    productTag = try container.decode(PackageRuleProductTag.self, forKey: .productTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departmentId = try container.decode(PackageRuleDepartmentId.self, forKey: .departmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productAttributes = try container.decode(PackageRuleProductAttributes.self, forKey: .productAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    categoryId = try container.decode(PackageRuleCategory.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productId = try container.decode(PackageRuleProduct.self, forKey: .productId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(productTag, forKey: .productTag)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(productAttributes, forKey: .productAttributes)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageRuleResponse
        Used By: Serviceability
    */

    class PackageRuleResponse: Codable {
        
        
        public var isActive: Bool?
        
        public var companyId: Int
        
        public var productTag: PackageRuleProductTag?
        
        public var departmentId: PackageRuleDepartmentId?
        
        public var productAttributes: PackageRuleProductAttributes?
        
        public var name: String
        
        public var categoryId: PackageRuleCategory?
        
        public var productId: PackageRuleProduct?
        
        public var type: String
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case companyId = "company_id"
            
            case productTag = "product_tag"
            
            case departmentId = "department_id"
            
            case productAttributes = "product_attributes"
            
            case name = "name"
            
            case categoryId = "category_id"
            
            case productId = "product_id"
            
            case type = "type"
            
            case id = "id"
            
        }

        public init(categoryId: PackageRuleCategory? = nil, companyId: Int, departmentId: PackageRuleDepartmentId? = nil, id: String? = nil, isActive: Bool? = nil, name: String, productAttributes: PackageRuleProductAttributes? = nil, productId: PackageRuleProduct? = nil, productTag: PackageRuleProductTag? = nil, type: String) {
            
            self.isActive = isActive
            
            self.companyId = companyId
            
            self.productTag = productTag
            
            self.departmentId = departmentId
            
            self.productAttributes = productAttributes
            
            self.name = name
            
            self.categoryId = categoryId
            
            self.productId = productId
            
            self.type = type
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    productTag = try container.decode(PackageRuleProductTag.self, forKey: .productTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departmentId = try container.decode(PackageRuleDepartmentId.self, forKey: .departmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productAttributes = try container.decode(PackageRuleProductAttributes.self, forKey: .productAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    categoryId = try container.decode(PackageRuleCategory.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productId = try container.decode(PackageRuleProduct.self, forKey: .productId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(productTag, forKey: .productTag)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(productAttributes, forKey: .productAttributes)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


