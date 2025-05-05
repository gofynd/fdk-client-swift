

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppInventoryConfig
        Used By: Configuration
    */

    class AppInventoryConfig: Codable {
        
        
        public var deliveryStrategy: DeliveryStrategy?
        
        public var brand: InventoryBrand?
        
        public var store: InventoryStore?
        
        public var category: InventoryCategory?
        
        public var price: InventoryPrice?
        
        public var discount: InventoryDiscount?
        
        public var outOfStock: Bool?
        
        public var onlyVerifiedProducts: Bool?
        
        public var franchiseEnabled: Bool?
        
        public var excludeCategory: [[String: Any]]?
        
        public var image: [String]?
        
        public var companyStore: [[String: Any]]?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryStrategy = "delivery_strategy"
            
            case brand = "brand"
            
            case store = "store"
            
            case category = "category"
            
            case price = "price"
            
            case discount = "discount"
            
            case outOfStock = "out_of_stock"
            
            case onlyVerifiedProducts = "only_verified_products"
            
            case franchiseEnabled = "franchise_enabled"
            
            case excludeCategory = "exclude_category"
            
            case image = "image"
            
            case companyStore = "company_store"
            
            case companyId = "company_id"
            
        }

        public init(brand: InventoryBrand? = nil, category: InventoryCategory? = nil, companyId: Int? = nil, companyStore: [[String: Any]]? = nil, deliveryStrategy: DeliveryStrategy? = nil, discount: InventoryDiscount? = nil, excludeCategory: [[String: Any]]? = nil, franchiseEnabled: Bool? = nil, image: [String]? = nil, onlyVerifiedProducts: Bool? = nil, outOfStock: Bool? = nil, price: InventoryPrice? = nil, store: InventoryStore? = nil) {
            
            self.deliveryStrategy = deliveryStrategy
            
            self.brand = brand
            
            self.store = store
            
            self.category = category
            
            self.price = price
            
            self.discount = discount
            
            self.outOfStock = outOfStock
            
            self.onlyVerifiedProducts = onlyVerifiedProducts
            
            self.franchiseEnabled = franchiseEnabled
            
            self.excludeCategory = excludeCategory
            
            self.image = image
            
            self.companyStore = companyStore
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryStrategy = try container.decode(DeliveryStrategy.self, forKey: .deliveryStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(InventoryBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(InventoryStore.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    category = try container.decode(InventoryCategory.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(InventoryPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(InventoryDiscount.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    onlyVerifiedProducts = try container.decode(Bool.self, forKey: .onlyVerifiedProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeCategory = try container.decode([[String: Any]].self, forKey: .excludeCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode([String].self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyStore = try container.decode([[String: Any]].self, forKey: .companyStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryStrategy, forKey: .deliveryStrategy)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(onlyVerifiedProducts, forKey: .onlyVerifiedProducts)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(excludeCategory, forKey: .excludeCategory)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(companyStore, forKey: .companyStore)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppInventoryConfig
        Used By: Configuration
    */

    class AppInventoryConfig: Codable {
        
        
        public var deliveryStrategy: DeliveryStrategy?
        
        public var brand: InventoryBrand?
        
        public var store: InventoryStore?
        
        public var category: InventoryCategory?
        
        public var price: InventoryPrice?
        
        public var discount: InventoryDiscount?
        
        public var outOfStock: Bool?
        
        public var onlyVerifiedProducts: Bool?
        
        public var franchiseEnabled: Bool?
        
        public var excludeCategory: [[String: Any]]?
        
        public var image: [String]?
        
        public var companyStore: [[String: Any]]?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryStrategy = "delivery_strategy"
            
            case brand = "brand"
            
            case store = "store"
            
            case category = "category"
            
            case price = "price"
            
            case discount = "discount"
            
            case outOfStock = "out_of_stock"
            
            case onlyVerifiedProducts = "only_verified_products"
            
            case franchiseEnabled = "franchise_enabled"
            
            case excludeCategory = "exclude_category"
            
            case image = "image"
            
            case companyStore = "company_store"
            
            case companyId = "company_id"
            
        }

        public init(brand: InventoryBrand? = nil, category: InventoryCategory? = nil, companyId: Int? = nil, companyStore: [[String: Any]]? = nil, deliveryStrategy: DeliveryStrategy? = nil, discount: InventoryDiscount? = nil, excludeCategory: [[String: Any]]? = nil, franchiseEnabled: Bool? = nil, image: [String]? = nil, onlyVerifiedProducts: Bool? = nil, outOfStock: Bool? = nil, price: InventoryPrice? = nil, store: InventoryStore? = nil) {
            
            self.deliveryStrategy = deliveryStrategy
            
            self.brand = brand
            
            self.store = store
            
            self.category = category
            
            self.price = price
            
            self.discount = discount
            
            self.outOfStock = outOfStock
            
            self.onlyVerifiedProducts = onlyVerifiedProducts
            
            self.franchiseEnabled = franchiseEnabled
            
            self.excludeCategory = excludeCategory
            
            self.image = image
            
            self.companyStore = companyStore
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryStrategy = try container.decode(DeliveryStrategy.self, forKey: .deliveryStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(InventoryBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(InventoryStore.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    category = try container.decode(InventoryCategory.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(InventoryPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(InventoryDiscount.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    onlyVerifiedProducts = try container.decode(Bool.self, forKey: .onlyVerifiedProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeCategory = try container.decode([[String: Any]].self, forKey: .excludeCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode([String].self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyStore = try container.decode([[String: Any]].self, forKey: .companyStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryStrategy, forKey: .deliveryStrategy)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(onlyVerifiedProducts, forKey: .onlyVerifiedProducts)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(excludeCategory, forKey: .excludeCategory)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(companyStore, forKey: .companyStore)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}


