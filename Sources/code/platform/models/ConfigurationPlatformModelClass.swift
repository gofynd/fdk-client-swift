import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationInventory
         Used By: Configuration
     */

    class ApplicationInventory: Codable {
        public var inventory: AppInventoryConfig?

        public var authentication: AuthenticationConfig?

        public var articleAssignment: ArticleAssignmentConfig?

        public var rewardPoints: RewardPointsConfig?

        public var cart: AppCartConfig?

        public var payment: AppPaymentConfig?

        public var order: AppOrderConfig?

        public var logistics: AppLogisticsConfig?

        public var business: String?

        public var commsEnabled: Bool?

        public var platforms: [String]?

        public var id: String?

        public var loyaltyPoints: LoyaltyPointsConfig?

        public var app: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var modifiedBy: String?

        public enum CodingKeys: String, CodingKey {
            case inventory

            case authentication

            case articleAssignment = "article_assignment"

            case rewardPoints = "reward_points"

            case cart

            case payment

            case order

            case logistics

            case business

            case commsEnabled = "comms_enabled"

            case platforms

            case id = "_id"

            case loyaltyPoints = "loyalty_points"

            case app

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case modifiedBy = "modified_by"
        }

        public init(app: String?, articleAssignment: ArticleAssignmentConfig?, authentication: AuthenticationConfig?, business: String?, cart: AppCartConfig?, commsEnabled: Bool?, createdAt: String?, inventory: AppInventoryConfig?, logistics: AppLogisticsConfig?, loyaltyPoints: LoyaltyPointsConfig?, modifiedBy: String?, order: AppOrderConfig?, payment: AppPaymentConfig?, platforms: [String]?, rewardPoints: RewardPointsConfig?, updatedAt: String?, id: String?) {
            self.inventory = inventory

            self.authentication = authentication

            self.articleAssignment = articleAssignment

            self.rewardPoints = rewardPoints

            self.cart = cart

            self.payment = payment

            self.order = order

            self.logistics = logistics

            self.business = business

            self.commsEnabled = commsEnabled

            self.platforms = platforms

            self.id = id

            self.loyaltyPoints = loyaltyPoints

            self.app = app

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.modifiedBy = modifiedBy
        }

        public func duplicate() -> ApplicationInventory {
            let dict = self.dictionary!
            let copy = ApplicationInventory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                inventory = try container.decode(AppInventoryConfig.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authentication = try container.decode(AuthenticationConfig.self, forKey: .authentication)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentConfig.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(AppCartConfig.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(AppPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(AppOrderConfig.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logistics = try container.decode(AppLogisticsConfig.self, forKey: .logistics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                business = try container.decode(String.self, forKey: .business)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commsEnabled = try container.decode(Bool.self, forKey: .commsEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String].self, forKey: .platforms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyPoints = try container.decode(LoyaltyPointsConfig.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(authentication, forKey: .authentication)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(logistics, forKey: .logistics)

            try? container.encodeIfPresent(business, forKey: .business)

            try? container.encodeIfPresent(commsEnabled, forKey: .commsEnabled)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }

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

        public var outOfStock: Bool?

        public var onlyVerifiedProducts: Bool?

        public var franchiseEnabled: Bool?

        public var excludeCategory: [[String: Any]]?

        public var image: [String]?

        public var companyStore: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case brand

            case store

            case category

            case price

            case discount

            case outOfStock = "out_of_stock"

            case onlyVerifiedProducts = "only_verified_products"

            case franchiseEnabled = "franchise_enabled"

            case excludeCategory = "exclude_category"

            case image

            case companyStore = "company_store"
        }

        public init(brand: InventoryBrand?, category: InventoryCategory?, companyStore: [[String: Any]]?, discount: InventoryDiscount?, excludeCategory: [[String: Any]]?, franchiseEnabled: Bool?, image: [String]?, onlyVerifiedProducts: Bool?, outOfStock: Bool?, price: InventoryPrice?, store: InventoryStore?) {
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
        }

        public func duplicate() -> AppInventoryConfig {
            let dict = self.dictionary!
            let copy = AppInventoryConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(InventoryBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(InventoryStore.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(InventoryCategory.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(InventoryPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(InventoryDiscount.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                onlyVerifiedProducts = try container.decode(Bool.self, forKey: .onlyVerifiedProducts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeCategory = try container.decode([[String: Any]].self, forKey: .excludeCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyStore = try container.decode([[String: Any]].self, forKey: .companyStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

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
        }
    }

    /*
         Model: InventoryBrand
         Used By: Configuration
     */

    class InventoryBrand: Codable {
        public var criteria: String?

        public var brands: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case brands
        }

        public init(brands: [[String: Any]]?, criteria: String?) {
            self.criteria = criteria

            self.brands = brands
        }

        public func duplicate() -> InventoryBrand {
            let dict = self.dictionary!
            let copy = InventoryBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([[String: Any]].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }

    /*
         Model: InventoryStore
         Used By: Configuration
     */

    class InventoryStore: Codable {
        public var criteria: String?

        public var stores: [[String: Any]]?

        public var rules: AppStoreRules?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case stores

            case rules
        }

        public init(criteria: String?, rules: AppStoreRules?, stores: [[String: Any]]?) {
            self.criteria = criteria

            self.stores = stores

            self.rules = rules
        }

        public func duplicate() -> InventoryStore {
            let dict = self.dictionary!
            let copy = InventoryStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode([[String: Any]].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rules = try container.decode(AppStoreRules.self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(rules, forKey: .rules)
        }
    }

    /*
         Model: AppStoreRules
         Used By: Configuration
     */

    class AppStoreRules: Codable {
        public var companies: [Int]?

        public var brands: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case companies

            case brands
        }

        public init(brands: [[String: Any]]?, companies: [Int]?) {
            self.companies = companies

            self.brands = brands
        }

        public func duplicate() -> AppStoreRules {
            let dict = self.dictionary!
            let copy = AppStoreRules(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companies = try container.decode([Int].self, forKey: .companies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([[String: Any]].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companies, forKey: .companies)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }

    /*
         Model: InventoryCategory
         Used By: Configuration
     */

    class InventoryCategory: Codable {
        public var criteria: String?

        public var categories: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case categories
        }

        public init(categories: [[String: Any]]?, criteria: String?) {
            self.criteria = criteria

            self.categories = categories
        }

        public func duplicate() -> InventoryCategory {
            let dict = self.dictionary!
            let copy = InventoryCategory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([[String: Any]].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(categories, forKey: .categories)
        }
    }

    /*
         Model: InventoryPrice
         Used By: Configuration
     */

    class InventoryPrice: Codable {
        public var min: Double?

        public var max: Double?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: Double?, min: Double?) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> InventoryPrice {
            let dict = self.dictionary!
            let copy = InventoryPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: InventoryDiscount
         Used By: Configuration
     */

    class InventoryDiscount: Codable {
        public var min: Double?

        public var max: Double?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: Double?, min: Double?) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> InventoryDiscount {
            let dict = self.dictionary!
            let copy = InventoryDiscount(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: AuthenticationConfig
         Used By: Configuration
     */

    class AuthenticationConfig: Codable {
        public var required: Bool?

        public var provider: String?

        public enum CodingKeys: String, CodingKey {
            case required

            case provider
        }

        public init(provider: String?, required: Bool?) {
            self.required = required

            self.provider = provider
        }

        public func duplicate() -> AuthenticationConfig {
            let dict = self.dictionary!
            let copy = AuthenticationConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(provider, forKey: .provider)
        }
    }

    /*
         Model: ArticleAssignmentConfig
         Used By: Configuration
     */

    class ArticleAssignmentConfig: Codable {
        public var rules: ArticleAssignmentRules?

        public var postOrderReassignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case rules

            case postOrderReassignment = "post_order_reassignment"
        }

        public init(postOrderReassignment: Bool?, rules: ArticleAssignmentRules?) {
            self.rules = rules

            self.postOrderReassignment = postOrderReassignment
        }

        public func duplicate() -> ArticleAssignmentConfig {
            let dict = self.dictionary!
            let copy = ArticleAssignmentConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rules = try container.decode(ArticleAssignmentRules.self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rules, forKey: .rules)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
        }
    }

    /*
         Model: ArticleAssignmentRules
         Used By: Configuration
     */

    class ArticleAssignmentRules: Codable {
        public var storePriority: StorePriority?

        public enum CodingKeys: String, CodingKey {
            case storePriority = "store_priority"
        }

        public init(storePriority: StorePriority?) {
            self.storePriority = storePriority
        }

        public func duplicate() -> ArticleAssignmentRules {
            let dict = self.dictionary!
            let copy = ArticleAssignmentRules(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storePriority = try container.decode(StorePriority.self, forKey: .storePriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
        }
    }

    /*
         Model: StorePriority
         Used By: Configuration
     */

    class StorePriority: Codable {
        public var enabled: Bool?

        public var storetypeOrder: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case storetypeOrder = "storetype_order"
        }

        public init(enabled: Bool?, storetypeOrder: [[String: Any]]?) {
            self.enabled = enabled

            self.storetypeOrder = storetypeOrder
        }

        public func duplicate() -> StorePriority {
            let dict = self.dictionary!
            let copy = StorePriority(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storetypeOrder = try container.decode([[String: Any]].self, forKey: .storetypeOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storetypeOrder, forKey: .storetypeOrder)
        }
    }

    /*
         Model: AppCartConfig
         Used By: Configuration
     */

    class AppCartConfig: Codable {
        public var deliveryCharges: DeliveryCharges?

        public var enabled: Bool?

        public var maxCartItems: Int?

        public var minCartValue: Double?

        public var bulkCoupons: Bool?

        public var revenueEngineCoupon: Bool?

        public enum CodingKeys: String, CodingKey {
            case deliveryCharges = "delivery_charges"

            case enabled

            case maxCartItems = "max_cart_items"

            case minCartValue = "min_cart_value"

            case bulkCoupons = "bulk_coupons"

            case revenueEngineCoupon = "revenue_engine_coupon"
        }

        public init(bulkCoupons: Bool?, deliveryCharges: DeliveryCharges?, enabled: Bool?, maxCartItems: Int?, minCartValue: Double?, revenueEngineCoupon: Bool?) {
            self.deliveryCharges = deliveryCharges

            self.enabled = enabled

            self.maxCartItems = maxCartItems

            self.minCartValue = minCartValue

            self.bulkCoupons = bulkCoupons

            self.revenueEngineCoupon = revenueEngineCoupon
        }

        public func duplicate() -> AppCartConfig {
            let dict = self.dictionary!
            let copy = AppCartConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryCharges = try container.decode(DeliveryCharges.self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxCartItems = try container.decode(Int.self, forKey: .maxCartItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minCartValue = try container.decode(Double.self, forKey: .minCartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkCoupons = try container.decode(Bool.self, forKey: .bulkCoupons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(maxCartItems, forKey: .maxCartItems)

            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)

            try? container.encodeIfPresent(bulkCoupons, forKey: .bulkCoupons)

            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
        }
    }

    /*
         Model: DeliveryCharges
         Used By: Configuration
     */

    class DeliveryCharges: Codable {
        public var enabled: Bool?

        public var charges: Charges?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case charges
        }

        public init(charges: Charges?, enabled: Bool?) {
            self.enabled = enabled

            self.charges = charges
        }

        public func duplicate() -> DeliveryCharges {
            let dict = self.dictionary!
            let copy = DeliveryCharges(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode(Charges.self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(charges, forKey: .charges)
        }
    }

    /*
         Model: Charges
         Used By: Configuration
     */

    class Charges: Codable {
        public var threshold: Double?

        public var charges: Double?

        public enum CodingKeys: String, CodingKey {
            case threshold

            case charges
        }

        public init(charges: Double?, threshold: Double?) {
            self.threshold = threshold

            self.charges = charges
        }

        public func duplicate() -> Charges {
            let dict = self.dictionary!
            let copy = Charges(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                threshold = try container.decode(Double.self, forKey: .threshold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode(Double.self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(charges, forKey: .charges)
        }
    }

    /*
         Model: AppPaymentConfig
         Used By: Configuration
     */

    class AppPaymentConfig: Codable {
        public var callbackUrl: CallbackUrl?

        public var methods: Methods?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var modeOfPayment: String?

        public var source: String?

        public var enabled: Bool?

        public var codAmountLimit: Double?

        public var codCharges: Double?

        public enum CodingKeys: String, CodingKey {
            case callbackUrl = "callback_url"

            case methods

            case paymentSelectionLock = "payment_selection_lock"

            case modeOfPayment = "mode_of_payment"

            case source

            case enabled

            case codAmountLimit = "cod_amount_limit"

            case codCharges = "cod_charges"
        }

        public init(callbackUrl: CallbackUrl?, codAmountLimit: Double?, codCharges: Double?, enabled: Bool?, methods: Methods?, modeOfPayment: String?, paymentSelectionLock: PaymentSelectionLock?, source: String?) {
            self.callbackUrl = callbackUrl

            self.methods = methods

            self.paymentSelectionLock = paymentSelectionLock

            self.modeOfPayment = modeOfPayment

            self.source = source

            self.enabled = enabled

            self.codAmountLimit = codAmountLimit

            self.codCharges = codCharges
        }

        public func duplicate() -> AppPaymentConfig {
            let dict = self.dictionary!
            let copy = AppPaymentConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                callbackUrl = try container.decode(CallbackUrl.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                methods = try container.decode(Methods.self, forKey: .methods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codAmountLimit = try container.decode(Double.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(methods, forKey: .methods)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }

    /*
         Model: CallbackUrl
         Used By: Configuration
     */

    class CallbackUrl: Codable {
        public var app: String?

        public var web: String?

        public enum CodingKeys: String, CodingKey {
            case app

            case web
        }

        public init(app: String?, web: String?) {
            self.app = app

            self.web = web
        }

        public func duplicate() -> CallbackUrl {
            let dict = self.dictionary!
            let copy = CallbackUrl(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                web = try container.decode(String.self, forKey: .web)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(web, forKey: .web)
        }
    }

    /*
         Model: Methods
         Used By: Configuration
     */

    class Methods: Codable {
        public var pl: PaymentModeConfig?

        public var card: PaymentModeConfig?

        public var nb: PaymentModeConfig?

        public var wl: PaymentModeConfig?

        public var ps: PaymentModeConfig?

        public var upi: PaymentModeConfig?

        public var qr: PaymentModeConfig?

        public var cod: PaymentModeConfig?

        public var pp: PaymentModeConfig?

        public var jp: PaymentModeConfig?

        public var pac: PaymentModeConfig?

        public var fc: PaymentModeConfig?

        public var jiopp: PaymentModeConfig?

        public var stripepg: PaymentModeConfig?

        public var juspaypg: PaymentModeConfig?

        public var payubizpg: PaymentModeConfig?

        public var payumoneypg: PaymentModeConfig?

        public var rupifipg: PaymentModeConfig?

        public var simpl: PaymentModeConfig?

        public enum CodingKeys: String, CodingKey {
            case pl

            case card

            case nb

            case wl

            case ps

            case upi

            case qr

            case cod

            case pp

            case jp

            case pac

            case fc

            case jiopp

            case stripepg

            case juspaypg

            case payubizpg

            case payumoneypg

            case rupifipg

            case simpl
        }

        public init(card: PaymentModeConfig?, cod: PaymentModeConfig?, fc: PaymentModeConfig?, jiopp: PaymentModeConfig?, jp: PaymentModeConfig?, juspaypg: PaymentModeConfig?, nb: PaymentModeConfig?, pac: PaymentModeConfig?, payubizpg: PaymentModeConfig?, payumoneypg: PaymentModeConfig?, pl: PaymentModeConfig?, pp: PaymentModeConfig?, ps: PaymentModeConfig?, qr: PaymentModeConfig?, rupifipg: PaymentModeConfig?, simpl: PaymentModeConfig?, stripepg: PaymentModeConfig?, upi: PaymentModeConfig?, wl: PaymentModeConfig?) {
            self.pl = pl

            self.card = card

            self.nb = nb

            self.wl = wl

            self.ps = ps

            self.upi = upi

            self.qr = qr

            self.cod = cod

            self.pp = pp

            self.jp = jp

            self.pac = pac

            self.fc = fc

            self.jiopp = jiopp

            self.stripepg = stripepg

            self.juspaypg = juspaypg

            self.payubizpg = payubizpg

            self.payumoneypg = payumoneypg

            self.rupifipg = rupifipg

            self.simpl = simpl
        }

        public func duplicate() -> Methods {
            let dict = self.dictionary!
            let copy = Methods(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pl = try container.decode(PaymentModeConfig.self, forKey: .pl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                card = try container.decode(PaymentModeConfig.self, forKey: .card)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nb = try container.decode(PaymentModeConfig.self, forKey: .nb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                wl = try container.decode(PaymentModeConfig.self, forKey: .wl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ps = try container.decode(PaymentModeConfig.self, forKey: .ps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upi = try container.decode(PaymentModeConfig.self, forKey: .upi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                qr = try container.decode(PaymentModeConfig.self, forKey: .qr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cod = try container.decode(PaymentModeConfig.self, forKey: .cod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pp = try container.decode(PaymentModeConfig.self, forKey: .pp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jp = try container.decode(PaymentModeConfig.self, forKey: .jp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pac = try container.decode(PaymentModeConfig.self, forKey: .pac)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fc = try container.decode(PaymentModeConfig.self, forKey: .fc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jiopp = try container.decode(PaymentModeConfig.self, forKey: .jiopp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripepg = try container.decode(PaymentModeConfig.self, forKey: .stripepg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspaypg = try container.decode(PaymentModeConfig.self, forKey: .juspaypg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payubizpg = try container.decode(PaymentModeConfig.self, forKey: .payubizpg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payumoneypg = try container.decode(PaymentModeConfig.self, forKey: .payumoneypg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifipg = try container.decode(PaymentModeConfig.self, forKey: .rupifipg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(PaymentModeConfig.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pl, forKey: .pl)

            try? container.encodeIfPresent(card, forKey: .card)

            try? container.encodeIfPresent(nb, forKey: .nb)

            try? container.encodeIfPresent(wl, forKey: .wl)

            try? container.encodeIfPresent(ps, forKey: .ps)

            try? container.encodeIfPresent(upi, forKey: .upi)

            try? container.encodeIfPresent(qr, forKey: .qr)

            try? container.encodeIfPresent(cod, forKey: .cod)

            try? container.encodeIfPresent(pp, forKey: .pp)

            try? container.encodeIfPresent(jp, forKey: .jp)

            try? container.encodeIfPresent(pac, forKey: .pac)

            try? container.encodeIfPresent(fc, forKey: .fc)

            try? container.encodeIfPresent(jiopp, forKey: .jiopp)

            try? container.encodeIfPresent(stripepg, forKey: .stripepg)

            try? container.encodeIfPresent(juspaypg, forKey: .juspaypg)

            try? container.encodeIfPresent(payubizpg, forKey: .payubizpg)

            try? container.encodeIfPresent(payumoneypg, forKey: .payumoneypg)

            try? container.encodeIfPresent(rupifipg, forKey: .rupifipg)

            try? container.encodeIfPresent(simpl, forKey: .simpl)
        }
    }

    /*
         Model: PaymentModeConfig
         Used By: Configuration
     */

    class PaymentModeConfig: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> PaymentModeConfig {
            let dict = self.dictionary!
            let copy = PaymentModeConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: PaymentSelectionLock
         Used By: Configuration
     */

    class PaymentSelectionLock: Codable {
        public var enabled: Bool?

        public var defaultOptions: String?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case defaultOptions = "default_options"

            case paymentIdentifier = "payment_identifier"
        }

        public init(defaultOptions: String?, enabled: Bool?, paymentIdentifier: String?) {
            self.enabled = enabled

            self.defaultOptions = defaultOptions

            self.paymentIdentifier = paymentIdentifier
        }

        public func duplicate() -> PaymentSelectionLock {
            let dict = self.dictionary!
            let copy = PaymentSelectionLock(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultOptions = try container.decode(String.self, forKey: .defaultOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }

    /*
         Model: AppOrderConfig
         Used By: Configuration
     */

    class AppOrderConfig: Codable {
        public var enabled: Bool?

        public var forceReassignment: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case forceReassignment = "force_reassignment"

            case message
        }

        public init(enabled: Bool?, forceReassignment: Bool?, message: String?) {
            self.enabled = enabled

            self.forceReassignment = forceReassignment

            self.message = message
        }

        public func duplicate() -> AppOrderConfig {
            let dict = self.dictionary!
            let copy = AppOrderConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: AppLogisticsConfig
         Used By: Configuration
     */

    class AppLogisticsConfig: Codable {
        public var logisticsBySeller: Bool?

        public var serviceabilityCheck: Bool?

        public var sameDayDelivery: Bool?

        public var dpAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case logisticsBySeller = "logistics_by_seller"

            case serviceabilityCheck = "serviceability_check"

            case sameDayDelivery = "same_day_delivery"

            case dpAssignment = "dp_assignment"
        }

        public init(dpAssignment: Bool?, logisticsBySeller: Bool?, sameDayDelivery: Bool?, serviceabilityCheck: Bool?) {
            self.logisticsBySeller = logisticsBySeller

            self.serviceabilityCheck = serviceabilityCheck

            self.sameDayDelivery = sameDayDelivery

            self.dpAssignment = dpAssignment
        }

        public func duplicate() -> AppLogisticsConfig {
            let dict = self.dictionary!
            let copy = AppLogisticsConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logisticsBySeller = try container.decode(Bool.self, forKey: .logisticsBySeller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                serviceabilityCheck = try container.decode(Bool.self, forKey: .serviceabilityCheck)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameDayDelivery = try container.decode(Bool.self, forKey: .sameDayDelivery)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logisticsBySeller, forKey: .logisticsBySeller)

            try? container.encodeIfPresent(serviceabilityCheck, forKey: .serviceabilityCheck)

            try? container.encodeIfPresent(sameDayDelivery, forKey: .sameDayDelivery)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)
        }
    }

    /*
         Model: LoyaltyPointsConfig
         Used By: Configuration
     */

    class LoyaltyPointsConfig: Codable {
        public var enabled: Bool?

        public var autoApply: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case autoApply = "auto_apply"
        }

        public init(autoApply: Bool?, enabled: Bool?) {
            self.enabled = enabled

            self.autoApply = autoApply
        }

        public func duplicate() -> LoyaltyPointsConfig {
            let dict = self.dictionary!
            let copy = LoyaltyPointsConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
        }
    }

    /*
         Model: AppInventoryPartialUpdate
         Used By: Configuration
     */

    class AppInventoryPartialUpdate: Codable {
        public var rewardPoints: RewardPointsConfig?

        public var cart: AppCartConfig?

        public var payment: AppPaymentConfig?

        public var loyaltyPoints: LoyaltyPointsConfig?

        public var commsEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case rewardPoints = "reward_points"

            case cart

            case payment

            case loyaltyPoints = "loyalty_points"

            case commsEnabled = "comms_enabled"
        }

        public init(cart: AppCartConfig?, commsEnabled: Bool?, loyaltyPoints: LoyaltyPointsConfig?, payment: AppPaymentConfig?, rewardPoints: RewardPointsConfig?) {
            self.rewardPoints = rewardPoints

            self.cart = cart

            self.payment = payment

            self.loyaltyPoints = loyaltyPoints

            self.commsEnabled = commsEnabled
        }

        public func duplicate() -> AppInventoryPartialUpdate {
            let dict = self.dictionary!
            let copy = AppInventoryPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(AppCartConfig.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(AppPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyPoints = try container.decode(LoyaltyPointsConfig.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commsEnabled = try container.decode(Bool.self, forKey: .commsEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(commsEnabled, forKey: .commsEnabled)
        }
    }

    /*
         Model: BrandCompanyInfo
         Used By: Configuration
     */

    class BrandCompanyInfo: Codable {
        public var companyName: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyName = "company_name"

            case companyId = "company_id"
        }

        public init(companyId: Int?, companyName: String?) {
            self.companyName = companyName

            self.companyId = companyId
        }

        public func duplicate() -> BrandCompanyInfo {
            let dict = self.dictionary!
            let copy = BrandCompanyInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyName = try container.decode(String.self, forKey: .companyName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: CompanyByBrandsRequest
         Used By: Configuration
     */

    class CompanyByBrandsRequest: Codable {
        public var brands: Int

        public var searchText: String?

        public enum CodingKeys: String, CodingKey {
            case brands

            case searchText = "search_text"
        }

        public init(brands: Int, searchText: String?) {
            self.brands = brands

            self.searchText = searchText
        }

        public func duplicate() -> CompanyByBrandsRequest {
            let dict = self.dictionary!
            let copy = CompanyByBrandsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brands = try container.decode(Int.self, forKey: .brands)

            do {
                searchText = try container.decode(String.self, forKey: .searchText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(searchText, forKey: .searchText)
        }
    }

    /*
         Model: CompanyByBrandsResponse
         Used By: Configuration
     */

    class CompanyByBrandsResponse: Codable {
        public var items: [BrandCompanyInfo]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BrandCompanyInfo]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CompanyByBrandsResponse {
            let dict = self.dictionary!
            let copy = CompanyByBrandsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BrandCompanyInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: StoreByBrandsRequest
         Used By: Configuration
     */

    class StoreByBrandsRequest: Codable {
        public var companyId: Int?

        public var brands: Int

        public var searchText: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case brands

            case searchText = "search_text"
        }

        public init(brands: Int, companyId: Int?, searchText: String?) {
            self.companyId = companyId

            self.brands = brands

            self.searchText = searchText
        }

        public func duplicate() -> StoreByBrandsRequest {
            let dict = self.dictionary!
            let copy = StoreByBrandsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brands = try container.decode(Int.self, forKey: .brands)

            do {
                searchText = try container.decode(String.self, forKey: .searchText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(searchText, forKey: .searchText)
        }
    }

    /*
         Model: StoreByBrandsResponse
         Used By: Configuration
     */

    class StoreByBrandsResponse: Codable {
        public var items: [BrandStoreInfo]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BrandStoreInfo]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> StoreByBrandsResponse {
            let dict = self.dictionary!
            let copy = StoreByBrandsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BrandStoreInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: BrandStoreInfo
         Used By: Configuration
     */

    class BrandStoreInfo: Codable {
        public var storeName: String?

        public var storeId: Int?

        public var storeType: String?

        public var storeCode: String?

        public var storeAddress: OptedStoreAddress?

        public var company: OptedCompany?

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case storeId = "store_id"

            case storeType = "store_type"

            case storeCode = "store_code"

            case storeAddress = "store_address"

            case company
        }

        public init(company: OptedCompany?, storeAddress: OptedStoreAddress?, storeCode: String?, storeId: Int?, storeName: String?, storeType: String?) {
            self.storeName = storeName

            self.storeId = storeId

            self.storeType = storeType

            self.storeCode = storeCode

            self.storeAddress = storeAddress

            self.company = company
        }

        public func duplicate() -> BrandStoreInfo {
            let dict = self.dictionary!
            let copy = BrandStoreInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddress = try container.decode(OptedStoreAddress.self, forKey: .storeAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(OptedCompany.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeAddress, forKey: .storeAddress)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }

    /*
         Model: CompanyBrandInfo
         Used By: Configuration
     */

    class CompanyBrandInfo: Codable {
        public var name: String?

        public var value: Int?

        public var brandLogoUrl: String?

        public var brandBannerUrl: String?

        public var brandBannerPortraitUrl: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case value

            case brandLogoUrl = "brand_logo_url"

            case brandBannerUrl = "brand_banner_url"

            case brandBannerPortraitUrl = "brand_banner_portrait_url"
        }

        public init(brandBannerPortraitUrl: String?, brandBannerUrl: String?, brandLogoUrl: String?, name: String?, value: Int?) {
            self.name = name

            self.value = value

            self.brandLogoUrl = brandLogoUrl

            self.brandBannerUrl = brandBannerUrl

            self.brandBannerPortraitUrl = brandBannerPortraitUrl
        }

        public func duplicate() -> CompanyBrandInfo {
            let dict = self.dictionary!
            let copy = CompanyBrandInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Int.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandLogoUrl = try container.decode(String.self, forKey: .brandLogoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandBannerUrl = try container.decode(String.self, forKey: .brandBannerUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandBannerPortraitUrl = try container.decode(String.self, forKey: .brandBannerPortraitUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(brandLogoUrl, forKey: .brandLogoUrl)

            try? container.encodeIfPresent(brandBannerUrl, forKey: .brandBannerUrl)

            try? container.encodeIfPresent(brandBannerPortraitUrl, forKey: .brandBannerPortraitUrl)
        }
    }

    /*
         Model: BrandsByCompanyResponse
         Used By: Configuration
     */

    class BrandsByCompanyResponse: Codable {
        public var brands: CompanyBrandInfo?

        public enum CodingKeys: String, CodingKey {
            case brands
        }

        public init(brands: CompanyBrandInfo?) {
            self.brands = brands
        }

        public func duplicate() -> BrandsByCompanyResponse {
            let dict = self.dictionary!
            let copy = BrandsByCompanyResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brands = try container.decode(CompanyBrandInfo.self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }

    /*
         Model: CreateApplicationRequest
         Used By: Configuration
     */

    class CreateApplicationRequest: Codable {
        public var app: App?

        public var configuration: AppInventory?

        public var domain: AppDomain?

        public enum CodingKeys: String, CodingKey {
            case app

            case configuration

            case domain
        }

        public init(app: App?, configuration: AppInventory?, domain: AppDomain?) {
            self.app = app

            self.configuration = configuration

            self.domain = domain
        }

        public func duplicate() -> CreateApplicationRequest {
            let dict = self.dictionary!
            let copy = CreateApplicationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(App.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configuration = try container.decode(AppInventory.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(AppDomain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }

    /*
         Model: CreateAppResponse
         Used By: Configuration
     */

    class CreateAppResponse: Codable {
        public var app: Application?

        public var configuration: ApplicationInventory?

        public enum CodingKeys: String, CodingKey {
            case app

            case configuration
        }

        public init(app: Application?, configuration: ApplicationInventory?) {
            self.app = app

            self.configuration = configuration
        }

        public func duplicate() -> CreateAppResponse {
            let dict = self.dictionary!
            let copy = CreateAppResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(Application.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configuration = try container.decode(ApplicationInventory.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }

    /*
         Model: ApplicationsResponse
         Used By: Configuration
     */

    class ApplicationsResponse: Codable {
        public var items: [Application]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [Application]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ApplicationsResponse {
            let dict = self.dictionary!
            let copy = ApplicationsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Application].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: MobileAppConfiguration
         Used By: Configuration
     */

    class MobileAppConfiguration: Codable {
        public var isActive: Bool?

        public var id: String?

        public var appName: String?

        public var landingImage: LandingImage?

        public var splashImage: SplashImage?

        public var application: String?

        public var platformType: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public var packageName: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case id = "_id"

            case appName = "app_name"

            case landingImage = "landing_image"

            case splashImage = "splash_image"

            case application

            case platformType = "platform_type"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case packageName = "package_name"
        }

        public init(application: String?, appName: String?, createdAt: String?, isActive: Bool?, landingImage: LandingImage?, packageName: String?, platformType: String?, splashImage: SplashImage?, updatedAt: String?, id: String?, v: Int?) {
            self.isActive = isActive

            self.id = id

            self.appName = appName

            self.landingImage = landingImage

            self.splashImage = splashImage

            self.application = application

            self.platformType = platformType

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.packageName = packageName
        }

        public func duplicate() -> MobileAppConfiguration {
            let dict = self.dictionary!
            let copy = MobileAppConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appName = try container.decode(String.self, forKey: .appName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landingImage = try container.decode(LandingImage.self, forKey: .landingImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                splashImage = try container.decode(SplashImage.self, forKey: .splashImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformType = try container.decode(String.self, forKey: .platformType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(appName, forKey: .appName)

            try? container.encodeIfPresent(landingImage, forKey: .landingImage)

            try? container.encodeIfPresent(splashImage, forKey: .splashImage)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platformType, forKey: .platformType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(packageName, forKey: .packageName)
        }
    }

    /*
         Model: LandingImage
         Used By: Configuration
     */

    class LandingImage: Codable {
        public var aspectRatio: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, secureUrl: String?) {
            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl
        }

        public func duplicate() -> LandingImage {
            let dict = self.dictionary!
            let copy = LandingImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: SplashImage
         Used By: Configuration
     */

    class SplashImage: Codable {
        public var aspectRatio: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, secureUrl: String?) {
            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl
        }

        public func duplicate() -> SplashImage {
            let dict = self.dictionary!
            let copy = SplashImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: MobileAppConfigRequest
         Used By: Configuration
     */

    class MobileAppConfigRequest: Codable {
        public var appName: String?

        public var landingImage: LandingImage?

        public var splashImage: SplashImage?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case appName = "app_name"

            case landingImage = "landing_image"

            case splashImage = "splash_image"

            case isActive = "is_active"
        }

        public init(appName: String?, isActive: Bool?, landingImage: LandingImage?, splashImage: SplashImage?) {
            self.appName = appName

            self.landingImage = landingImage

            self.splashImage = splashImage

            self.isActive = isActive
        }

        public func duplicate() -> MobileAppConfigRequest {
            let dict = self.dictionary!
            let copy = MobileAppConfigRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appName = try container.decode(String.self, forKey: .appName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landingImage = try container.decode(LandingImage.self, forKey: .landingImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                splashImage = try container.decode(SplashImage.self, forKey: .splashImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appName, forKey: .appName)

            try? container.encodeIfPresent(landingImage, forKey: .landingImage)

            try? container.encodeIfPresent(splashImage, forKey: .splashImage)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }

    /*
         Model: BuildVersionHistory
         Used By: Configuration
     */

    class BuildVersionHistory: Codable {
        public var versions: BuildVersion?

        public var latestAvailableVersionName: String?

        public enum CodingKeys: String, CodingKey {
            case versions

            case latestAvailableVersionName = "latest_available_version_name"
        }

        public init(latestAvailableVersionName: String?, versions: BuildVersion?) {
            self.versions = versions

            self.latestAvailableVersionName = latestAvailableVersionName
        }

        public func duplicate() -> BuildVersionHistory {
            let dict = self.dictionary!
            let copy = BuildVersionHistory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                versions = try container.decode(BuildVersion.self, forKey: .versions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latestAvailableVersionName = try container.decode(String.self, forKey: .latestAvailableVersionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(versions, forKey: .versions)

            try? container.encodeIfPresent(latestAvailableVersionName, forKey: .latestAvailableVersionName)
        }
    }

    /*
         Model: BuildVersion
         Used By: Configuration
     */

    class BuildVersion: Codable {
        public var id: String?

        public var application: String?

        public var platformType: String?

        public var buildStatus: String?

        public var versionName: String?

        public var versionCode: Int?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case application

            case platformType = "platform_type"

            case buildStatus = "build_status"

            case versionName = "version_name"

            case versionCode = "version_code"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(application: String?, buildStatus: String?, createdAt: String?, platformType: String?, updatedAt: String?, versionCode: Int?, versionName: String?, id: String?, v: Int?) {
            self.id = id

            self.application = application

            self.platformType = platformType

            self.buildStatus = buildStatus

            self.versionName = versionName

            self.versionCode = versionCode

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        public func duplicate() -> BuildVersion {
            let dict = self.dictionary!
            let copy = BuildVersion(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformType = try container.decode(String.self, forKey: .platformType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buildStatus = try container.decode(String.self, forKey: .buildStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                versionName = try container.decode(String.self, forKey: .versionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                versionCode = try container.decode(Int.self, forKey: .versionCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platformType, forKey: .platformType)

            try? container.encodeIfPresent(buildStatus, forKey: .buildStatus)

            try? container.encodeIfPresent(versionName, forKey: .versionName)

            try? container.encodeIfPresent(versionCode, forKey: .versionCode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: AppSupportedCurrency
         Used By: Configuration
     */

    class AppSupportedCurrency: Codable {
        public var id: String?

        public var supportedCurrency: [String]?

        public var application: String?

        public var defaultCurrency: DefaultCurrency?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case supportedCurrency = "supported_currency"

            case application

            case defaultCurrency = "default_currency"

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(application: String?, createdAt: String?, defaultCurrency: DefaultCurrency?, supportedCurrency: [String]?, updatedAt: String?, id: String?) {
            self.id = id

            self.supportedCurrency = supportedCurrency

            self.application = application

            self.defaultCurrency = defaultCurrency

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        public func duplicate() -> AppSupportedCurrency {
            let dict = self.dictionary!
            let copy = AppSupportedCurrency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supportedCurrency = try container.decode([String].self, forKey: .supportedCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(DefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(supportedCurrency, forKey: .supportedCurrency)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }

    /*
         Model: DefaultCurrency
         Used By: Configuration
     */

    class DefaultCurrency: Codable {
        public var ref: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case ref

            case code
        }

        public init(code: String?, ref: String?) {
            self.ref = ref

            self.code = code
        }

        public func duplicate() -> DefaultCurrency {
            let dict = self.dictionary!
            let copy = DefaultCurrency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ref = try container.decode(String.self, forKey: .ref)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ref, forKey: .ref)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: CurrencyConfig
         Used By: Configuration
     */

    class CurrencyConfig: Codable {
        public var id: String?

        public var isActive: Bool?

        public var name: String?

        public var code: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var decimalDigits: Int?

        public var symbol: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case isActive = "is_active"

            case name

            case code

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case decimalDigits = "decimal_digits"

            case symbol
        }

        public init(code: String?, createdAt: String?, decimalDigits: Int?, isActive: Bool?, name: String?, symbol: String?, updatedAt: String?, id: String?) {
            self.id = id

            self.isActive = isActive

            self.name = name

            self.code = code

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.decimalDigits = decimalDigits

            self.symbol = symbol
        }

        public func duplicate() -> CurrencyConfig {
            let dict = self.dictionary!
            let copy = CurrencyConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)

            try? container.encodeIfPresent(symbol, forKey: .symbol)
        }
    }

    /*
         Model: DomainAdd
         Used By: Configuration
     */

    class DomainAdd: Codable {
        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case name
        }

        public init(name: String?) {
            self.name = name
        }

        public func duplicate() -> DomainAdd {
            let dict = self.dictionary!
            let copy = DomainAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: DomainAddRequest
         Used By: Configuration
     */

    class DomainAddRequest: Codable {
        public var domain: DomainAdd?

        public enum CodingKeys: String, CodingKey {
            case domain
        }

        public init(domain: DomainAdd?) {
            self.domain = domain
        }

        public func duplicate() -> DomainAddRequest {
            let dict = self.dictionary!
            let copy = DomainAddRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domain = try container.decode(DomainAdd.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }

    /*
         Model: DomainsResponse
         Used By: Configuration
     */

    class DomainsResponse: Codable {
        public var domains: [Domain]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [Domain]?) {
            self.domains = domains
        }

        public func duplicate() -> DomainsResponse {
            let dict = self.dictionary!
            let copy = DomainsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domains = try container.decode([Domain].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domains, forKey: .domains)
        }
    }

    /*
         Model: UpdateDomain
         Used By: Configuration
     */

    class UpdateDomain: Codable {
        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"
        }

        public init(id: String?) {
            self.id = id
        }

        public func duplicate() -> UpdateDomain {
            let dict = self.dictionary!
            let copy = UpdateDomain(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: UpdateDomainTypeRequest
         Used By: Configuration
     */

    class UpdateDomainTypeRequest: Codable {
        public var domain: UpdateDomain?

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case domain

            case action
        }

        public init(action: String?, domain: UpdateDomain?) {
            self.domain = domain

            self.action = action
        }

        public func duplicate() -> UpdateDomainTypeRequest {
            let dict = self.dictionary!
            let copy = UpdateDomainTypeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domain = try container.decode(UpdateDomain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }

    /*
         Model: DomainStatusRequest
         Used By: Configuration
     */

    class DomainStatusRequest: Codable {
        public var domainUrl: String?

        public enum CodingKeys: String, CodingKey {
            case domainUrl = "domain_url"
        }

        public init(domainUrl: String?) {
            self.domainUrl = domainUrl
        }

        public func duplicate() -> DomainStatusRequest {
            let dict = self.dictionary!
            let copy = DomainStatusRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domainUrl = try container.decode(String.self, forKey: .domainUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)
        }
    }

    /*
         Model: DomainStatus
         Used By: Configuration
     */

    class DomainStatus: Codable {
        public var display: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case display

            case status
        }

        public init(display: String?, status: Bool?) {
            self.display = display

            self.status = status
        }

        public func duplicate() -> DomainStatus {
            let dict = self.dictionary!
            let copy = DomainStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: DomainStatusResponse
         Used By: Configuration
     */

    class DomainStatusResponse: Codable {
        public var connected: Bool?

        public var status: [DomainStatus]?

        public enum CodingKeys: String, CodingKey {
            case connected

            case status
        }

        public init(connected: Bool?, status: [DomainStatus]?) {
            self.connected = connected

            self.status = status
        }

        public func duplicate() -> DomainStatusResponse {
            let dict = self.dictionary!
            let copy = DomainStatusResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                connected = try container.decode(Bool.self, forKey: .connected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode([DomainStatus].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(connected, forKey: .connected)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: DomainSuggestionsRequest
         Used By: Configuration
     */

    class DomainSuggestionsRequest: Codable {
        public var domainUrl: String?

        public var custom: Bool?

        public enum CodingKeys: String, CodingKey {
            case domainUrl = "domain_url"

            case custom
        }

        public init(custom: Bool?, domainUrl: String?) {
            self.domainUrl = domainUrl

            self.custom = custom
        }

        public func duplicate() -> DomainSuggestionsRequest {
            let dict = self.dictionary!
            let copy = DomainSuggestionsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domainUrl = try container.decode(String.self, forKey: .domainUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                custom = try container.decode(Bool.self, forKey: .custom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domainUrl, forKey: .domainUrl)

            try? container.encodeIfPresent(custom, forKey: .custom)
        }
    }

    /*
         Model: DomainSuggestion
         Used By: Configuration
     */

    class DomainSuggestion: Codable {
        public var name: String

        public var unsupported: Bool?

        public var isAvailable: Bool

        public var price: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case unsupported

            case isAvailable = "is_available"

            case price

            case currency
        }

        public init(currency: String?, isAvailable: Bool, name: String, price: Double?, unsupported: Bool?) {
            self.name = name

            self.unsupported = unsupported

            self.isAvailable = isAvailable

            self.price = price

            self.currency = currency
        }

        public func duplicate() -> DomainSuggestion {
            let dict = self.dictionary!
            let copy = DomainSuggestion(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                unsupported = try container.decode(Bool.self, forKey: .unsupported)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(unsupported, forKey: .unsupported)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: DomainSuggestionsResponse
         Used By: Configuration
     */

    class DomainSuggestionsResponse: Codable {
        public var domains: [DomainSuggestion]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [DomainSuggestion]?) {
            self.domains = domains
        }

        public func duplicate() -> DomainSuggestionsResponse {
            let dict = self.dictionary!
            let copy = DomainSuggestionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domains = try container.decode([DomainSuggestion].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domains, forKey: .domains)
        }
    }

    /*
         Model: GetIntegrationsOptInsResponse
         Used By: Configuration
     */

    class GetIntegrationsOptInsResponse: Codable {
        public var items: [IntegrationOptIn]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [IntegrationOptIn]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetIntegrationsOptInsResponse {
            let dict = self.dictionary!
            let copy = GetIntegrationsOptInsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([IntegrationOptIn].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: IntegrationOptIn
         Used By: Configuration
     */

    class IntegrationOptIn: Codable {
        public var validators: Validators?

        public var description: String?

        public var descriptionHtml: String?

        public var constants: String?

        public var companies: [[String: Any]]?

        public var support: [String]?

        public var id: String?

        public var name: String?

        public var meta: [IntegrationMeta]?

        public var icon: String?

        public var owner: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var token: String?

        public var secret: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case validators

            case description

            case descriptionHtml = "description_html"

            case constants

            case companies

            case support

            case id = "_id"

            case name

            case meta

            case icon

            case owner

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case token

            case secret

            case v = "__v"
        }

        public init(companies: [[String: Any]]?, constants: String?, createdAt: String?, description: String?, descriptionHtml: String?, icon: String?, meta: [IntegrationMeta]?, name: String?, owner: String?, secret: String?, support: [String]?, token: String?, updatedAt: String?, validators: Validators?, id: String?, v: Int?) {
            self.validators = validators

            self.description = description

            self.descriptionHtml = descriptionHtml

            self.constants = constants

            self.companies = companies

            self.support = support

            self.id = id

            self.name = name

            self.meta = meta

            self.icon = icon

            self.owner = owner

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.token = token

            self.secret = secret

            self.v = v
        }

        public func duplicate() -> IntegrationOptIn {
            let dict = self.dictionary!
            let copy = IntegrationOptIn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                validators = try container.decode(Validators.self, forKey: .validators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                descriptionHtml = try container.decode(String.self, forKey: .descriptionHtml)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                constants = try container.decode(String.self, forKey: .constants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companies = try container.decode([[String: Any]].self, forKey: .companies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                support = try container.decode([String].self, forKey: .support)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([IntegrationMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                owner = try container.decode(String.self, forKey: .owner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secret = try container.decode(String.self, forKey: .secret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validators, forKey: .validators)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(descriptionHtml, forKey: .descriptionHtml)

            try? container.encodeIfPresent(constants, forKey: .constants)

            try? container.encodeIfPresent(companies, forKey: .companies)

            try? container.encodeIfPresent(support, forKey: .support)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: Validators
         Used By: Configuration
     */

    class Validators: Codable {
        public var company: CompanyValidator?

        public var store: StoreValidator?

        public var inventory: InventoryValidator?

        public var order: OrderValidator?

        public enum CodingKeys: String, CodingKey {
            case company

            case store

            case inventory

            case order
        }

        public init(company: CompanyValidator?, inventory: InventoryValidator?, order: OrderValidator?, store: StoreValidator?) {
            self.company = company

            self.store = store

            self.inventory = inventory

            self.order = order
        }

        public func duplicate() -> Validators {
            let dict = self.dictionary!
            let copy = Validators(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                company = try container.decode(CompanyValidator.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreValidator.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(InventoryValidator.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderValidator.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }

    /*
         Model: CompanyValidator
         Used By: Configuration
     */

    class CompanyValidator: Codable {
        public var jsonSchema: [JsonSchema]?

        public var browserScript: String?

        public enum CodingKeys: String, CodingKey {
            case jsonSchema = "json_schema"

            case browserScript = "browser_script"
        }

        public init(browserScript: String?, jsonSchema: [JsonSchema]?) {
            self.jsonSchema = jsonSchema

            self.browserScript = browserScript
        }

        public func duplicate() -> CompanyValidator {
            let dict = self.dictionary!
            let copy = CompanyValidator(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jsonSchema = try container.decode([JsonSchema].self, forKey: .jsonSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                browserScript = try container.decode(String.self, forKey: .browserScript)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)

            try? container.encodeIfPresent(browserScript, forKey: .browserScript)
        }
    }

    /*
         Model: JsonSchema
         Used By: Configuration
     */

    class JsonSchema: Codable {
        public var display: String?

        public var key: String?

        public var type: String?

        public var tooltip: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case key

            case type

            case tooltip
        }

        public init(display: String?, key: String?, tooltip: String?, type: String?) {
            self.display = display

            self.key = key

            self.type = type

            self.tooltip = tooltip
        }

        public func duplicate() -> JsonSchema {
            let dict = self.dictionary!
            let copy = JsonSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tooltip = try container.decode(String.self, forKey: .tooltip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tooltip, forKey: .tooltip)
        }
    }

    /*
         Model: StoreValidator
         Used By: Configuration
     */

    class StoreValidator: Codable {
        public var jsonSchema: [JsonSchema]?

        public var browserScript: String?

        public enum CodingKeys: String, CodingKey {
            case jsonSchema = "json_schema"

            case browserScript = "browser_script"
        }

        public init(browserScript: String?, jsonSchema: [JsonSchema]?) {
            self.jsonSchema = jsonSchema

            self.browserScript = browserScript
        }

        public func duplicate() -> StoreValidator {
            let dict = self.dictionary!
            let copy = StoreValidator(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jsonSchema = try container.decode([JsonSchema].self, forKey: .jsonSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                browserScript = try container.decode(String.self, forKey: .browserScript)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)

            try? container.encodeIfPresent(browserScript, forKey: .browserScript)
        }
    }

    /*
         Model: InventoryValidator
         Used By: Configuration
     */

    class InventoryValidator: Codable {
        public var jsonSchema: [JsonSchema]?

        public var browserScript: String?

        public enum CodingKeys: String, CodingKey {
            case jsonSchema = "json_schema"

            case browserScript = "browser_script"
        }

        public init(browserScript: String?, jsonSchema: [JsonSchema]?) {
            self.jsonSchema = jsonSchema

            self.browserScript = browserScript
        }

        public func duplicate() -> InventoryValidator {
            let dict = self.dictionary!
            let copy = InventoryValidator(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jsonSchema = try container.decode([JsonSchema].self, forKey: .jsonSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                browserScript = try container.decode(String.self, forKey: .browserScript)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)

            try? container.encodeIfPresent(browserScript, forKey: .browserScript)
        }
    }

    /*
         Model: OrderValidator
         Used By: Configuration
     */

    class OrderValidator: Codable {
        public var jsonSchema: [JsonSchema]?

        public var browserScript: String?

        public enum CodingKeys: String, CodingKey {
            case jsonSchema = "json_schema"

            case browserScript = "browser_script"
        }

        public init(browserScript: String?, jsonSchema: [JsonSchema]?) {
            self.jsonSchema = jsonSchema

            self.browserScript = browserScript
        }

        public func duplicate() -> OrderValidator {
            let dict = self.dictionary!
            let copy = OrderValidator(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jsonSchema = try container.decode([JsonSchema].self, forKey: .jsonSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                browserScript = try container.decode(String.self, forKey: .browserScript)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(jsonSchema, forKey: .jsonSchema)

            try? container.encodeIfPresent(browserScript, forKey: .browserScript)
        }
    }

    /*
         Model: IntegrationMeta
         Used By: Configuration
     */

    class IntegrationMeta: Codable {
        public var isPublic: Bool?

        public var id: String?

        public var name: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case isPublic = "is_public"

            case id = "_id"

            case name

            case value
        }

        public init(isPublic: Bool?, name: String?, value: String?, id: String?) {
            self.isPublic = isPublic

            self.id = id

            self.name = name

            self.value = value
        }

        public func duplicate() -> IntegrationMeta {
            let dict = self.dictionary!
            let copy = IntegrationMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPublic = try container.decode(Bool.self, forKey: .isPublic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: Integration
         Used By: Configuration
     */

    class Integration: Codable {
        public var validators: Validators?

        public var description: String?

        public var descriptionHtml: String?

        public var constants: [String: Any]?

        public var companies: [[String: Any]]?

        public var support: [String]?

        public var id: String?

        public var name: String?

        public var meta: [IntegrationMeta]?

        public var icon: String?

        public var owner: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var token: String?

        public var secret: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case validators

            case description

            case descriptionHtml = "description_html"

            case constants

            case companies

            case support

            case id = "_id"

            case name

            case meta

            case icon

            case owner

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case token

            case secret

            case v = "__v"
        }

        public init(companies: [[String: Any]]?, constants: [String: Any]?, createdAt: String?, description: String?, descriptionHtml: String?, icon: String?, meta: [IntegrationMeta]?, name: String?, owner: String?, secret: String?, support: [String]?, token: String?, updatedAt: String?, validators: Validators?, id: String?, v: Int?) {
            self.validators = validators

            self.description = description

            self.descriptionHtml = descriptionHtml

            self.constants = constants

            self.companies = companies

            self.support = support

            self.id = id

            self.name = name

            self.meta = meta

            self.icon = icon

            self.owner = owner

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.token = token

            self.secret = secret

            self.v = v
        }

        public func duplicate() -> Integration {
            let dict = self.dictionary!
            let copy = Integration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                validators = try container.decode(Validators.self, forKey: .validators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                descriptionHtml = try container.decode(String.self, forKey: .descriptionHtml)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                constants = try container.decode([String: Any].self, forKey: .constants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companies = try container.decode([[String: Any]].self, forKey: .companies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                support = try container.decode([String].self, forKey: .support)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([IntegrationMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                owner = try container.decode(String.self, forKey: .owner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secret = try container.decode(String.self, forKey: .secret)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validators, forKey: .validators)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(descriptionHtml, forKey: .descriptionHtml)

            try? container.encodeIfPresent(constants, forKey: .constants)

            try? container.encodeIfPresent(companies, forKey: .companies)

            try? container.encodeIfPresent(support, forKey: .support)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: IntegrationConfigResponse
         Used By: Configuration
     */

    class IntegrationConfigResponse: Codable {
        public var items: [IntegrationLevel]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [IntegrationLevel]?) {
            self.items = items
        }

        public func duplicate() -> IntegrationConfigResponse {
            let dict = self.dictionary!
            let copy = IntegrationConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([IntegrationLevel].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: IntegrationLevel
         Used By: Configuration
     */

    class IntegrationLevel: Codable {
        public var opted: Bool?

        public var permissions: [[String: Any]]?

        public var lastPatch: [LastPatch]?

        public var id: String?

        public var integration: String?

        public var level: String?

        public var uid: Int?

        public var meta: [IntegrationMeta]?

        public var token: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case opted

            case permissions

            case lastPatch = "last_patch"

            case id = "_id"

            case integration

            case level

            case uid

            case meta

            case token

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case data
        }

        public init(createdAt: String?, data: [String: Any]?, integration: String?, lastPatch: [LastPatch]?, level: String?, meta: [IntegrationMeta]?, opted: Bool?, permissions: [[String: Any]]?, token: String?, uid: Int?, updatedAt: String?, id: String?, v: Int?) {
            self.opted = opted

            self.permissions = permissions

            self.lastPatch = lastPatch

            self.id = id

            self.integration = integration

            self.level = level

            self.uid = uid

            self.meta = meta

            self.token = token

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.data = data
        }

        public func duplicate() -> IntegrationLevel {
            let dict = self.dictionary!
            let copy = IntegrationLevel(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                opted = try container.decode(Bool.self, forKey: .opted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                permissions = try container.decode([[String: Any]].self, forKey: .permissions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastPatch = try container.decode([LastPatch].self, forKey: .lastPatch)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integration = try container.decode(String.self, forKey: .integration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([IntegrationMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opted, forKey: .opted)

            try? container.encodeIfPresent(permissions, forKey: .permissions)

            try? container.encodeIfPresent(lastPatch, forKey: .lastPatch)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: UpdateIntegrationLevelRequest
         Used By: Configuration
     */

    class UpdateIntegrationLevelRequest: Codable {
        public var items: [IntegrationLevel]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [IntegrationLevel]?) {
            self.items = items
        }

        public func duplicate() -> UpdateIntegrationLevelRequest {
            let dict = self.dictionary!
            let copy = UpdateIntegrationLevelRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([IntegrationLevel].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: OptedStoreIntegration
         Used By: Configuration
     */

    class OptedStoreIntegration: Codable {
        public var otherOpted: Bool?

        public var otherIntegration: IntegrationOptIn?

        public var otherEntity: OtherEntity?

        public enum CodingKeys: String, CodingKey {
            case otherOpted = "other_opted"

            case otherIntegration = "other_integration"

            case otherEntity = "other_entity"
        }

        public init(otherEntity: OtherEntity?, otherIntegration: IntegrationOptIn?, otherOpted: Bool?) {
            self.otherOpted = otherOpted

            self.otherIntegration = otherIntegration

            self.otherEntity = otherEntity
        }

        public func duplicate() -> OptedStoreIntegration {
            let dict = self.dictionary!
            let copy = OptedStoreIntegration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otherOpted = try container.decode(Bool.self, forKey: .otherOpted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherIntegration = try container.decode(IntegrationOptIn.self, forKey: .otherIntegration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherEntity = try container.decode(OtherEntity.self, forKey: .otherEntity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otherOpted, forKey: .otherOpted)

            try? container.encodeIfPresent(otherIntegration, forKey: .otherIntegration)

            try? container.encodeIfPresent(otherEntity, forKey: .otherEntity)
        }
    }

    /*
         Model: OtherEntity
         Used By: Configuration
     */

    class OtherEntity: Codable {
        public var opted: Bool?

        public var permissions: [String]?

        public var lastPatch: [LastPatch]?

        public var id: String?

        public var integration: String?

        public var level: String?

        public var uid: Int?

        public var data: OtherEntityData?

        public var meta: [[String: Any]]?

        public var token: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case opted

            case permissions

            case lastPatch = "last_patch"

            case id = "_id"

            case integration

            case level

            case uid

            case data

            case meta

            case token

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(createdAt: String?, data: OtherEntityData?, integration: String?, lastPatch: [LastPatch]?, level: String?, meta: [[String: Any]]?, opted: Bool?, permissions: [String]?, token: String?, uid: Int?, updatedAt: String?, id: String?, v: Int?) {
            self.opted = opted

            self.permissions = permissions

            self.lastPatch = lastPatch

            self.id = id

            self.integration = integration

            self.level = level

            self.uid = uid

            self.data = data

            self.meta = meta

            self.token = token

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        public func duplicate() -> OtherEntity {
            let dict = self.dictionary!
            let copy = OtherEntity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                opted = try container.decode(Bool.self, forKey: .opted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                permissions = try container.decode([String].self, forKey: .permissions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastPatch = try container.decode([LastPatch].self, forKey: .lastPatch)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integration = try container.decode(String.self, forKey: .integration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(OtherEntityData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opted, forKey: .opted)

            try? container.encodeIfPresent(permissions, forKey: .permissions)

            try? container.encodeIfPresent(lastPatch, forKey: .lastPatch)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: LastPatch
         Used By: Configuration
     */

    class LastPatch: Codable {
        public var op: String?

        public var path: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case op

            case path

            case value
        }

        public init(op: String?, path: String?, value: String?) {
            self.op = op

            self.path = path

            self.value = value
        }

        public func duplicate() -> LastPatch {
            let dict = self.dictionary!
            let copy = LastPatch(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                op = try container.decode(String.self, forKey: .op)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                path = try container.decode(String.self, forKey: .path)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(op, forKey: .op)

            try? container.encodeIfPresent(path, forKey: .path)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: OtherEntityData
         Used By: Configuration
     */

    class OtherEntityData: Codable {
        public var articleIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case articleIdentifier = "article_identifier"
        }

        public init(articleIdentifier: String?) {
            self.articleIdentifier = articleIdentifier
        }

        public func duplicate() -> OtherEntityData {
            let dict = self.dictionary!
            let copy = OtherEntityData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleIdentifier = try container.decode(String.self, forKey: .articleIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleIdentifier, forKey: .articleIdentifier)
        }
    }

    /*
         Model: App
         Used By: Configuration
     */

    class App: Codable {
        public var companyId: String?

        public var channelType: String?

        public var auth: ApplicationAuth?

        public var name: String?

        public var desc: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case channelType = "channel_type"

            case auth

            case name

            case desc
        }

        public init(auth: ApplicationAuth?, channelType: String?, companyId: String?, desc: String?, name: String?) {
            self.companyId = companyId

            self.channelType = channelType

            self.auth = auth

            self.name = name

            self.desc = desc
        }

        public func duplicate() -> App {
            let dict = self.dictionary!
            let copy = App(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(ApplicationAuth.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                desc = try container.decode(String.self, forKey: .desc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(auth, forKey: .auth)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(desc, forKey: .desc)
        }
    }

    /*
         Model: AppInventory
         Used By: Configuration
     */

    class AppInventory: Codable {
        public var brand: InventoryBrandRule?

        public var store: InventoryStoreRule?

        public var image: [String]?

        public var franchiseEnabled: Bool?

        public var outOfStock: Bool?

        public var onlyVerifiedProducts: Bool?

        public var payment: InventoryPaymentConfig?

        public var articleAssignment: InventoryArticleAssignment?

        public enum CodingKeys: String, CodingKey {
            case brand

            case store

            case image

            case franchiseEnabled = "franchise_enabled"

            case outOfStock = "out_of_stock"

            case onlyVerifiedProducts = "only_verified_products"

            case payment

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: InventoryArticleAssignment?, brand: InventoryBrandRule?, franchiseEnabled: Bool?, image: [String]?, onlyVerifiedProducts: Bool?, outOfStock: Bool?, payment: InventoryPaymentConfig?, store: InventoryStoreRule?) {
            self.brand = brand

            self.store = store

            self.image = image

            self.franchiseEnabled = franchiseEnabled

            self.outOfStock = outOfStock

            self.onlyVerifiedProducts = onlyVerifiedProducts

            self.payment = payment

            self.articleAssignment = articleAssignment
        }

        public func duplicate() -> AppInventory {
            let dict = self.dictionary!
            let copy = AppInventory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(InventoryBrandRule.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(InventoryStoreRule.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                onlyVerifiedProducts = try container.decode(Bool.self, forKey: .onlyVerifiedProducts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(InventoryPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(InventoryArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(onlyVerifiedProducts, forKey: .onlyVerifiedProducts)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }

    /*
         Model: AppDomain
         Used By: Configuration
     */

    class AppDomain: Codable {
        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case name
        }

        public init(name: String?) {
            self.name = name
        }

        public func duplicate() -> AppDomain {
            let dict = self.dictionary!
            let copy = AppDomain(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: CompaniesResponse
         Used By: Configuration
     */

    class CompaniesResponse: Codable {
        public var items: AppInventoryCompanies?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: AppInventoryCompanies?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CompaniesResponse {
            let dict = self.dictionary!
            let copy = CompaniesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(AppInventoryCompanies.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: AppInventoryCompanies
         Used By: Configuration
     */

    class AppInventoryCompanies: Codable {
        public var uid: Int?

        public var name: String?

        public var companyType: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name

            case companyType = "company_type"
        }

        public init(companyType: String?, name: String?, uid: Int?) {
            self.uid = uid

            self.name = name

            self.companyType = companyType
        }

        public func duplicate() -> AppInventoryCompanies {
            let dict = self.dictionary!
            let copy = AppInventoryCompanies(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyType, forKey: .companyType)
        }
    }

    /*
         Model: StoresResponse
         Used By: Configuration
     */

    class StoresResponse: Codable {
        public var items: AppInventoryStores?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: AppInventoryStores?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> StoresResponse {
            let dict = self.dictionary!
            let copy = StoresResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(AppInventoryStores.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: AppInventoryStores
         Used By: Configuration
     */

    class AppInventoryStores: Codable {
        public var id: String?

        public var modifiedOn: String?

        public var uid: Int?

        public var name: String?

        public var displayName: String?

        public var storeType: String?

        public var storeCode: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case modifiedOn = "modified_on"

            case uid

            case name

            case displayName = "display_name"

            case storeType = "store_type"

            case storeCode = "store_code"

            case companyId = "company_id"
        }

        public init(companyId: Int?, displayName: String?, modifiedOn: String?, name: String?, storeCode: String?, storeType: String?, uid: Int?, id: String?) {
            self.id = id

            self.modifiedOn = modifiedOn

            self.uid = uid

            self.name = name

            self.displayName = displayName

            self.storeType = storeType

            self.storeCode = storeCode

            self.companyId = companyId
        }

        public func duplicate() -> AppInventoryStores {
            let dict = self.dictionary!
            let copy = AppInventoryStores(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: FilterOrderingStoreRequest
         Used By: Configuration
     */

    class FilterOrderingStoreRequest: Codable {
        public var allStores: Bool?

        public var deployedStores: [Int]?

        public var q: String?

        public enum CodingKeys: String, CodingKey {
            case allStores = "all_stores"

            case deployedStores = "deployed_stores"

            case q
        }

        public init(allStores: Bool?, deployedStores: [Int]?, q: String?) {
            self.allStores = allStores

            self.deployedStores = deployedStores

            self.q = q
        }

        public func duplicate() -> FilterOrderingStoreRequest {
            let dict = self.dictionary!
            let copy = FilterOrderingStoreRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allStores = try container.decode(Bool.self, forKey: .allStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deployedStores = try container.decode([Int].self, forKey: .deployedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                q = try container.decode(String.self, forKey: .q)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStores, forKey: .allStores)

            try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)

            try? container.encodeIfPresent(q, forKey: .q)
        }
    }

    /*
         Model: DeploymentMeta
         Used By: Configuration
     */

    class DeploymentMeta: Codable {
        public var deployedStores: [Int]?

        public var allStores: Bool?

        public var enabled: Bool?

        public var type: String?

        public var id: String?

        public var app: String?

        public enum CodingKeys: String, CodingKey {
            case deployedStores = "deployed_stores"

            case allStores = "all_stores"

            case enabled

            case type

            case id = "_id"

            case app
        }

        public init(allStores: Bool?, app: String?, deployedStores: [Int]?, enabled: Bool?, type: String?, id: String?) {
            self.deployedStores = deployedStores

            self.allStores = allStores

            self.enabled = enabled

            self.type = type

            self.id = id

            self.app = app
        }

        public func duplicate() -> DeploymentMeta {
            let dict = self.dictionary!
            let copy = DeploymentMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deployedStores = try container.decode([Int].self, forKey: .deployedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allStores = try container.decode(Bool.self, forKey: .allStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)

            try? container.encodeIfPresent(allStores, forKey: .allStores)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(app, forKey: .app)
        }
    }

    /*
         Model: OrderingStoreConfig
         Used By: Configuration
     */

    class OrderingStoreConfig: Codable {
        public var deploymentMeta: DeploymentMeta?

        public enum CodingKeys: String, CodingKey {
            case deploymentMeta = "deployment_meta"
        }

        public init(deploymentMeta: DeploymentMeta?) {
            self.deploymentMeta = deploymentMeta
        }

        public func duplicate() -> OrderingStoreConfig {
            let dict = self.dictionary!
            let copy = OrderingStoreConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deploymentMeta = try container.decode(DeploymentMeta.self, forKey: .deploymentMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deploymentMeta, forKey: .deploymentMeta)
        }
    }

    /*
         Model: OtherSellerCompany
         Used By: Configuration
     */

    class OtherSellerCompany: Codable {
        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name
        }

        public init(name: String?, uid: Int?) {
            self.uid = uid

            self.name = name
        }

        public func duplicate() -> OtherSellerCompany {
            let dict = self.dictionary!
            let copy = OtherSellerCompany(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: OtherSellerApplication
         Used By: Configuration
     */

    class OtherSellerApplication: Codable {
        public var name: String?

        public var description: String?

        public var id: String?

        public var domain: String?

        public var company: OtherSellerCompany?

        public var optType: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case id = "_id"

            case domain

            case company

            case optType = "opt_type"
        }

        public init(company: OtherSellerCompany?, description: String?, domain: String?, name: String?, optType: String?, id: String?) {
            self.name = name

            self.description = description

            self.id = id

            self.domain = domain

            self.company = company

            self.optType = optType
        }

        public func duplicate() -> OtherSellerApplication {
            let dict = self.dictionary!
            let copy = OtherSellerApplication(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(String.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(OtherSellerCompany.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optType = try container.decode(String.self, forKey: .optType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(optType, forKey: .optType)
        }
    }

    /*
         Model: OtherSellerApplications
         Used By: Configuration
     */

    class OtherSellerApplications: Codable {
        public var items: [OtherSellerApplication]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [OtherSellerApplication]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> OtherSellerApplications {
            let dict = self.dictionary!
            let copy = OtherSellerApplications(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([OtherSellerApplication].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: OptedApplicationResponse
         Used By: Configuration
     */

    class OptedApplicationResponse: Codable {
        public var name: String?

        public var description: String?

        public var id: String?

        public var domain: String?

        public var company: OptedCompany?

        public var optedInventory: OptedInventory?

        public var optOutInventory: OptOutInventory?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case id = "_id"

            case domain

            case company

            case optedInventory = "opted_inventory"

            case optOutInventory = "opt_out_inventory"
        }

        public init(company: OptedCompany?, description: String?, domain: String?, name: String?, optedInventory: OptedInventory?, optOutInventory: OptOutInventory?, id: String?) {
            self.name = name

            self.description = description

            self.id = id

            self.domain = domain

            self.company = company

            self.optedInventory = optedInventory

            self.optOutInventory = optOutInventory
        }

        public func duplicate() -> OptedApplicationResponse {
            let dict = self.dictionary!
            let copy = OptedApplicationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(String.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(OptedCompany.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optedInventory = try container.decode(OptedInventory.self, forKey: .optedInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optOutInventory = try container.decode(OptOutInventory.self, forKey: .optOutInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(optedInventory, forKey: .optedInventory)

            try? container.encodeIfPresent(optOutInventory, forKey: .optOutInventory)
        }
    }

    /*
         Model: OptedCompany
         Used By: Configuration
     */

    class OptedCompany: Codable {
        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name
        }

        public init(name: String?, uid: Int?) {
            self.uid = uid

            self.name = name
        }

        public func duplicate() -> OptedCompany {
            let dict = self.dictionary!
            let copy = OptedCompany(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: OptedInventory
         Used By: Configuration
     */

    class OptedInventory: Codable {
        public var optType: OptType?

        public var items: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case optType = "opt_type"

            case items
        }

        public init(items: [String: Any]?, optType: OptType?) {
            self.optType = optType

            self.items = items
        }

        public func duplicate() -> OptedInventory {
            let dict = self.dictionary!
            let copy = OptedInventory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                optType = try container.decode(OptType.self, forKey: .optType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([String: Any].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optType, forKey: .optType)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: OptType
         Used By: Configuration
     */

    class OptType: Codable {
        public var key: String?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case display
        }

        public init(display: String?, key: String?) {
            self.key = key

            self.display = display
        }

        public func duplicate() -> OptType {
            let dict = self.dictionary!
            let copy = OptType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: OptedStore
         Used By: Configuration
     */

    class OptedStore: Codable {
        public var name: String?

        public var storeCode: String?

        public var id: String?

        public var modifiedOn: String?

        public var uid: Int?

        public var address: OptedStoreAddress?

        public var displayName: String?

        public var storeType: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case storeCode = "store_code"

            case id = "_id"

            case modifiedOn = "modified_on"

            case uid

            case address

            case displayName = "display_name"

            case storeType = "store_type"

            case companyId = "company_id"
        }

        public init(address: OptedStoreAddress?, companyId: Int?, displayName: String?, modifiedOn: String?, name: String?, storeCode: String?, storeType: String?, uid: Int?, id: String?) {
            self.name = name

            self.storeCode = storeCode

            self.id = id

            self.modifiedOn = modifiedOn

            self.uid = uid

            self.address = address

            self.displayName = displayName

            self.storeType = storeType

            self.companyId = companyId
        }

        public func duplicate() -> OptedStore {
            let dict = self.dictionary!
            let copy = OptedStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(OptedStoreAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: OptOutInventory
         Used By: Configuration
     */

    class OptOutInventory: Codable {
        public var store: [Int]

        public var company: [Int]

        public enum CodingKeys: String, CodingKey {
            case store

            case company
        }

        public init(company: [Int], store: [Int]) {
            self.store = store

            self.company = company
        }

        public func duplicate() -> OptOutInventory {
            let dict = self.dictionary!
            let copy = OptOutInventory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode([Int].self, forKey: .store)

            company = try container.decode([Int].self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }

    /*
         Model: TokenResponse
         Used By: Configuration
     */

    class TokenResponse: Codable {
        public var tokens: Tokens?

        public var id: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case tokens

            case id = "_id"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(application: String?, createdAt: String?, tokens: Tokens?, updatedAt: String?, id: String?, v: Int?) {
            self.tokens = tokens

            self.id = id

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        public func duplicate() -> TokenResponse {
            let dict = self.dictionary!
            let copy = TokenResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tokens = try container.decode(Tokens.self, forKey: .tokens)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tokens, forKey: .tokens)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: Tokens
         Used By: Configuration
     */

    class Tokens: Codable {
        public var firebase: Firebase?

        public var moengage: Moengage?

        public var segment: Segment?

        public var gtm: Gtm?

        public var freshchat: Freshchat?

        public var safetynet: Safetynet?

        public var fyndRewards: FyndRewards?

        public var googleMap: GoogleMap?

        public enum CodingKeys: String, CodingKey {
            case firebase

            case moengage

            case segment

            case gtm

            case freshchat

            case safetynet

            case fyndRewards = "fynd_rewards"

            case googleMap = "google_map"
        }

        public init(firebase: Firebase?, freshchat: Freshchat?, fyndRewards: FyndRewards?, googleMap: GoogleMap?, gtm: Gtm?, moengage: Moengage?, safetynet: Safetynet?, segment: Segment?) {
            self.firebase = firebase

            self.moengage = moengage

            self.segment = segment

            self.gtm = gtm

            self.freshchat = freshchat

            self.safetynet = safetynet

            self.fyndRewards = fyndRewards

            self.googleMap = googleMap
        }

        public func duplicate() -> Tokens {
            let dict = self.dictionary!
            let copy = Tokens(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                firebase = try container.decode(Firebase.self, forKey: .firebase)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moengage = try container.decode(Moengage.self, forKey: .moengage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                segment = try container.decode(Segment.self, forKey: .segment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gtm = try container.decode(Gtm.self, forKey: .gtm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freshchat = try container.decode(Freshchat.self, forKey: .freshchat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                safetynet = try container.decode(Safetynet.self, forKey: .safetynet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndRewards = try container.decode(FyndRewards.self, forKey: .fyndRewards)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleMap = try container.decode(GoogleMap.self, forKey: .googleMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firebase, forKey: .firebase)

            try? container.encodeIfPresent(moengage, forKey: .moengage)

            try? container.encodeIfPresent(segment, forKey: .segment)

            try? container.encodeIfPresent(gtm, forKey: .gtm)

            try? container.encodeIfPresent(freshchat, forKey: .freshchat)

            try? container.encodeIfPresent(safetynet, forKey: .safetynet)

            try? container.encodeIfPresent(fyndRewards, forKey: .fyndRewards)

            try? container.encodeIfPresent(googleMap, forKey: .googleMap)
        }
    }

    /*
         Model: Firebase
         Used By: Configuration
     */

    class Firebase: Codable {
        public var credentials: Credentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: Credentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Firebase {
            let dict = self.dictionary!
            let copy = Firebase(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(Credentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: Credentials
         Used By: Configuration
     */

    class Credentials: Codable {
        public var ios: Ios?

        public var android: Android?

        public var projectId: String?

        public var gcmSenderId: String?

        public var applicationId: String?

        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case ios

            case android

            case projectId = "project_id"

            case gcmSenderId = "gcm_sender_id"

            case applicationId = "application_id"

            case apiKey = "api_key"
        }

        public init(android: Android?, apiKey: String?, applicationId: String?, gcmSenderId: String?, ios: Ios?, projectId: String?) {
            self.ios = ios

            self.android = android

            self.projectId = projectId

            self.gcmSenderId = gcmSenderId

            self.applicationId = applicationId

            self.apiKey = apiKey
        }

        public func duplicate() -> Credentials {
            let dict = self.dictionary!
            let copy = Credentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ios = try container.decode(Ios.self, forKey: .ios)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                android = try container.decode(Android.self, forKey: .android)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                projectId = try container.decode(String.self, forKey: .projectId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gcmSenderId = try container.decode(String.self, forKey: .gcmSenderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ios, forKey: .ios)

            try? container.encodeIfPresent(android, forKey: .android)

            try? container.encodeIfPresent(projectId, forKey: .projectId)

            try? container.encodeIfPresent(gcmSenderId, forKey: .gcmSenderId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }

    /*
         Model: Ios
         Used By: Configuration
     */

    class Ios: Codable {
        public var applicationId: String?

        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case apiKey = "api_key"
        }

        public init(apiKey: String?, applicationId: String?) {
            self.applicationId = applicationId

            self.apiKey = apiKey
        }

        public func duplicate() -> Ios {
            let dict = self.dictionary!
            let copy = Ios(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }

    /*
         Model: Android
         Used By: Configuration
     */

    class Android: Codable {
        public var applicationId: String?

        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case apiKey = "api_key"
        }

        public init(apiKey: String?, applicationId: String?) {
            self.applicationId = applicationId

            self.apiKey = apiKey
        }

        public func duplicate() -> Android {
            let dict = self.dictionary!
            let copy = Android(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }

    /*
         Model: Moengage
         Used By: Configuration
     */

    class Moengage: Codable {
        public var credentials: MoengageCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: MoengageCredentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Moengage {
            let dict = self.dictionary!
            let copy = Moengage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(MoengageCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: MoengageCredentials
         Used By: Configuration
     */

    class MoengageCredentials: Codable {
        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"
        }

        public init(appId: String?) {
            self.appId = appId
        }

        public func duplicate() -> MoengageCredentials {
            let dict = self.dictionary!
            let copy = MoengageCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }

    /*
         Model: Segment
         Used By: Configuration
     */

    class Segment: Codable {
        public var credentials: SegmentCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: SegmentCredentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Segment {
            let dict = self.dictionary!
            let copy = Segment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(SegmentCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: SegmentCredentials
         Used By: Configuration
     */

    class SegmentCredentials: Codable {
        public var writeKey: String?

        public enum CodingKeys: String, CodingKey {
            case writeKey = "write_key"
        }

        public init(writeKey: String?) {
            self.writeKey = writeKey
        }

        public func duplicate() -> SegmentCredentials {
            let dict = self.dictionary!
            let copy = SegmentCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                writeKey = try container.decode(String.self, forKey: .writeKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(writeKey, forKey: .writeKey)
        }
    }

    /*
         Model: Gtm
         Used By: Configuration
     */

    class Gtm: Codable {
        public var credentials: GtmCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: GtmCredentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Gtm {
            let dict = self.dictionary!
            let copy = Gtm(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(GtmCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: GtmCredentials
         Used By: Configuration
     */

    class GtmCredentials: Codable {
        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case apiKey = "api_key"
        }

        public init(apiKey: String?) {
            self.apiKey = apiKey
        }

        public func duplicate() -> GtmCredentials {
            let dict = self.dictionary!
            let copy = GtmCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }

    /*
         Model: Freshchat
         Used By: Configuration
     */

    class Freshchat: Codable {
        public var credentials: FreshchatCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: FreshchatCredentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Freshchat {
            let dict = self.dictionary!
            let copy = Freshchat(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(FreshchatCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: FreshchatCredentials
         Used By: Configuration
     */

    class FreshchatCredentials: Codable {
        public var appId: String?

        public var appKey: String?

        public var webToken: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case appKey = "app_key"

            case webToken = "web_token"
        }

        public init(appId: String?, appKey: String?, webToken: String?) {
            self.appId = appId

            self.appKey = appKey

            self.webToken = webToken
        }

        public func duplicate() -> FreshchatCredentials {
            let dict = self.dictionary!
            let copy = FreshchatCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appKey = try container.decode(String.self, forKey: .appKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webToken = try container.decode(String.self, forKey: .webToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(appKey, forKey: .appKey)

            try? container.encodeIfPresent(webToken, forKey: .webToken)
        }
    }

    /*
         Model: Safetynet
         Used By: Configuration
     */

    class Safetynet: Codable {
        public var credentials: SafetynetCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: SafetynetCredentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Safetynet {
            let dict = self.dictionary!
            let copy = Safetynet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(SafetynetCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: SafetynetCredentials
         Used By: Configuration
     */

    class SafetynetCredentials: Codable {
        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case apiKey = "api_key"
        }

        public init(apiKey: String?) {
            self.apiKey = apiKey
        }

        public func duplicate() -> SafetynetCredentials {
            let dict = self.dictionary!
            let copy = SafetynetCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }

    /*
         Model: FyndRewards
         Used By: Configuration
     */

    class FyndRewards: Codable {
        public var credentials: FyndRewardsCredentials?

        public enum CodingKeys: String, CodingKey {
            case credentials
        }

        public init(credentials: FyndRewardsCredentials?) {
            self.credentials = credentials
        }

        public func duplicate() -> FyndRewards {
            let dict = self.dictionary!
            let copy = FyndRewards(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(FyndRewardsCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)
        }
    }

    /*
         Model: FyndRewardsCredentials
         Used By: Configuration
     */

    class FyndRewardsCredentials: Codable {
        public var publicKey: String?

        public enum CodingKeys: String, CodingKey {
            case publicKey = "public_key"
        }

        public init(publicKey: String?) {
            self.publicKey = publicKey
        }

        public func duplicate() -> FyndRewardsCredentials {
            let dict = self.dictionary!
            let copy = FyndRewardsCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                publicKey = try container.decode(String.self, forKey: .publicKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(publicKey, forKey: .publicKey)
        }
    }

    /*
         Model: GoogleMap
         Used By: Configuration
     */

    class GoogleMap: Codable {
        public var credentials: GoogleMapCredentials?

        public enum CodingKeys: String, CodingKey {
            case credentials
        }

        public init(credentials: GoogleMapCredentials?) {
            self.credentials = credentials
        }

        public func duplicate() -> GoogleMap {
            let dict = self.dictionary!
            let copy = GoogleMap(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(GoogleMapCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)
        }
    }

    /*
         Model: GoogleMapCredentials
         Used By: Configuration
     */

    class GoogleMapCredentials: Codable {
        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case apiKey = "api_key"
        }

        public init(apiKey: String?) {
            self.apiKey = apiKey
        }

        public func duplicate() -> GoogleMapCredentials {
            let dict = self.dictionary!
            let copy = GoogleMapCredentials(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }

    /*
         Model: RewardPointsConfig
         Used By: Configuration
     */

    class RewardPointsConfig: Codable {
        public var credit: Credit?

        public var debit: Debit?

        public enum CodingKeys: String, CodingKey {
            case credit

            case debit
        }

        public init(credit: Credit?, debit: Debit?) {
            self.credit = credit

            self.debit = debit
        }

        public func duplicate() -> RewardPointsConfig {
            let dict = self.dictionary!
            let copy = RewardPointsConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credit = try container.decode(Credit.self, forKey: .credit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debit = try container.decode(Debit.self, forKey: .debit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credit, forKey: .credit)

            try? container.encodeIfPresent(debit, forKey: .debit)
        }
    }

    /*
         Model: Credit
         Used By: Configuration
     */

    class Credit: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> Credit {
            let dict = self.dictionary!
            let copy = Credit(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: Debit
         Used By: Configuration
     */

    class Debit: Codable {
        public var enabled: Bool?

        public var autoApply: Bool?

        public var strategyChannel: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case autoApply = "auto_apply"

            case strategyChannel = "strategy_channel"
        }

        public init(autoApply: Bool?, enabled: Bool?, strategyChannel: String?) {
            self.enabled = enabled

            self.autoApply = autoApply

            self.strategyChannel = strategyChannel
        }

        public func duplicate() -> Debit {
            let dict = self.dictionary!
            let copy = Debit(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyChannel = try container.decode(String.self, forKey: .strategyChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(strategyChannel, forKey: .strategyChannel)
        }
    }

    /*
         Model: ProductDetailFeature
         Used By: Configuration
     */

    class ProductDetailFeature: Codable {
        public var similar: [String]?

        public var sellerSelection: Bool?

        public var updateProductMeta: Bool?

        public var requestProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case similar

            case sellerSelection = "seller_selection"

            case updateProductMeta = "update_product_meta"

            case requestProduct = "request_product"
        }

        public init(requestProduct: Bool?, sellerSelection: Bool?, similar: [String]?, updateProductMeta: Bool?) {
            self.similar = similar

            self.sellerSelection = sellerSelection

            self.updateProductMeta = updateProductMeta

            self.requestProduct = requestProduct
        }

        public func duplicate() -> ProductDetailFeature {
            let dict = self.dictionary!
            let copy = ProductDetailFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                similar = try container.decode([String].self, forKey: .similar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerSelection = try container.decode(Bool.self, forKey: .sellerSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updateProductMeta = try container.decode(Bool.self, forKey: .updateProductMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestProduct = try container.decode(Bool.self, forKey: .requestProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(sellerSelection, forKey: .sellerSelection)

            try? container.encodeIfPresent(updateProductMeta, forKey: .updateProductMeta)

            try? container.encodeIfPresent(requestProduct, forKey: .requestProduct)
        }
    }

    /*
         Model: LaunchPage
         Used By: Configuration
     */

    class LaunchPage: Codable {
        public var pageType: String?

        public var params: [String: Any]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case pageType = "page_type"

            case params

            case query
        }

        public init(pageType: String?, params: [String: Any]?, query: [String: Any]?) {
            self.pageType = pageType

            self.params = params

            self.query = query
        }

        public func duplicate() -> LaunchPage {
            let dict = self.dictionary!
            let copy = LaunchPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageType = try container.decode(String.self, forKey: .pageType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }

    /*
         Model: LandingPageFeature
         Used By: Configuration
     */

    class LandingPageFeature: Codable {
        public var launchPage: LaunchPage?

        public var continueAsGuest: Bool?

        public var loginBtnText: String?

        public var showDomainTextbox: Bool?

        public var showRegisterBtn: Bool?

        public enum CodingKeys: String, CodingKey {
            case launchPage = "launch_page"

            case continueAsGuest = "continue_as_guest"

            case loginBtnText = "login_btn_text"

            case showDomainTextbox = "show_domain_textbox"

            case showRegisterBtn = "show_register_btn"
        }

        public init(continueAsGuest: Bool?, launchPage: LaunchPage?, loginBtnText: String?, showDomainTextbox: Bool?, showRegisterBtn: Bool?) {
            self.launchPage = launchPage

            self.continueAsGuest = continueAsGuest

            self.loginBtnText = loginBtnText

            self.showDomainTextbox = showDomainTextbox

            self.showRegisterBtn = showRegisterBtn
        }

        public func duplicate() -> LandingPageFeature {
            let dict = self.dictionary!
            let copy = LandingPageFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                launchPage = try container.decode(LaunchPage.self, forKey: .launchPage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                continueAsGuest = try container.decode(Bool.self, forKey: .continueAsGuest)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loginBtnText = try container.decode(String.self, forKey: .loginBtnText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showDomainTextbox = try container.decode(Bool.self, forKey: .showDomainTextbox)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showRegisterBtn = try container.decode(Bool.self, forKey: .showRegisterBtn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(launchPage, forKey: .launchPage)

            try? container.encodeIfPresent(continueAsGuest, forKey: .continueAsGuest)

            try? container.encodeIfPresent(loginBtnText, forKey: .loginBtnText)

            try? container.encodeIfPresent(showDomainTextbox, forKey: .showDomainTextbox)

            try? container.encodeIfPresent(showRegisterBtn, forKey: .showRegisterBtn)
        }
    }

    /*
         Model: RegistrationPageFeature
         Used By: Configuration
     */

    class RegistrationPageFeature: Codable {
        public var askStoreAddress: Bool?

        public enum CodingKeys: String, CodingKey {
            case askStoreAddress = "ask_store_address"
        }

        public init(askStoreAddress: Bool?) {
            self.askStoreAddress = askStoreAddress
        }

        public func duplicate() -> RegistrationPageFeature {
            let dict = self.dictionary!
            let copy = RegistrationPageFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                askStoreAddress = try container.decode(Bool.self, forKey: .askStoreAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(askStoreAddress, forKey: .askStoreAddress)
        }
    }

    /*
         Model: AppFeature
         Used By: Configuration
     */

    class AppFeature: Codable {
        public var productDetail: ProductDetailFeature?

        public var landingPage: LandingPageFeature?

        public var registrationPage: RegistrationPageFeature?

        public var homePage: HomePageFeature?

        public var common: CommonFeature?

        public var cart: CartFeature?

        public var qr: QrFeature?

        public var pcr: PcrFeature?

        public var order: OrderFeature?

        public var id: String?

        public var app: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case productDetail = "product_detail"

            case landingPage = "landing_page"

            case registrationPage = "registration_page"

            case homePage = "home_page"

            case common

            case cart

            case qr

            case pcr

            case order

            case id = "_id"

            case app

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(app: String?, cart: CartFeature?, common: CommonFeature?, createdAt: String?, homePage: HomePageFeature?, landingPage: LandingPageFeature?, order: OrderFeature?, pcr: PcrFeature?, productDetail: ProductDetailFeature?, qr: QrFeature?, registrationPage: RegistrationPageFeature?, updatedAt: String?, id: String?, v: Int?) {
            self.productDetail = productDetail

            self.landingPage = landingPage

            self.registrationPage = registrationPage

            self.homePage = homePage

            self.common = common

            self.cart = cart

            self.qr = qr

            self.pcr = pcr

            self.order = order

            self.id = id

            self.app = app

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        public func duplicate() -> AppFeature {
            let dict = self.dictionary!
            let copy = AppFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productDetail = try container.decode(ProductDetailFeature.self, forKey: .productDetail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landingPage = try container.decode(LandingPageFeature.self, forKey: .landingPage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                registrationPage = try container.decode(RegistrationPageFeature.self, forKey: .registrationPage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                homePage = try container.decode(HomePageFeature.self, forKey: .homePage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                common = try container.decode(CommonFeature.self, forKey: .common)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CartFeature.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                qr = try container.decode(QrFeature.self, forKey: .qr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pcr = try container.decode(PcrFeature.self, forKey: .pcr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderFeature.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productDetail, forKey: .productDetail)

            try? container.encodeIfPresent(landingPage, forKey: .landingPage)

            try? container.encodeIfPresent(registrationPage, forKey: .registrationPage)

            try? container.encodeIfPresent(homePage, forKey: .homePage)

            try? container.encodeIfPresent(common, forKey: .common)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(qr, forKey: .qr)

            try? container.encodeIfPresent(pcr, forKey: .pcr)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: HomePageFeature
         Used By: Configuration
     */

    class HomePageFeature: Codable {
        public var orderProcessing: Bool?

        public enum CodingKeys: String, CodingKey {
            case orderProcessing = "order_processing"
        }

        public init(orderProcessing: Bool?) {
            self.orderProcessing = orderProcessing
        }

        public func duplicate() -> HomePageFeature {
            let dict = self.dictionary!
            let copy = HomePageFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderProcessing = try container.decode(Bool.self, forKey: .orderProcessing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderProcessing, forKey: .orderProcessing)
        }
    }

    /*
         Model: CommonFeature
         Used By: Configuration
     */

    class CommonFeature: Codable {
        public var communicationOptinDialog: CommunicationOptinDialogFeature?

        public var deploymentStoreSelection: DeploymentStoreSelectionFeature?

        public var listingPrice: ListingPriceFeature?

        public var currency: CurrencyFeature?

        public var revenueEngine: RevenueEngineFeature?

        public var feedback: FeedbackFeature?

        public var compareProducts: CompareProductsFeature?

        public var rewardPoints: RewardPointsConfig?

        public enum CodingKeys: String, CodingKey {
            case communicationOptinDialog = "communication_optin_dialog"

            case deploymentStoreSelection = "deployment_store_selection"

            case listingPrice = "listing_price"

            case currency

            case revenueEngine = "revenue_engine"

            case feedback

            case compareProducts = "compare_products"

            case rewardPoints = "reward_points"
        }

        public init(communicationOptinDialog: CommunicationOptinDialogFeature?, compareProducts: CompareProductsFeature?, currency: CurrencyFeature?, deploymentStoreSelection: DeploymentStoreSelectionFeature?, feedback: FeedbackFeature?, listingPrice: ListingPriceFeature?, revenueEngine: RevenueEngineFeature?, rewardPoints: RewardPointsConfig?) {
            self.communicationOptinDialog = communicationOptinDialog

            self.deploymentStoreSelection = deploymentStoreSelection

            self.listingPrice = listingPrice

            self.currency = currency

            self.revenueEngine = revenueEngine

            self.feedback = feedback

            self.compareProducts = compareProducts

            self.rewardPoints = rewardPoints
        }

        public func duplicate() -> CommonFeature {
            let dict = self.dictionary!
            let copy = CommonFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                communicationOptinDialog = try container.decode(CommunicationOptinDialogFeature.self, forKey: .communicationOptinDialog)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deploymentStoreSelection = try container.decode(DeploymentStoreSelectionFeature.self, forKey: .deploymentStoreSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                listingPrice = try container.decode(ListingPriceFeature.self, forKey: .listingPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CurrencyFeature.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                revenueEngine = try container.decode(RevenueEngineFeature.self, forKey: .revenueEngine)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                feedback = try container.decode(FeedbackFeature.self, forKey: .feedback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                compareProducts = try container.decode(CompareProductsFeature.self, forKey: .compareProducts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(communicationOptinDialog, forKey: .communicationOptinDialog)

            try? container.encodeIfPresent(deploymentStoreSelection, forKey: .deploymentStoreSelection)

            try? container.encodeIfPresent(listingPrice, forKey: .listingPrice)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(revenueEngine, forKey: .revenueEngine)

            try? container.encodeIfPresent(feedback, forKey: .feedback)

            try? container.encodeIfPresent(compareProducts, forKey: .compareProducts)

            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)
        }
    }

    /*
         Model: CommunicationOptinDialogFeature
         Used By: Configuration
     */

    class CommunicationOptinDialogFeature: Codable {
        public var visibility: Bool?

        public enum CodingKeys: String, CodingKey {
            case visibility
        }

        public init(visibility: Bool?) {
            self.visibility = visibility
        }

        public func duplicate() -> CommunicationOptinDialogFeature {
            let dict = self.dictionary!
            let copy = CommunicationOptinDialogFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visibility = try container.decode(Bool.self, forKey: .visibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visibility, forKey: .visibility)
        }
    }

    /*
         Model: DeploymentStoreSelectionFeature
         Used By: Configuration
     */

    class DeploymentStoreSelectionFeature: Codable {
        public var enabled: Bool?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case type
        }

        public init(enabled: Bool?, type: String?) {
            self.enabled = enabled

            self.type = type
        }

        public func duplicate() -> DeploymentStoreSelectionFeature {
            let dict = self.dictionary!
            let copy = DeploymentStoreSelectionFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ListingPriceFeature
         Used By: Configuration
     */

    class ListingPriceFeature: Codable {
        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case value
        }

        public init(value: String?) {
            self.value = value
        }

        public func duplicate() -> ListingPriceFeature {
            let dict = self.dictionary!
            let copy = ListingPriceFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: CurrencyFeature
         Used By: Configuration
     */

    class CurrencyFeature: Codable {
        public var value: [String]?

        public var type: String?

        public var defaultCurrency: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case type

            case defaultCurrency = "default_currency"
        }

        public init(defaultCurrency: String?, type: String?, value: [String]?) {
            self.value = value

            self.type = type

            self.defaultCurrency = defaultCurrency
        }

        public func duplicate() -> CurrencyFeature {
            let dict = self.dictionary!
            let copy = CurrencyFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode([String].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(String.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)
        }
    }

    /*
         Model: RevenueEngineFeature
         Used By: Configuration
     */

    class RevenueEngineFeature: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> RevenueEngineFeature {
            let dict = self.dictionary!
            let copy = RevenueEngineFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: FeedbackFeature
         Used By: Configuration
     */

    class FeedbackFeature: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> FeedbackFeature {
            let dict = self.dictionary!
            let copy = FeedbackFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: CompareProductsFeature
         Used By: Configuration
     */

    class CompareProductsFeature: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> CompareProductsFeature {
            let dict = self.dictionary!
            let copy = CompareProductsFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: CartFeature
         Used By: Configuration
     */

    class CartFeature: Codable {
        public var gstInput: Bool?

        public var staffSelection: Bool?

        public var placingForCustomer: Bool?

        public var googleMap: Bool?

        public var revenueEngineCoupon: Bool?

        public enum CodingKeys: String, CodingKey {
            case gstInput = "gst_input"

            case staffSelection = "staff_selection"

            case placingForCustomer = "placing_for_customer"

            case googleMap = "google_map"

            case revenueEngineCoupon = "revenue_engine_coupon"
        }

        public init(googleMap: Bool?, gstInput: Bool?, placingForCustomer: Bool?, revenueEngineCoupon: Bool?, staffSelection: Bool?) {
            self.gstInput = gstInput

            self.staffSelection = staffSelection

            self.placingForCustomer = placingForCustomer

            self.googleMap = googleMap

            self.revenueEngineCoupon = revenueEngineCoupon
        }

        public func duplicate() -> CartFeature {
            let dict = self.dictionary!
            let copy = CartFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstInput = try container.decode(Bool.self, forKey: .gstInput)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staffSelection = try container.decode(Bool.self, forKey: .staffSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                placingForCustomer = try container.decode(Bool.self, forKey: .placingForCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleMap = try container.decode(Bool.self, forKey: .googleMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstInput, forKey: .gstInput)

            try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)

            try? container.encodeIfPresent(placingForCustomer, forKey: .placingForCustomer)

            try? container.encodeIfPresent(googleMap, forKey: .googleMap)

            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
        }
    }

    /*
         Model: QrFeature
         Used By: Configuration
     */

    class QrFeature: Codable {
        public var application: Bool?

        public var products: Bool?

        public var collections: Bool?

        public enum CodingKeys: String, CodingKey {
            case application

            case products

            case collections
        }

        public init(application: Bool?, collections: Bool?, products: Bool?) {
            self.application = application

            self.products = products

            self.collections = collections
        }

        public func duplicate() -> QrFeature {
            let dict = self.dictionary!
            let copy = QrFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(Bool.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode(Bool.self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collections = try container.decode(Bool.self, forKey: .collections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(collections, forKey: .collections)
        }
    }

    /*
         Model: PcrFeature
         Used By: Configuration
     */

    class PcrFeature: Codable {
        public var staffSelection: Bool?

        public enum CodingKeys: String, CodingKey {
            case staffSelection = "staff_selection"
        }

        public init(staffSelection: Bool?) {
            self.staffSelection = staffSelection
        }

        public func duplicate() -> PcrFeature {
            let dict = self.dictionary!
            let copy = PcrFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                staffSelection = try container.decode(Bool.self, forKey: .staffSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)
        }
    }

    /*
         Model: OrderFeature
         Used By: Configuration
     */

    class OrderFeature: Codable {
        public var buyAgain: Bool?

        public enum CodingKeys: String, CodingKey {
            case buyAgain = "buy_again"
        }

        public init(buyAgain: Bool?) {
            self.buyAgain = buyAgain
        }

        public func duplicate() -> OrderFeature {
            let dict = self.dictionary!
            let copy = OrderFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                buyAgain = try container.decode(Bool.self, forKey: .buyAgain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyAgain, forKey: .buyAgain)
        }
    }

    /*
         Model: AppFeatureRequest
         Used By: Configuration
     */

    class AppFeatureRequest: Codable {
        public var feature: AppFeature?

        public enum CodingKeys: String, CodingKey {
            case feature
        }

        public init(feature: AppFeature?) {
            self.feature = feature
        }

        public func duplicate() -> AppFeatureRequest {
            let dict = self.dictionary!
            let copy = AppFeatureRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feature = try container.decode(AppFeature.self, forKey: .feature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(feature, forKey: .feature)
        }
    }

    /*
         Model: AppFeatureResponse
         Used By: Configuration
     */

    class AppFeatureResponse: Codable {
        public var feature: AppFeature?

        public enum CodingKeys: String, CodingKey {
            case feature
        }

        public init(feature: AppFeature?) {
            self.feature = feature
        }

        public func duplicate() -> AppFeatureResponse {
            let dict = self.dictionary!
            let copy = AppFeatureResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feature = try container.decode(AppFeature.self, forKey: .feature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(feature, forKey: .feature)
        }
    }

    /*
         Model: Currency
         Used By: Configuration
     */

    class Currency: Codable {
        public var id: String?

        public var isActive: Bool?

        public var name: String?

        public var code: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var decimalDigits: Int?

        public var symbol: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case isActive = "is_active"

            case name

            case code

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case decimalDigits = "decimal_digits"

            case symbol
        }

        public init(code: String?, createdAt: String?, decimalDigits: Int?, isActive: Bool?, name: String?, symbol: String?, updatedAt: String?, id: String?) {
            self.id = id

            self.isActive = isActive

            self.name = name

            self.code = code

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.decimalDigits = decimalDigits

            self.symbol = symbol
        }

        public func duplicate() -> Currency {
            let dict = self.dictionary!
            let copy = Currency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)

            try? container.encodeIfPresent(symbol, forKey: .symbol)
        }
    }

    /*
         Model: Domain
         Used By: Configuration
     */

    class Domain: Codable {
        public var verified: Bool?

        public var isPrimary: Bool?

        public var isShortlink: Bool?

        public var id: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case isPrimary = "is_primary"

            case isShortlink = "is_shortlink"

            case id = "_id"

            case name
        }

        public init(isPrimary: Bool?, isShortlink: Bool?, name: String?, verified: Bool?, id: String?) {
            self.verified = verified

            self.isPrimary = isPrimary

            self.isShortlink = isShortlink

            self.id = id

            self.name = name
        }

        public func duplicate() -> Domain {
            let dict = self.dictionary!
            let copy = Domain(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPrimary = try container.decode(Bool.self, forKey: .isPrimary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShortlink = try container.decode(Bool.self, forKey: .isShortlink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)

            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ApplicationWebsite
         Used By: Configuration
     */

    class ApplicationWebsite: Codable {
        public var enabled: Bool?

        public var basepath: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case basepath
        }

        public init(basepath: String?, enabled: Bool?) {
            self.enabled = enabled

            self.basepath = basepath
        }

        public func duplicate() -> ApplicationWebsite {
            let dict = self.dictionary!
            let copy = ApplicationWebsite(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                basepath = try container.decode(String.self, forKey: .basepath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(basepath, forKey: .basepath)
        }
    }

    /*
         Model: ApplicationCors
         Used By: Configuration
     */

    class ApplicationCors: Codable {
        public var domains: [String]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [String]?) {
            self.domains = domains
        }

        public func duplicate() -> ApplicationCors {
            let dict = self.dictionary!
            let copy = ApplicationCors(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domains = try container.decode([String].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domains, forKey: .domains)
        }
    }

    /*
         Model: ApplicationAuth
         Used By: Configuration
     */

    class ApplicationAuth: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool?) {
            self.enabled = enabled
        }

        public func duplicate() -> ApplicationAuth {
            let dict = self.dictionary!
            let copy = ApplicationAuth(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: ApplicationRedirections
         Used By: Configuration
     */

    class ApplicationRedirections: Codable {
        public var redirectFrom: String?

        public var redirectTo: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case redirectFrom = "redirect_from"

            case redirectTo = "redirect_to"

            case type
        }

        public init(redirectFrom: String?, redirectTo: String?, type: String?) {
            self.redirectFrom = redirectFrom

            self.redirectTo = redirectTo

            self.type = type
        }

        public func duplicate() -> ApplicationRedirections {
            let dict = self.dictionary!
            let copy = ApplicationRedirections(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectFrom = try container.decode(String.self, forKey: .redirectFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectTo = try container.decode(String.self, forKey: .redirectTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectFrom, forKey: .redirectFrom)

            try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ApplicationMeta
         Used By: Configuration
     */

    class ApplicationMeta: Codable {
        public var name: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case value
        }

        public init(name: String?, value: String?) {
            self.name = name

            self.value = value
        }

        public func duplicate() -> ApplicationMeta {
            let dict = self.dictionary!
            let copy = ApplicationMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: SecureUrl
         Used By: Configuration
     */

    class SecureUrl: Codable {
        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"
        }

        public init(secureUrl: String?) {
            self.secureUrl = secureUrl
        }

        public func duplicate() -> SecureUrl {
            let dict = self.dictionary!
            let copy = SecureUrl(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: Application
         Used By: Configuration
     */

    class Application: Codable {
        public var website: ApplicationWebsite?

        public var cors: ApplicationCors?

        public var auth: ApplicationAuth?

        public var description: String?

        public var channelType: String?

        public var cacheTtl: Int?

        public var isInternal: Bool?

        public var isActive: Bool?

        public var id: String?

        public var name: String?

        public var owner: String?

        public var companyId: Int?

        public var token: String?

        public var redirections: [ApplicationRedirections]?

        public var meta: [ApplicationMeta]?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public var banner: SecureUrl?

        public var logo: SecureUrl?

        public var favicon: SecureUrl?

        public var domains: [Domain]?

        public var appType: String?

        public var mobileLogo: SecureUrl?

        public var domain: Domain?

        public enum CodingKeys: String, CodingKey {
            case website

            case cors

            case auth

            case description

            case channelType = "channel_type"

            case cacheTtl = "cache_ttl"

            case isInternal = "is_internal"

            case isActive = "is_active"

            case id = "_id"

            case name

            case owner

            case companyId = "company_id"

            case token

            case redirections

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case banner

            case logo

            case favicon

            case domains

            case appType = "app_type"

            case mobileLogo = "mobile_logo"

            case domain
        }

        public init(appType: String?, auth: ApplicationAuth?, banner: SecureUrl?, cacheTtl: Int?, channelType: String?, companyId: Int?, cors: ApplicationCors?, createdAt: String?, description: String?, domain: Domain?, domains: [Domain]?, favicon: SecureUrl?, isActive: Bool?, isInternal: Bool?, logo: SecureUrl?, meta: [ApplicationMeta]?, mobileLogo: SecureUrl?, name: String?, owner: String?, redirections: [ApplicationRedirections]?, token: String?, updatedAt: String?, website: ApplicationWebsite?, id: String?, v: Int?) {
            self.website = website

            self.cors = cors

            self.auth = auth

            self.description = description

            self.channelType = channelType

            self.cacheTtl = cacheTtl

            self.isInternal = isInternal

            self.isActive = isActive

            self.id = id

            self.name = name

            self.owner = owner

            self.companyId = companyId

            self.token = token

            self.redirections = redirections

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.banner = banner

            self.logo = logo

            self.favicon = favicon

            self.domains = domains

            self.appType = appType

            self.mobileLogo = mobileLogo

            self.domain = domain
        }

        public func duplicate() -> Application {
            let dict = self.dictionary!
            let copy = Application(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                website = try container.decode(ApplicationWebsite.self, forKey: .website)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cors = try container.decode(ApplicationCors.self, forKey: .cors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(ApplicationAuth.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cacheTtl = try container.decode(Int.self, forKey: .cacheTtl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isInternal = try container.decode(Bool.self, forKey: .isInternal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                owner = try container.decode(String.self, forKey: .owner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirections = try container.decode([ApplicationRedirections].self, forKey: .redirections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([ApplicationMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banner = try container.decode(SecureUrl.self, forKey: .banner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(SecureUrl.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domains = try container.decode([Domain].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appType = try container.decode(String.self, forKey: .appType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(Domain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(website, forKey: .website)

            try? container.encodeIfPresent(cors, forKey: .cors)

            try? container.encodeIfPresent(auth, forKey: .auth)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(cacheTtl, forKey: .cacheTtl)

            try? container.encodeIfPresent(isInternal, forKey: .isInternal)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(redirections, forKey: .redirections)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(favicon, forKey: .favicon)

            try? container.encodeIfPresent(domains, forKey: .domains)

            try? container.encodeIfPresent(appType, forKey: .appType)

            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }

    /*
         Model: NotFound
         Used By: Configuration
     */

    class NotFound: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> NotFound {
            let dict = self.dictionary!
            let copy = NotFound(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: UnhandledError
         Used By: Configuration
     */

    class UnhandledError: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> UnhandledError {
            let dict = self.dictionary!
            let copy = UnhandledError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: InvalidPayloadRequest
         Used By: Configuration
     */

    class InvalidPayloadRequest: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> InvalidPayloadRequest {
            let dict = self.dictionary!
            let copy = InvalidPayloadRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: SuccessMessageResponse
         Used By: Configuration
     */

    class SuccessMessageResponse: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> SuccessMessageResponse {
            let dict = self.dictionary!
            let copy = SuccessMessageResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: InventoryBrandRule
         Used By: Configuration
     */

    class InventoryBrandRule: Codable {
        public var criteria: String?

        public var brands: [Int]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case brands
        }

        public init(brands: [Int]?, criteria: String?) {
            self.criteria = criteria

            self.brands = brands
        }

        public func duplicate() -> InventoryBrandRule {
            let dict = self.dictionary!
            let copy = InventoryBrandRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([Int].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }

    /*
         Model: StoreCriteriaRule
         Used By: Configuration
     */

    class StoreCriteriaRule: Codable {
        public var companies: [Int]?

        public var brands: [Int]?

        public enum CodingKeys: String, CodingKey {
            case companies

            case brands
        }

        public init(brands: [Int]?, companies: [Int]?) {
            self.companies = companies

            self.brands = brands
        }

        public func duplicate() -> StoreCriteriaRule {
            let dict = self.dictionary!
            let copy = StoreCriteriaRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companies = try container.decode([Int].self, forKey: .companies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([Int].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companies, forKey: .companies)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }

    /*
         Model: InventoryStoreRule
         Used By: Configuration
     */

    class InventoryStoreRule: Codable {
        public var criteria: String?

        public var rules: [StoreCriteriaRule]?

        public var stores: [Int]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case rules

            case stores
        }

        public init(criteria: String?, rules: [StoreCriteriaRule]?, stores: [Int]?) {
            self.criteria = criteria

            self.rules = rules

            self.stores = stores
        }

        public func duplicate() -> InventoryStoreRule {
            let dict = self.dictionary!
            let copy = InventoryStoreRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rules = try container.decode([StoreCriteriaRule].self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(rules, forKey: .rules)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }

    /*
         Model: InventoryPaymentConfig
         Used By: Configuration
     */

    class InventoryPaymentConfig: Codable {
        public var modeOfPayment: String?

        public var source: String?

        public enum CodingKeys: String, CodingKey {
            case modeOfPayment = "mode_of_payment"

            case source
        }

        public init(modeOfPayment: String?, source: String?) {
            self.modeOfPayment = modeOfPayment

            self.source = source
        }

        public func duplicate() -> InventoryPaymentConfig {
            let dict = self.dictionary!
            let copy = InventoryPaymentConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }

    /*
         Model: StorePriorityRule
         Used By: Configuration
     */

    class StorePriorityRule: Codable {
        public var enabled: Bool?

        public var storetypeOrder: [String]?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case storetypeOrder = "storetype_order"
        }

        public init(enabled: Bool?, storetypeOrder: [String]?) {
            self.enabled = enabled

            self.storetypeOrder = storetypeOrder
        }

        public func duplicate() -> StorePriorityRule {
            let dict = self.dictionary!
            let copy = StorePriorityRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storetypeOrder = try container.decode([String].self, forKey: .storetypeOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storetypeOrder, forKey: .storetypeOrder)
        }
    }

    /*
         Model: ArticleAssignmentRule
         Used By: Configuration
     */

    class ArticleAssignmentRule: Codable {
        public var storePriority: StorePriorityRule?

        public enum CodingKeys: String, CodingKey {
            case storePriority = "store_priority"
        }

        public init(storePriority: StorePriorityRule?) {
            self.storePriority = storePriority
        }

        public func duplicate() -> ArticleAssignmentRule {
            let dict = self.dictionary!
            let copy = ArticleAssignmentRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storePriority = try container.decode(StorePriorityRule.self, forKey: .storePriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
        }
    }

    /*
         Model: InventoryArticleAssignment
         Used By: Configuration
     */

    class InventoryArticleAssignment: Codable {
        public var postOrderReassignment: Bool?

        public var rules: ArticleAssignmentRule?

        public enum CodingKeys: String, CodingKey {
            case postOrderReassignment = "post_order_reassignment"

            case rules
        }

        public init(postOrderReassignment: Bool?, rules: ArticleAssignmentRule?) {
            self.postOrderReassignment = postOrderReassignment

            self.rules = rules
        }

        public func duplicate() -> InventoryArticleAssignment {
            let dict = self.dictionary!
            let copy = InventoryArticleAssignment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rules = try container.decode(ArticleAssignmentRule.self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encodeIfPresent(rules, forKey: .rules)
        }
    }

    /*
         Model: CompanyAboutAddress
         Used By: Configuration
     */

    class CompanyAboutAddress: Codable {
        public var pincode: Int?

        public var address1: String?

        public var address2: String?

        public var city: String?

        public var state: String?

        public var country: String?

        public var addressType: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case address1

            case address2

            case city

            case state

            case country

            case addressType = "address_type"
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, pincode: Int?, state: String?) {
            self.pincode = pincode

            self.address1 = address1

            self.address2 = address2

            self.city = city

            self.state = state

            self.country = country

            self.addressType = addressType
        }

        public func duplicate() -> CompanyAboutAddress {
            let dict = self.dictionary!
            let copy = CompanyAboutAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }

    /*
         Model: UserEmail
         Used By: Configuration
     */

    class UserEmail: Codable {
        public var active: Bool?

        public var primary: Bool?

        public var verified: Bool?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case active

            case primary

            case verified

            case email
        }

        public init(active: Bool?, email: String?, primary: Bool?, verified: Bool?) {
            self.active = active

            self.primary = primary

            self.verified = verified

            self.email = email
        }

        public func duplicate() -> UserEmail {
            let dict = self.dictionary!
            let copy = UserEmail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: UserPhoneNumber
         Used By: Configuration
     */

    class UserPhoneNumber: Codable {
        public var active: Bool?

        public var primary: Bool?

        public var verified: Bool?

        public var countryCode: Int?

        public var phone: String?

        public enum CodingKeys: String, CodingKey {
            case active

            case primary

            case verified

            case countryCode = "country_code"

            case phone
        }

        public init(active: Bool?, countryCode: Int?, phone: String?, primary: Bool?, verified: Bool?) {
            self.active = active

            self.primary = primary

            self.verified = verified

            self.countryCode = countryCode

            self.phone = phone
        }

        public func duplicate() -> UserPhoneNumber {
            let dict = self.dictionary!
            let copy = UserPhoneNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(Int.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }

    /*
         Model: ApplicationInformation
         Used By: Configuration
     */

    class ApplicationInformation: Codable {
        public var address: InformationAddress?

        public var support: InformationSupport?

        public var socialLinks: SocialLinks?

        public var links: Links?

        public var copyrightText: String?

        public var id: String?

        public var businessHighlights: BusinessHighlights?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case address

            case support

            case socialLinks = "social_links"

            case links

            case copyrightText = "copyright_text"

            case id = "_id"

            case businessHighlights = "business_highlights"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(address: InformationAddress?, application: String?, businessHighlights: BusinessHighlights?, copyrightText: String?, createdAt: String?, links: Links?, socialLinks: SocialLinks?, support: InformationSupport?, updatedAt: String?, id: String?, v: Int?) {
            self.address = address

            self.support = support

            self.socialLinks = socialLinks

            self.links = links

            self.copyrightText = copyrightText

            self.id = id

            self.businessHighlights = businessHighlights

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        public func duplicate() -> ApplicationInformation {
            let dict = self.dictionary!
            let copy = ApplicationInformation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode(InformationAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                support = try container.decode(InformationSupport.self, forKey: .support)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                socialLinks = try container.decode(SocialLinks.self, forKey: .socialLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                links = try container.decode(Links.self, forKey: .links)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                copyrightText = try container.decode(String.self, forKey: .copyrightText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessHighlights = try container.decode(BusinessHighlights.self, forKey: .businessHighlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(support, forKey: .support)

            try? container.encodeIfPresent(socialLinks, forKey: .socialLinks)

            try? container.encodeIfPresent(links, forKey: .links)

            try? container.encodeIfPresent(copyrightText, forKey: .copyrightText)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(businessHighlights, forKey: .businessHighlights)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: InformationAddress
         Used By: Configuration
     */

    class InformationAddress: Codable {
        public var loc: String?

        public var addressLine: [String]?

        public var phone: InformationPhone?

        public var city: String?

        public var country: String?

        public var pincode: Int?

        public enum CodingKeys: String, CodingKey {
            case loc

            case addressLine = "address_line"

            case phone

            case city

            case country

            case pincode
        }

        public init(addressLine: [String]?, city: String?, country: String?, loc: String?, phone: InformationPhone?, pincode: Int?) {
            self.loc = loc

            self.addressLine = addressLine

            self.phone = phone

            self.city = city

            self.country = country

            self.pincode = pincode
        }

        public func duplicate() -> InformationAddress {
            let dict = self.dictionary!
            let copy = InformationAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loc = try container.decode(String.self, forKey: .loc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressLine = try container.decode([String].self, forKey: .addressLine)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(InformationPhone.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loc, forKey: .loc)

            try? container.encodeIfPresent(addressLine, forKey: .addressLine)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }

    /*
         Model: InformationPhone
         Used By: Configuration
     */

    class InformationPhone: Codable {
        public var code: String?

        public var number: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case number
        }

        public init(code: String?, number: String?) {
            self.code = code

            self.number = number
        }

        public func duplicate() -> InformationPhone {
            let dict = self.dictionary!
            let copy = InformationPhone(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                number = try container.decode(String.self, forKey: .number)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }

    /*
         Model: InformationSupport
         Used By: Configuration
     */

    class InformationSupport: Codable {
        public var phone: [String]?

        public var email: [String]?

        public var timing: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case email

            case timing
        }

        public init(email: [String]?, phone: [String]?, timing: String?) {
            self.phone = phone

            self.email = email

            self.timing = timing
        }

        public func duplicate() -> InformationSupport {
            let dict = self.dictionary!
            let copy = InformationSupport(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode([String].self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode([String].self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode(String.self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(timing, forKey: .timing)
        }
    }

    /*
         Model: SocialLinks
         Used By: Configuration
     */

    class SocialLinks: Codable {
        public var facebook: FacebookLink?

        public var instagram: InstagramLink?

        public var twitter: TwitterLink?

        public var pinterest: PinterestLink?

        public var googlePlus: GooglePlusLink?

        public var youtube: YoutubeLink?

        public var linkedIn: LinkedInLink?

        public var vimeo: VimeoLink?

        public var blogLink: BlogLink?

        public enum CodingKeys: String, CodingKey {
            case facebook

            case instagram

            case twitter

            case pinterest

            case googlePlus = "google_plus"

            case youtube

            case linkedIn = "linked_in"

            case vimeo

            case blogLink = "blog_link"
        }

        public init(blogLink: BlogLink?, facebook: FacebookLink?, googlePlus: GooglePlusLink?, instagram: InstagramLink?, linkedIn: LinkedInLink?, pinterest: PinterestLink?, twitter: TwitterLink?, vimeo: VimeoLink?, youtube: YoutubeLink?) {
            self.facebook = facebook

            self.instagram = instagram

            self.twitter = twitter

            self.pinterest = pinterest

            self.googlePlus = googlePlus

            self.youtube = youtube

            self.linkedIn = linkedIn

            self.vimeo = vimeo

            self.blogLink = blogLink
        }

        public func duplicate() -> SocialLinks {
            let dict = self.dictionary!
            let copy = SocialLinks(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                facebook = try container.decode(FacebookLink.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                instagram = try container.decode(InstagramLink.self, forKey: .instagram)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                twitter = try container.decode(TwitterLink.self, forKey: .twitter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pinterest = try container.decode(PinterestLink.self, forKey: .pinterest)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googlePlus = try container.decode(GooglePlusLink.self, forKey: .googlePlus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                youtube = try container.decode(YoutubeLink.self, forKey: .youtube)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                linkedIn = try container.decode(LinkedInLink.self, forKey: .linkedIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vimeo = try container.decode(VimeoLink.self, forKey: .vimeo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                blogLink = try container.decode(BlogLink.self, forKey: .blogLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(instagram, forKey: .instagram)

            try? container.encodeIfPresent(twitter, forKey: .twitter)

            try? container.encodeIfPresent(pinterest, forKey: .pinterest)

            try? container.encodeIfPresent(googlePlus, forKey: .googlePlus)

            try? container.encodeIfPresent(youtube, forKey: .youtube)

            try? container.encodeIfPresent(linkedIn, forKey: .linkedIn)

            try? container.encodeIfPresent(vimeo, forKey: .vimeo)

            try? container.encodeIfPresent(blogLink, forKey: .blogLink)
        }
    }

    /*
         Model: FacebookLink
         Used By: Configuration
     */

    class FacebookLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> FacebookLink {
            let dict = self.dictionary!
            let copy = FacebookLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: InstagramLink
         Used By: Configuration
     */

    class InstagramLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> InstagramLink {
            let dict = self.dictionary!
            let copy = InstagramLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: TwitterLink
         Used By: Configuration
     */

    class TwitterLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> TwitterLink {
            let dict = self.dictionary!
            let copy = TwitterLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: PinterestLink
         Used By: Configuration
     */

    class PinterestLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> PinterestLink {
            let dict = self.dictionary!
            let copy = PinterestLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: GooglePlusLink
         Used By: Configuration
     */

    class GooglePlusLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> GooglePlusLink {
            let dict = self.dictionary!
            let copy = GooglePlusLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: YoutubeLink
         Used By: Configuration
     */

    class YoutubeLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> YoutubeLink {
            let dict = self.dictionary!
            let copy = YoutubeLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: LinkedInLink
         Used By: Configuration
     */

    class LinkedInLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> LinkedInLink {
            let dict = self.dictionary!
            let copy = LinkedInLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: VimeoLink
         Used By: Configuration
     */

    class VimeoLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> VimeoLink {
            let dict = self.dictionary!
            let copy = VimeoLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: BlogLink
         Used By: Configuration
     */

    class BlogLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String?, link: String?, title: String?) {
            self.title = title

            self.icon = icon

            self.link = link
        }

        public func duplicate() -> BlogLink {
            let dict = self.dictionary!
            let copy = BlogLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: Links
         Used By: Configuration
     */

    class Links: Codable {
        public var title: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case link
        }

        public init(link: String?, title: String?) {
            self.title = title

            self.link = link
        }

        public func duplicate() -> Links {
            let dict = self.dictionary!
            let copy = Links(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: BusinessHighlights
         Used By: Configuration
     */

    class BusinessHighlights: Codable {
        public var id: String?

        public var title: String?

        public var icon: String?

        public var subTitle: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case title

            case icon

            case subTitle = "sub_title"
        }

        public init(icon: String?, subTitle: String?, title: String?, id: String?) {
            self.id = id

            self.title = title

            self.icon = icon

            self.subTitle = subTitle
        }

        public func duplicate() -> BusinessHighlights {
            let dict = self.dictionary!
            let copy = BusinessHighlights(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subTitle = try container.decode(String.self, forKey: .subTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
        }
    }

    /*
         Model: ApplicationDetail
         Used By: Configuration
     */

    class ApplicationDetail: Codable {
        public var name: String

        public var description: String

        public var logo: SecureUrl

        public var mobileLogo: SecureUrl

        public var favicon: SecureUrl

        public var banner: SecureUrl

        public var domain: Domain?

        public var domains: [Domain]?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case logo

            case mobileLogo = "mobile_logo"

            case favicon

            case banner

            case domain

            case domains

            case id = "_id"
        }

        public init(banner: SecureUrl, description: String, domain: Domain?, domains: [Domain]?, favicon: SecureUrl, logo: SecureUrl, mobileLogo: SecureUrl, name: String, id: String?) {
            self.name = name

            self.description = description

            self.logo = logo

            self.mobileLogo = mobileLogo

            self.favicon = favicon

            self.banner = banner

            self.domain = domain

            self.domains = domains

            self.id = id
        }

        public func duplicate() -> ApplicationDetail {
            let dict = self.dictionary!
            let copy = ApplicationDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            description = try container.decode(String.self, forKey: .description)

            logo = try container.decode(SecureUrl.self, forKey: .logo)

            mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)

            favicon = try container.decode(SecureUrl.self, forKey: .favicon)

            banner = try container.decode(SecureUrl.self, forKey: .banner)

            do {
                domain = try container.decode(Domain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domains = try container.decode([Domain].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)

            try? container.encodeIfPresent(favicon, forKey: .favicon)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(domains, forKey: .domains)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: CurrenciesResponse
         Used By: Configuration
     */

    class CurrenciesResponse: Codable {
        public var items: [Currency]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [Currency]?) {
            self.items = items
        }

        public func duplicate() -> CurrenciesResponse {
            let dict = self.dictionary!
            let copy = CurrenciesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Currency].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: AppCurrencyResponse
         Used By: Configuration
     */

    class AppCurrencyResponse: Codable {
        public var application: String?

        public var defaultCurrency: DefaultCurrency?

        public var supportedCurrency: [Currency]?

        public enum CodingKeys: String, CodingKey {
            case application

            case defaultCurrency = "default_currency"

            case supportedCurrency = "supported_currency"
        }

        public init(application: String?, defaultCurrency: DefaultCurrency?, supportedCurrency: [Currency]?) {
            self.application = application

            self.defaultCurrency = defaultCurrency

            self.supportedCurrency = supportedCurrency
        }

        public func duplicate() -> AppCurrencyResponse {
            let dict = self.dictionary!
            let copy = AppCurrencyResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(DefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supportedCurrency = try container.decode([Currency].self, forKey: .supportedCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(supportedCurrency, forKey: .supportedCurrency)
        }
    }

    /*
         Model: StoreLatLong
         Used By: Configuration
     */

    class StoreLatLong: Codable {
        public var type: String?

        public var coordinates: [Double]?

        public enum CodingKeys: String, CodingKey {
            case type

            case coordinates
        }

        public init(coordinates: [Double]?, type: String?) {
            self.type = type

            self.coordinates = coordinates
        }

        public func duplicate() -> StoreLatLong {
            let dict = self.dictionary!
            let copy = StoreLatLong(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coordinates = try container.decode([Double].self, forKey: .coordinates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
        }
    }

    /*
         Model: OptedStoreAddress
         Used By: Configuration
     */

    class OptedStoreAddress: Codable {
        public var state: String?

        public var address1: String?

        public var latLong: StoreLatLong?

        public var address2: String?

        public var pincode: Int?

        public var country: String?

        public var city: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case address1

            case latLong = "lat_long"

            case address2

            case pincode

            case country

            case city
        }

        public init(address1: String?, address2: String?, city: String?, country: String?, latLong: StoreLatLong?, pincode: Int?, state: String?) {
            self.state = state

            self.address1 = address1

            self.latLong = latLong

            self.address2 = address2

            self.pincode = pincode

            self.country = country

            self.city = city
        }

        public func duplicate() -> OptedStoreAddress {
            let dict = self.dictionary!
            let copy = OptedStoreAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latLong = try container.decode(StoreLatLong.self, forKey: .latLong)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latLong, forKey: .latLong)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }

    /*
         Model: OrderingStore
         Used By: Configuration
     */

    class OrderingStore: Codable {
        public var address: OptedStoreAddress?

        public var id: String?

        public var uid: Int?

        public var name: String?

        public var displayName: String?

        public var storeType: String?

        public var storeCode: String?

        public var pincode: Int?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case address

            case id = "_id"

            case uid

            case name

            case displayName = "display_name"

            case storeType = "store_type"

            case storeCode = "store_code"

            case pincode

            case code
        }

        public init(address: OptedStoreAddress?, code: String?, displayName: String?, name: String?, pincode: Int?, storeCode: String?, storeType: String?, uid: Int?, id: String?) {
            self.address = address

            self.id = id

            self.uid = uid

            self.name = name

            self.displayName = displayName

            self.storeType = storeType

            self.storeCode = storeCode

            self.pincode = pincode

            self.code = code
        }

        public func duplicate() -> OrderingStore {
            let dict = self.dictionary!
            let copy = OrderingStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode(OptedStoreAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: OrderingStores
         Used By: Configuration
     */

    class OrderingStores: Codable {
        public var page: Page?

        public var items: [OrderingStore]?

        public var deployedStores: [Int]?

        public var allStores: Bool?

        public var enabled: Bool?

        public var type: String?

        public var id: String?

        public var app: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case deployedStores = "deployed_stores"

            case allStores = "all_stores"

            case enabled

            case type

            case id = "_id"

            case app

            case v = "__v"
        }

        public init(allStores: Bool?, app: String?, deployedStores: [Int]?, enabled: Bool?, items: [OrderingStore]?, page: Page?, type: String?, id: String?, v: Int?) {
            self.page = page

            self.items = items

            self.deployedStores = deployedStores

            self.allStores = allStores

            self.enabled = enabled

            self.type = type

            self.id = id

            self.app = app

            self.v = v
        }

        public func duplicate() -> OrderingStores {
            let dict = self.dictionary!
            let copy = OrderingStores(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([OrderingStore].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deployedStores = try container.decode([Int].self, forKey: .deployedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allStores = try container.decode(Bool.self, forKey: .allStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)

            try? container.encodeIfPresent(allStores, forKey: .allStores)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }

    /*
         Model: OrderingStoresResponse
         Used By: Configuration
     */

    class OrderingStoresResponse: Codable {
        public var page: Page?

        public var items: [OrderingStore]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [OrderingStore]?, page: Page?) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> OrderingStoresResponse {
            let dict = self.dictionary!
            let copy = OrderingStoresResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([OrderingStore].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
