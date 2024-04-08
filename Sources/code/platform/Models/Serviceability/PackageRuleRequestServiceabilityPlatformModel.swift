

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageRuleRequest
        Used By: Serviceability
    */

    class PackageRuleRequest: Codable {
        
        
        public var name: String
        
        public var companyId: String
        
        public var categoryId: PackageRuleCategory?
        
        public var productId: PackageRuleProduct?
        
        public var productTag: PackageRuleProductTag?
        
        public var departmentId: PackageRuleDepartmentId?
        
        public var productAttributes: PackageRuleProductAttributes?
        
        public var type: String
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case companyId = "company_id"
            
            case categoryId = "category_id"
            
            case productId = "product_id"
            
            case productTag = "product_tag"
            
            case departmentId = "department_id"
            
            case productAttributes = "product_attributes"
            
            case type = "type"
            
            case isActive = "is_active"
            
        }

        public init(categoryId: PackageRuleCategory? = nil, companyId: String, departmentId: PackageRuleDepartmentId? = nil, isActive: Bool? = nil, name: String, productAttributes: PackageRuleProductAttributes? = nil, productId: PackageRuleProduct? = nil, productTag: PackageRuleProductTag? = nil, type: String) {
            
            self.name = name
            
            self.companyId = companyId
            
            self.categoryId = categoryId
            
            self.productId = productId
            
            self.productTag = productTag
            
            self.departmentId = departmentId
            
            self.productAttributes = productAttributes
            
            self.type = type
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
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
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(productTag, forKey: .productTag)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(productAttributes, forKey: .productAttributes)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageRuleRequest
        Used By: Serviceability
    */

    class PackageRuleRequest: Codable {
        
        
        public var name: String
        
        public var companyId: String
        
        public var categoryId: PackageRuleCategory?
        
        public var productId: PackageRuleProduct?
        
        public var productTag: PackageRuleProductTag?
        
        public var departmentId: PackageRuleDepartmentId?
        
        public var productAttributes: PackageRuleProductAttributes?
        
        public var type: String
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case companyId = "company_id"
            
            case categoryId = "category_id"
            
            case productId = "product_id"
            
            case productTag = "product_tag"
            
            case departmentId = "department_id"
            
            case productAttributes = "product_attributes"
            
            case type = "type"
            
            case isActive = "is_active"
            
        }

        public init(categoryId: PackageRuleCategory? = nil, companyId: String, departmentId: PackageRuleDepartmentId? = nil, isActive: Bool? = nil, name: String, productAttributes: PackageRuleProductAttributes? = nil, productId: PackageRuleProduct? = nil, productTag: PackageRuleProductTag? = nil, type: String) {
            
            self.name = name
            
            self.companyId = companyId
            
            self.categoryId = categoryId
            
            self.productId = productId
            
            self.productTag = productTag
            
            self.departmentId = departmentId
            
            self.productAttributes = productAttributes
            
            self.type = type
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
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
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(productTag, forKey: .productTag)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(productAttributes, forKey: .productAttributes)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


