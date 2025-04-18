

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppInventoryConfig
        Used By: Configuration
    */

    class AppInventoryConfig: Codable {
        
        
        public var brand: InventoryBrand?
        
        public var store: InventoryStore?
        
        public var category: InventoryCategory?
        
        public var price: InventoryPrice?
        
        public var discount: InventoryDiscount?
        
        public var pricingStrategy: PricingStrategy?
        
        public var outOfStock: Bool?
        
        public var onlyVerifiedProducts: Bool?
        
        public var franchiseEnabled: Bool?
        
        public var excludeCategory: [Int]?
        
        public var image: [String]?
        
        public var companyStore: [Int]?
        
        public var companyId: Int?
        
        public var enableZoneOverlapping: Bool?
        
        public var sortPopularFirst: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case store = "store"
            
            case category = "category"
            
            case price = "price"
            
            case discount = "discount"
            
            case pricingStrategy = "pricing_strategy"
            
            case outOfStock = "out_of_stock"
            
            case onlyVerifiedProducts = "only_verified_products"
            
            case franchiseEnabled = "franchise_enabled"
            
            case excludeCategory = "exclude_category"
            
            case image = "image"
            
            case companyStore = "company_store"
            
            case companyId = "company_id"
            
            case enableZoneOverlapping = "enable_zone_overlapping"
            
            case sortPopularFirst = "sort_popular_first"
            
        }

        public init(brand: InventoryBrand? = nil, category: InventoryCategory? = nil, companyId: Int? = nil, companyStore: [Int]? = nil, discount: InventoryDiscount? = nil, enableZoneOverlapping: Bool? = nil, excludeCategory: [Int]? = nil, franchiseEnabled: Bool? = nil, image: [String]? = nil, onlyVerifiedProducts: Bool? = nil, outOfStock: Bool? = nil, price: InventoryPrice? = nil, pricingStrategy: PricingStrategy? = nil, sortPopularFirst: Bool? = nil, store: InventoryStore? = nil) {
            
            self.brand = brand
            
            self.store = store
            
            self.category = category
            
            self.price = price
            
            self.discount = discount
            
            self.pricingStrategy = pricingStrategy
            
            self.outOfStock = outOfStock
            
            self.onlyVerifiedProducts = onlyVerifiedProducts
            
            self.franchiseEnabled = franchiseEnabled
            
            self.excludeCategory = excludeCategory
            
            self.image = image
            
            self.companyStore = companyStore
            
            self.companyId = companyId
            
            self.enableZoneOverlapping = enableZoneOverlapping
            
            self.sortPopularFirst = sortPopularFirst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    pricingStrategy = try container.decode(PricingStrategy.self, forKey: .pricingStrategy)
                
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
                    excludeCategory = try container.decode([Int].self, forKey: .excludeCategory)
                
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
                    companyStore = try container.decode([Int].self, forKey: .companyStore)
                
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
                
            
            
                do {
                    enableZoneOverlapping = try container.decode(Bool.self, forKey: .enableZoneOverlapping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortPopularFirst = try container.decode(Bool.self, forKey: .sortPopularFirst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(pricingStrategy, forKey: .pricingStrategy)
            
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(onlyVerifiedProducts, forKey: .onlyVerifiedProducts)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(excludeCategory, forKey: .excludeCategory)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(companyStore, forKey: .companyStore)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(enableZoneOverlapping, forKey: .enableZoneOverlapping)
            
            
            
            
            try? container.encodeIfPresent(sortPopularFirst, forKey: .sortPopularFirst)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppInventoryConfig
        Used By: Configuration
    */

    class AppInventoryConfig: Codable {
        
        
        public var brand: InventoryBrand?
        
        public var store: InventoryStore?
        
        public var category: InventoryCategory?
        
        public var price: InventoryPrice?
        
        public var discount: InventoryDiscount?
        
        public var pricingStrategy: PricingStrategy?
        
        public var outOfStock: Bool?
        
        public var onlyVerifiedProducts: Bool?
        
        public var franchiseEnabled: Bool?
        
        public var excludeCategory: [Int]?
        
        public var image: [String]?
        
        public var companyStore: [Int]?
        
        public var companyId: Int?
        
        public var enableZoneOverlapping: Bool?
        
        public var sortPopularFirst: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case store = "store"
            
            case category = "category"
            
            case price = "price"
            
            case discount = "discount"
            
            case pricingStrategy = "pricing_strategy"
            
            case outOfStock = "out_of_stock"
            
            case onlyVerifiedProducts = "only_verified_products"
            
            case franchiseEnabled = "franchise_enabled"
            
            case excludeCategory = "exclude_category"
            
            case image = "image"
            
            case companyStore = "company_store"
            
            case companyId = "company_id"
            
            case enableZoneOverlapping = "enable_zone_overlapping"
            
            case sortPopularFirst = "sort_popular_first"
            
        }

        public init(brand: InventoryBrand? = nil, category: InventoryCategory? = nil, companyId: Int? = nil, companyStore: [Int]? = nil, discount: InventoryDiscount? = nil, enableZoneOverlapping: Bool? = nil, excludeCategory: [Int]? = nil, franchiseEnabled: Bool? = nil, image: [String]? = nil, onlyVerifiedProducts: Bool? = nil, outOfStock: Bool? = nil, price: InventoryPrice? = nil, pricingStrategy: PricingStrategy? = nil, sortPopularFirst: Bool? = nil, store: InventoryStore? = nil) {
            
            self.brand = brand
            
            self.store = store
            
            self.category = category
            
            self.price = price
            
            self.discount = discount
            
            self.pricingStrategy = pricingStrategy
            
            self.outOfStock = outOfStock
            
            self.onlyVerifiedProducts = onlyVerifiedProducts
            
            self.franchiseEnabled = franchiseEnabled
            
            self.excludeCategory = excludeCategory
            
            self.image = image
            
            self.companyStore = companyStore
            
            self.companyId = companyId
            
            self.enableZoneOverlapping = enableZoneOverlapping
            
            self.sortPopularFirst = sortPopularFirst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    pricingStrategy = try container.decode(PricingStrategy.self, forKey: .pricingStrategy)
                
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
                    excludeCategory = try container.decode([Int].self, forKey: .excludeCategory)
                
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
                    companyStore = try container.decode([Int].self, forKey: .companyStore)
                
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
                
            
            
                do {
                    enableZoneOverlapping = try container.decode(Bool.self, forKey: .enableZoneOverlapping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortPopularFirst = try container.decode(Bool.self, forKey: .sortPopularFirst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(pricingStrategy, forKey: .pricingStrategy)
            
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(onlyVerifiedProducts, forKey: .onlyVerifiedProducts)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(excludeCategory, forKey: .excludeCategory)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(companyStore, forKey: .companyStore)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(enableZoneOverlapping, forKey: .enableZoneOverlapping)
            
            
            
            
            try? container.encodeIfPresent(sortPopularFirst, forKey: .sortPopularFirst)
            
            
        }
        
    }
}


