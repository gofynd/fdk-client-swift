

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductBundleUpdateRequestSchema
        Used By: Catalog
    */

    class ProductBundleUpdateRequestSchema: Codable {
        
        
        public var choice: String
        
        public var companyId: Int?
        
        public var isActive: Bool
        
        public var logo: String?
        
        public var meta: [String: Any]?
        
        public var name: String
        
        public var pageVisibility: [String]?
        
        public var products: [ProductBundleItem]
        
        public var sameStoreAssignment: Bool?
        
        public var slug: String
        
        public var modifiedBy: UserInfo?
        
        public var modifiedOn: String?
        
        public var allowIndividualCancel: Bool?
        
        public var allowIndividualReturn: Bool?
        
        public var allowRemove: Bool?
        
        public var autoAddToCart: Bool?
        
        public var autoSelect: Bool?
        
        public var preferSingleShipment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case choice = "choice"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case name = "name"
            
            case pageVisibility = "page_visibility"
            
            case products = "products"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case slug = "slug"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case allowIndividualCancel = "allow_individual_cancel"
            
            case allowIndividualReturn = "allow_individual_return"
            
            case allowRemove = "allow_remove"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case preferSingleShipment = "prefer_single_shipment"
            
        }

        public init(allowIndividualCancel: Bool? = nil, allowIndividualReturn: Bool? = nil, allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, preferSingleShipment: Bool? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            
            self.choice = choice
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.meta = meta
            
            self.name = name
            
            self.pageVisibility = pageVisibility
            
            self.products = products
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.slug = slug
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.allowIndividualCancel = allowIndividualCancel
            
            self.allowIndividualReturn = allowIndividualReturn
            
            self.allowRemove = allowRemove
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.preferSingleShipment = preferSingleShipment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                choice = try container.decode(String.self, forKey: .choice)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                products = try container.decode([ProductBundleItem].self, forKey: .products)
                
            
            
            
                do {
                    sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
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
                    preferSingleShipment = try container.decode(Bool.self, forKey: .preferSingleShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualCancel, forKey: .allowIndividualCancel)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualReturn, forKey: .allowIndividualReturn)
            
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            
            try? container.encodeIfPresent(preferSingleShipment, forKey: .preferSingleShipment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductBundleUpdateRequestSchema
        Used By: Catalog
    */

    class ProductBundleUpdateRequestSchema: Codable {
        
        
        public var choice: String
        
        public var companyId: Int?
        
        public var isActive: Bool
        
        public var logo: String?
        
        public var meta: [String: Any]?
        
        public var name: String
        
        public var pageVisibility: [String]?
        
        public var products: [ProductBundleItem]
        
        public var sameStoreAssignment: Bool?
        
        public var slug: String
        
        public var modifiedBy: UserInfo?
        
        public var modifiedOn: String?
        
        public var allowIndividualCancel: Bool?
        
        public var allowIndividualReturn: Bool?
        
        public var allowRemove: Bool?
        
        public var autoAddToCart: Bool?
        
        public var autoSelect: Bool?
        
        public var preferSingleShipment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case choice = "choice"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case name = "name"
            
            case pageVisibility = "page_visibility"
            
            case products = "products"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case slug = "slug"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case allowIndividualCancel = "allow_individual_cancel"
            
            case allowIndividualReturn = "allow_individual_return"
            
            case allowRemove = "allow_remove"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case preferSingleShipment = "prefer_single_shipment"
            
        }

        public init(allowIndividualCancel: Bool? = nil, allowIndividualReturn: Bool? = nil, allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, preferSingleShipment: Bool? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            
            self.choice = choice
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.meta = meta
            
            self.name = name
            
            self.pageVisibility = pageVisibility
            
            self.products = products
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.slug = slug
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.allowIndividualCancel = allowIndividualCancel
            
            self.allowIndividualReturn = allowIndividualReturn
            
            self.allowRemove = allowRemove
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.preferSingleShipment = preferSingleShipment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                choice = try container.decode(String.self, forKey: .choice)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                products = try container.decode([ProductBundleItem].self, forKey: .products)
                
            
            
            
                do {
                    sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
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
                    preferSingleShipment = try container.decode(Bool.self, forKey: .preferSingleShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualCancel, forKey: .allowIndividualCancel)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualReturn, forKey: .allowIndividualReturn)
            
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            
            try? container.encodeIfPresent(preferSingleShipment, forKey: .preferSingleShipment)
            
            
        }
        
    }
}


