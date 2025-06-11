

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductGroupingModel
        Used By: Catalog
    */
    class ProductGroupingModel: Codable {
        
        public var logo: String?
        
        public var isActive: Bool?
        
        public var meta: [String: Any]?
        
        public var verifiedBy: UserDetail?
        
        public var createdOn: String
        
        public var companyId: Int?
        
        public var pageVisibility: [String]?
        
        public var modifiedOn: String
        
        public var createdBy: UserDetail?
        
        public var modifiedBy: UserDetail?
        
        public var products: [ProductInGroup]
        
        public var allowRemove: Bool?
        
        public var autoAddToCart: Bool?
        
        public var autoSelect: Bool?
        
        public var allowIndividualCancel: Bool?
        
        public var allowIndividualReturn: Bool?
        
        public var preferSingleShipment: Bool?
        
        public var sameStoreAssignment: Bool?
        
        public var id: String?
        
        public var name: String
        
        public var choice: String?
        
        public var slug: String?
        
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
            
            case allowRemove = "allow_remove"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case allowIndividualCancel = "allow_individual_cancel"
            
            case allowIndividualReturn = "allow_individual_return"
            
            case preferSingleShipment = "prefer_single_shipment"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case id = "_id"
            
            case name = "name"
            
            case choice = "choice"
            
            case slug = "slug"
            
            case verifiedOn = "verified_on"
            
        }

        public init(allowIndividualCancel: Bool? = nil, allowIndividualReturn: Bool? = nil, allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, choice: String? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, pageVisibility: [String]? = nil, preferSingleShipment: Bool? = nil, products: [ProductInGroup], sameStoreAssignment: Bool? = nil, slug: String? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, id: String? = nil) {
            
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
            
            self.allowRemove = allowRemove
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.allowIndividualCancel = allowIndividualCancel
            
            self.allowIndividualReturn = allowIndividualReturn
            
            self.preferSingleShipment = preferSingleShipment
            
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
                logo = try container.decode(String.self, forKey: .logo)
            
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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
            
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
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                allowIndividualCancel = try container.decode(Bool.self, forKey: .allowIndividualCancel)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                allowIndividualReturn = try container.decode(Bool.self, forKey: .allowIndividualReturn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                preferSingleShipment = try container.decode(Bool.self, forKey: .preferSingleShipment)
            
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
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            do {
                choice = try container.decode(String.self, forKey: .choice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
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
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
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
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            try? container.encodeIfPresent(allowIndividualCancel, forKey: .allowIndividualCancel)
            
            
            
            try? container.encodeIfPresent(allowIndividualReturn, forKey: .allowIndividualReturn)
            
            
            
            try? container.encodeIfPresent(preferSingleShipment, forKey: .preferSingleShipment)
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
        }
        
    }
}
