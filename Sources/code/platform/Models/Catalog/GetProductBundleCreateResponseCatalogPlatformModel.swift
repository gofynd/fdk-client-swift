

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetProductBundleCreateResponse
        Used By: Catalog
    */

    class GetProductBundleCreateResponse: Codable {
        
        
        public var id: String?
        
        public var sameStoreAssignment: Bool?
        
        public var choice: String
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var companyId: Int?
        
        public var products: [ProductBundleItem]
        
        public var logo: String?
        
        public var isActive: Bool
        
        public var modifiedBy: [String: Any]?
        
        public var pageVisibility: [String]?
        
        public var createdOn: String?
        
        public var slug: String
        
        public var createdBy: [String: Any]?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case choice = "choice"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case products = "products"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case modifiedBy = "modified_by"
            
            case pageVisibility = "page_visibility"
            
            case createdOn = "created_on"
            
            case slug = "slug"
            
            case createdBy = "created_by"
            
            case meta = "meta"
            
        }

        public init(choice: String, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            
            self.id = id
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.choice = choice
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.companyId = companyId
            
            self.products = products
            
            self.logo = logo
            
            self.isActive = isActive
            
            self.modifiedBy = modifiedBy
            
            self.pageVisibility = pageVisibility
            
            self.createdOn = createdOn
            
            self.slug = slug
            
            self.createdBy = createdBy
            
            self.meta = meta
            
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
                
            
            
                do {
                    sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                choice = try container.decode(String.self, forKey: .choice)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                products = try container.decode([ProductBundleItem].self, forKey: .products)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
                
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
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetProductBundleCreateResponse
        Used By: Catalog
    */

    class GetProductBundleCreateResponse: Codable {
        
        
        public var id: String?
        
        public var sameStoreAssignment: Bool?
        
        public var choice: String
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var companyId: Int?
        
        public var products: [ProductBundleItem]
        
        public var logo: String?
        
        public var isActive: Bool
        
        public var modifiedBy: [String: Any]?
        
        public var pageVisibility: [String]?
        
        public var createdOn: String?
        
        public var slug: String
        
        public var createdBy: [String: Any]?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case choice = "choice"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case products = "products"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case modifiedBy = "modified_by"
            
            case pageVisibility = "page_visibility"
            
            case createdOn = "created_on"
            
            case slug = "slug"
            
            case createdBy = "created_by"
            
            case meta = "meta"
            
        }

        public init(choice: String, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            
            self.id = id
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.choice = choice
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.companyId = companyId
            
            self.products = products
            
            self.logo = logo
            
            self.isActive = isActive
            
            self.modifiedBy = modifiedBy
            
            self.pageVisibility = pageVisibility
            
            self.createdOn = createdOn
            
            self.slug = slug
            
            self.createdBy = createdBy
            
            self.meta = meta
            
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
                
            
            
                do {
                    sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                choice = try container.decode(String.self, forKey: .choice)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                products = try container.decode([ProductBundleItem].self, forKey: .products)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
                
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
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


