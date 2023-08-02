

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductGroupingModel
        Used By: Catalog
    */
    class ProductGroupingModel: Codable {
        
        public var logo: [String: Any]?
        
        public var isActive: Bool?
        
        public var meta: [String: Any]?
        
        public var verifiedBy: UserDetail?
        
        public var createdOn: String
        
        public var companyId: Int?
        
        public var pageVisibility: [[String: Any]]?
        
        public var modifiedOn: String
        
        public var createdBy: UserDetail?
        
        public var modifiedBy: UserDetail?
        
        public var products: [ProductInGroup]
        
        public var sameStoreAssignment: Bool?
        
        public var id: [String: Any]?
        
        public var name: [String: Any]
        
        public var choice: [String: Any]?
        
        public var slug: [String: Any]?
        
        public var verifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case meta = "meta"
            
            case verifiedBy = "verified_by"
            
            case createdOn = "created_on"
            
            case companyId = "company_id"
            
            case pageVisibility = "page_visibility"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case products = "products"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case id = "_id"
            
            case name = "name"
            
            case choice = "choice"
            
            case slug = "slug"
            
            case verifiedOn = "verified_on"
            
        }

        public init(choice: [String: Any]? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: [String: Any]? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, name: [String: Any], pageVisibility: [[String: Any]]? = nil, products: [ProductInGroup], sameStoreAssignment: Bool? = nil, slug: [String: Any]? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, id: [String: Any]? = nil) {
            
            self.logo = logo
            
            self.isActive = isActive
            
            self.meta = meta
            
            self.verifiedBy = verifiedBy
            
            self.createdOn = createdOn
            
            self.companyId = companyId
            
            self.pageVisibility = pageVisibility
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.products = products
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.id = id
            
            self.name = name
            
            self.choice = choice
            
            self.slug = slug
            
            self.verifiedOn = verifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                logo = try container.decode([String: Any].self, forKey: .logo)
            
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
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            
            
            
            do {
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pageVisibility = try container.decode([[String: Any]].self, forKey: .pageVisibility)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            
            
            
            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            products = try container.decode([ProductInGroup].self, forKey: .products)
            
            
            
            
            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode([String: Any].self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            name = try container.decode([String: Any].self, forKey: .name)
            
            
            
            
            do {
                choice = try container.decode([String: Any].self, forKey: .choice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slug = try container.decode([String: Any].self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
        }
        
    }
}
