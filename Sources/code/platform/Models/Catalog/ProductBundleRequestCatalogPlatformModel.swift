

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductBundleRequest
        Used By: Catalog
    */

    class ProductBundleRequest: Codable {
        
        
        public var choice: String
        
        public var companyId: String?
        
        public var createdBy: [String: Any]?
        
        public var createdOn: String?
        
        public var isActive: Bool
        
        public var logo: String?
        
        public var meta: [String: Any]?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var pageVisibility: [String]?
        
        public var products: [ProductBundleItem]
        
        public var sameStoreAssignment: Bool?
        
        public var slug: String
        
        public var autoAddToCart: Bool
        
        public var autoSelect: Bool
        
        public var allowRemove: Bool
        
        public var preferSingleShipment: Bool
        
        public var allowIndividualReturn: Bool
        
        public var allowIndividualCancel: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case choice = "choice"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case pageVisibility = "page_visibility"
            
            case products = "products"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case slug = "slug"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case allowRemove = "allow_remove"
            
            case preferSingleShipment = "prefer_single_shipment"
            
            case allowIndividualReturn = "allow_individual_return"
            
            case allowIndividualCancel = "allow_individual_cancel"
            
        }

        public init(allowIndividualCancel: Bool, allowIndividualReturn: Bool, allowRemove: Bool, autoAddToCart: Bool, autoSelect: Bool, choice: String, companyId: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, preferSingleShipment: Bool, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            
            self.choice = choice
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.meta = meta
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.pageVisibility = pageVisibility
            
            self.products = products
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.slug = slug
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.allowRemove = allowRemove
            
            self.preferSingleShipment = preferSingleShipment
            
            self.allowIndividualReturn = allowIndividualReturn
            
            self.allowIndividualCancel = allowIndividualCancel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                choice = try container.decode(String.self, forKey: .choice)
                
            
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
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
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
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
                
            
            
            
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
                
            
            
            
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
                
            
            
            
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
                
            
            
            
                preferSingleShipment = try container.decode(Bool.self, forKey: .preferSingleShipment)
                
            
            
            
                allowIndividualReturn = try container.decode(Bool.self, forKey: .allowIndividualReturn)
                
            
            
            
                allowIndividualCancel = try container.decode(Bool.self, forKey: .allowIndividualCancel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            
            try? container.encodeIfPresent(preferSingleShipment, forKey: .preferSingleShipment)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualReturn, forKey: .allowIndividualReturn)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualCancel, forKey: .allowIndividualCancel)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductBundleRequest
        Used By: Catalog
    */

    class ProductBundleRequest: Codable {
        
        
        public var choice: String
        
        public var companyId: String?
        
        public var createdBy: [String: Any]?
        
        public var createdOn: String?
        
        public var isActive: Bool
        
        public var logo: String?
        
        public var meta: [String: Any]?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var pageVisibility: [String]?
        
        public var products: [ProductBundleItem]
        
        public var sameStoreAssignment: Bool?
        
        public var slug: String
        
        public var autoAddToCart: Bool
        
        public var autoSelect: Bool
        
        public var allowRemove: Bool
        
        public var preferSingleShipment: Bool
        
        public var allowIndividualReturn: Bool
        
        public var allowIndividualCancel: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case choice = "choice"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case pageVisibility = "page_visibility"
            
            case products = "products"
            
            case sameStoreAssignment = "same_store_assignment"
            
            case slug = "slug"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case allowRemove = "allow_remove"
            
            case preferSingleShipment = "prefer_single_shipment"
            
            case allowIndividualReturn = "allow_individual_return"
            
            case allowIndividualCancel = "allow_individual_cancel"
            
        }

        public init(allowIndividualCancel: Bool, allowIndividualReturn: Bool, allowRemove: Bool, autoAddToCart: Bool, autoSelect: Bool, choice: String, companyId: String? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, preferSingleShipment: Bool, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            
            self.choice = choice
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.meta = meta
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.pageVisibility = pageVisibility
            
            self.products = products
            
            self.sameStoreAssignment = sameStoreAssignment
            
            self.slug = slug
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.allowRemove = allowRemove
            
            self.preferSingleShipment = preferSingleShipment
            
            self.allowIndividualReturn = allowIndividualReturn
            
            self.allowIndividualCancel = allowIndividualCancel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                choice = try container.decode(String.self, forKey: .choice)
                
            
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
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
                
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
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
                
            
            
            
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
                
            
            
            
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
                
            
            
            
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
                
            
            
            
                preferSingleShipment = try container.decode(Bool.self, forKey: .preferSingleShipment)
                
            
            
            
                allowIndividualReturn = try container.decode(Bool.self, forKey: .allowIndividualReturn)
                
            
            
            
                allowIndividualCancel = try container.decode(Bool.self, forKey: .allowIndividualCancel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(choice, forKey: .choice)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            
            try? container.encodeIfPresent(preferSingleShipment, forKey: .preferSingleShipment)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualReturn, forKey: .allowIndividualReturn)
            
            
            
            
            try? container.encodeIfPresent(allowIndividualCancel, forKey: .allowIndividualCancel)
            
            
        }
        
    }
}


