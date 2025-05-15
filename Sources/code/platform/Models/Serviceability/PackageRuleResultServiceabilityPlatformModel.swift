

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageRuleResult
        Used By: Serviceability
    */

    class PackageRuleResult: Codable {
        
        
        public var id: String?
        
        public var name: String
        
        public var companyId: Int
        
        public var type: String
        
        public var isActive: Bool?
        
        public var productTag: PackageRuleProductTag?
        
        public var productId: PackageRuleProduct?
        
        public var categoryId: PackageRuleCategory?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case isActive = "is_active"
            
            case productTag = "product_tag"
            
            case productId = "product_id"
            
            case categoryId = "category_id"
            
        }

        public init(categoryId: PackageRuleCategory? = nil, companyId: Int, id: String? = nil, isActive: Bool? = nil, name: String, productId: PackageRuleProduct? = nil, productTag: PackageRuleProductTag? = nil, type: String) {
            
            self.id = id
            
            self.name = name
            
            self.companyId = companyId
            
            self.type = type
            
            self.isActive = isActive
            
            self.productTag = productTag
            
            self.productId = productId
            
            self.categoryId = categoryId
            
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    productId = try container.decode(PackageRuleProduct.self, forKey: .productId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode(PackageRuleCategory.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(productTag, forKey: .productTag)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageRuleResult
        Used By: Serviceability
    */

    class PackageRuleResult: Codable {
        
        
        public var id: String?
        
        public var name: String
        
        public var companyId: Int
        
        public var type: String
        
        public var isActive: Bool?
        
        public var productTag: PackageRuleProductTag?
        
        public var productId: PackageRuleProduct?
        
        public var categoryId: PackageRuleCategory?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case type = "type"
            
            case isActive = "is_active"
            
            case productTag = "product_tag"
            
            case productId = "product_id"
            
            case categoryId = "category_id"
            
        }

        public init(categoryId: PackageRuleCategory? = nil, companyId: Int, id: String? = nil, isActive: Bool? = nil, name: String, productId: PackageRuleProduct? = nil, productTag: PackageRuleProductTag? = nil, type: String) {
            
            self.id = id
            
            self.name = name
            
            self.companyId = companyId
            
            self.type = type
            
            self.isActive = isActive
            
            self.productTag = productTag
            
            self.productId = productId
            
            self.categoryId = categoryId
            
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    productId = try container.decode(PackageRuleProduct.self, forKey: .productId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode(PackageRuleCategory.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(productTag, forKey: .productTag)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
        }
        
    }
}


