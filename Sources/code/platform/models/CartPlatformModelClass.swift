import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: State
        Used By: Cart
    */

    class State: Codable {
        
        
        public var isPublic: Bool?
        
        public var isArchived: Bool?
        
        public var isDisplay: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isPublic = "is_public"
            
            case isArchived = "is_archived"
            
            case isDisplay = "is_display"
            
        }

        public init(isArchived: Bool?, isDisplay: Bool?, isPublic: Bool?) {
            
            self.isPublic = isPublic
            
            self.isArchived = isArchived
            
            self.isDisplay = isDisplay
            
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isPublic = try container.decode(Bool.self, forKey: .isPublic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDisplay = try container.decode(Bool.self, forKey: .isDisplay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isPublic, forKey: .isPublic)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)
            
            
        }
        
    }
    
    /*
        Model: RuleDefinition
        Used By: Cart
    */

    class RuleDefinition: Codable {
        
        
        public var type: String
        
        public var isExact: Bool?
        
        public var scope: [String]?
        
        public var autoApply: Bool?
        
        public var currencyCode: String?
        
        public var calculateOn: String
        
        public var applicableOn: String
        
        public var valueType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case isExact = "is_exact"
            
            case scope = "scope"
            
            case autoApply = "auto_apply"
            
            case currencyCode = "currency_code"
            
            case calculateOn = "calculate_on"
            
            case applicableOn = "applicable_on"
            
            case valueType = "value_type"
            
        }

        public init(applicableOn: String, autoApply: Bool?, calculateOn: String, currencyCode: String?, isExact: Bool?, scope: [String]?, type: String, valueType: String) {
            
            self.type = type
            
            self.isExact = isExact
            
            self.scope = scope
            
            self.autoApply = autoApply
            
            self.currencyCode = currencyCode
            
            self.calculateOn = calculateOn
            
            self.applicableOn = applicableOn
            
            self.valueType = valueType
            
        }

        public func duplicate() -> RuleDefinition {
            let dict = self.dictionary!
            let copy = RuleDefinition(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    isExact = try container.decode(Bool.self, forKey: .isExact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoApply = try container.decode(Bool.self, forKey: .autoApply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
            
            
            
                applicableOn = try container.decode(String.self, forKey: .applicableOn)
                
            
            
            
                valueType = try container.decode(String.self, forKey: .valueType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isExact, forKey: .isExact)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
            
            
            
            
            try? container.encodeIfPresent(valueType, forKey: .valueType)
            
            
        }
        
    }
    
    /*
        Model: PriceRange
        Used By: Cart
    */

    class PriceRange: Codable {
        
        
        public var min: Int?
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: Int?, min: Int?) {
            
            self.min = min
            
            self.max = max
            
        }

        public func duplicate() -> PriceRange {
            let dict = self.dictionary!
            let copy = PriceRange(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: BulkBundleRestriction
        Used By: Cart
    */

    class BulkBundleRestriction: Codable {
        
        
        public var multiStoreAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case multiStoreAllowed = "multi_store_allowed"
            
        }

        public init(multiStoreAllowed: Bool) {
            
            self.multiStoreAllowed = multiStoreAllowed
            
        }

        public func duplicate() -> BulkBundleRestriction {
            let dict = self.dictionary!
            let copy = BulkBundleRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                multiStoreAllowed = try container.decode(Bool.self, forKey: .multiStoreAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(multiStoreAllowed, forKey: .multiStoreAllowed)
            
            
        }
        
    }
    
    /*
        Model: PostOrder
        Used By: Cart
    */

    class PostOrder: Codable {
        
        
        public var cancellationAllowed: Bool?
        
        public var returnAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancellationAllowed = "cancellation_allowed"
            
            case returnAllowed = "return_allowed"
            
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            
            self.cancellationAllowed = cancellationAllowed
            
            self.returnAllowed = returnAllowed
            
        }

        public func duplicate() -> PostOrder {
            let dict = self.dictionary!
            let copy = PostOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
        }
        
    }
    
    /*
        Model: UsesRemaining
        Used By: Cart
    */

    class UsesRemaining: Codable {
        
        
        public var user: Int?
        
        public var app: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case app = "app"
            
            case total = "total"
            
        }

        public init(app: Int?, total: Int?, user: Int?) {
            
            self.user = user
            
            self.app = app
            
            self.total = total
            
        }

        public func duplicate() -> UsesRemaining {
            let dict = self.dictionary!
            let copy = UsesRemaining(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    user = try container.decode(Int.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    app = try container.decode(Int.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
    
    /*
        Model: UsesRestriction
        Used By: Cart
    */

    class UsesRestriction: Codable {
        
        
        public var maximum: UsesRemaining?
        
        public var remaining: UsesRemaining?
        

        public enum CodingKeys: String, CodingKey {
            
            case maximum = "maximum"
            
            case remaining = "remaining"
            
        }

        public init(maximum: UsesRemaining?, remaining: UsesRemaining?) {
            
            self.maximum = maximum
            
            self.remaining = remaining
            
        }

        public func duplicate() -> UsesRestriction {
            let dict = self.dictionary!
            let copy = UsesRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maximum = try container.decode(UsesRemaining.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remaining = try container.decode(UsesRemaining.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
        }
        
    }
    
    /*
        Model: PaymentAllowValue
        Used By: Cart
    */

    class PaymentAllowValue: Codable {
        
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
        }

        public init(max: Int?) {
            
            self.max = max
            
        }

        public func duplicate() -> PaymentAllowValue {
            let dict = self.dictionary!
            let copy = PaymentAllowValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PaymentModes
        Used By: Cart
    */

    class PaymentModes: Codable {
        
        
        public var networks: [String]?
        
        public var types: [String]?
        
        public var uses: PaymentAllowValue?
        
        public var codes: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case networks = "networks"
            
            case types = "types"
            
            case uses = "uses"
            
            case codes = "codes"
            
        }

        public init(codes: [String]?, networks: [String]?, types: [String]?, uses: PaymentAllowValue?) {
            
            self.networks = networks
            
            self.types = types
            
            self.uses = uses
            
            self.codes = codes
            
        }

        public func duplicate() -> PaymentModes {
            let dict = self.dictionary!
            let copy = PaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    networks = try container.decode([String].self, forKey: .networks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    types = try container.decode([String].self, forKey: .types)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(PaymentAllowValue.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codes = try container.decode([String].self, forKey: .codes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(networks, forKey: .networks)
            
            
            
            
            try? container.encodeIfPresent(types, forKey: .types)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(codes, forKey: .codes)
            
            
        }
        
    }
    
    /*
        Model: Restrictions
        Used By: Cart
    */

    class Restrictions: Codable {
        
        
        public var priceRange: PriceRange?
        
        public var platforms: [String]?
        
        public var bulkBundle: BulkBundleRestriction?
        
        public var postOrder: PostOrder?
        
        public var uses: UsesRestriction?
        
        public var userGroups: [Int]?
        
        public var payments: [String: PaymentModes]?
        
        public var orderingStores: [Int]?
        
        public var couponAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceRange = "price_range"
            
            case platforms = "platforms"
            
            case bulkBundle = "bulk_bundle"
            
            case postOrder = "post_order"
            
            case uses = "uses"
            
            case userGroups = "user_groups"
            
            case payments = "payments"
            
            case orderingStores = "ordering_stores"
            
            case couponAllowed = "coupon_allowed"
            
        }

        public init(bulkBundle: BulkBundleRestriction?, couponAllowed: Bool?, orderingStores: [Int]?, payments: [String: PaymentModes]?, platforms: [String]?, postOrder: PostOrder?, priceRange: PriceRange?, userGroups: [Int]?, uses: UsesRestriction?) {
            
            self.priceRange = priceRange
            
            self.platforms = platforms
            
            self.bulkBundle = bulkBundle
            
            self.postOrder = postOrder
            
            self.uses = uses
            
            self.userGroups = userGroups
            
            self.payments = payments
            
            self.orderingStores = orderingStores
            
            self.couponAllowed = couponAllowed
            
        }

        public func duplicate() -> Restrictions {
            let dict = self.dictionary!
            let copy = Restrictions(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priceRange = try container.decode(PriceRange.self, forKey: .priceRange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkBundle = try container.decode(BulkBundleRestriction.self, forKey: .bulkBundle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode(PostOrder.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(UsesRestriction.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroups = try container.decode([Int].self, forKey: .userGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([String: PaymentModes].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStores = try container.decode([Int].self, forKey: .orderingStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponAllowed = try container.decode(Bool.self, forKey: .couponAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceRange, forKey: .priceRange)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)
            
            
            
            
            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)
            
            
        }
        
    }
    
    /*
        Model: Validity
        Used By: Cart
    */

    class Validity: Codable {
        
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
        }

        public init(priority: Int?) {
            
            self.priority = priority
            
        }

        public func duplicate() -> Validity {
            let dict = self.dictionary!
            let copy = Validity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
    
    /*
        Model: Ownership
        Used By: Cart
    */

    class Ownership: Codable {
        
        
        public var payableCategory: String
        
        public var payableBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
            case payableBy = "payable_by"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableCategory = payableCategory
            
            self.payableBy = payableBy
            
        }

        public func duplicate() -> Ownership {
            let dict = self.dictionary!
            let copy = Ownership(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
        }
        
    }
    
    /*
        Model: CouponDateMeta
        Used By: Cart
    */

    class CouponDateMeta: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public func duplicate() -> CouponDateMeta {
            let dict = self.dictionary!
            let copy = CouponDateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
    
    /*
        Model: Validation
        Used By: Cart
    */

    class Validation: Codable {
        
        
        public var userRegisteredAfter: String?
        
        public var appId: [String]?
        
        public var anonymous: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case userRegisteredAfter = "user_registered_after"
            
            case appId = "app_id"
            
            case anonymous = "anonymous"
            
        }

        public init(anonymous: Bool?, appId: [String]?, userRegisteredAfter: String?) {
            
            self.userRegisteredAfter = userRegisteredAfter
            
            self.appId = appId
            
            self.anonymous = anonymous
            
        }

        public func duplicate() -> Validation {
            let dict = self.dictionary!
            let copy = Validation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userRegisteredAfter = try container.decode(String.self, forKey: .userRegisteredAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode([String].self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
        }
        
    }
    
    /*
        Model: CouponAuthor
        Used By: Cart
    */

    class CouponAuthor: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(createdBy: String?, modifiedBy: String?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        public func duplicate() -> CouponAuthor {
            let dict = self.dictionary!
            let copy = CouponAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
    
    /*
        Model: CouponAction
        Used By: Cart
    */

    class CouponAction: Codable {
        
        
        public var txnMode: String?
        
        public var actionDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case txnMode = "txn_mode"
            
            case actionDate = "action_date"
            
        }

        public init(actionDate: String?, txnMode: String?) {
            
            self.txnMode = txnMode
            
            self.actionDate = actionDate
            
        }

        public func duplicate() -> CouponAction {
            let dict = self.dictionary!
            let copy = CouponAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    txnMode = try container.decode(String.self, forKey: .txnMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionDate = try container.decode(String.self, forKey: .actionDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(txnMode, forKey: .txnMode)
            
            
            
            
            try? container.encode(actionDate, forKey: .actionDate)
            
            
        }
        
    }
    
    /*
        Model: Rule
        Used By: Cart
    */

    class Rule: Codable {
        
        
        public var max: Double?
        
        public var key: Double?
        
        public var value: Double?
        
        public var min: Double?
        
        public var discountQty: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case key = "key"
            
            case value = "value"
            
            case min = "min"
            
            case discountQty = "discount_qty"
            
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            
            self.max = max
            
            self.key = key
            
            self.value = value
            
            self.min = min
            
            self.discountQty = discountQty
            
        }

        public func duplicate() -> Rule {
            let dict = self.dictionary!
            let copy = Rule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(Double.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountQty = try container.decode(Double.self, forKey: .discountQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(discountQty, forKey: .discountQty)
            
            
        }
        
    }
    
    /*
        Model: CouponSchedule
        Used By: Cart
    */

    class CouponSchedule: Codable {
        
        
        public var nextSchedule: [[String: Any]]?
        
        public var end: String?
        
        public var cron: String?
        
        public var duration: Int?
        
        public var start: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case nextSchedule = "next_schedule"
            
            case end = "end"
            
            case cron = "cron"
            
            case duration = "duration"
            
            case start = "start"
            
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, start: String?) {
            
            self.nextSchedule = nextSchedule
            
            self.end = end
            
            self.cron = cron
            
            self.duration = duration
            
            self.start = start
            
        }

        public func duplicate() -> CouponSchedule {
            let dict = self.dictionary!
            let copy = CouponSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
        }
        
    }
    
    /*
        Model: DisplayMetaDict
        Used By: Cart
    */

    class DisplayMetaDict: Codable {
        
        
        public var title: String?
        
        public var subtitle: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case subtitle = "subtitle"
            
        }

        public init(subtitle: String?, title: String?) {
            
            self.title = title
            
            self.subtitle = subtitle
            
        }

        public func duplicate() -> DisplayMetaDict {
            let dict = self.dictionary!
            let copy = DisplayMetaDict(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
        }
        
    }
    
    /*
        Model: DisplayMeta
        Used By: Cart
    */

    class DisplayMeta: Codable {
        
        
        public var subtitle: String?
        
        public var remove: DisplayMetaDict?
        
        public var description: String?
        
        public var apply: DisplayMetaDict?
        
        public var title: String?
        
        public var auto: DisplayMetaDict?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case remove = "remove"
            
            case description = "description"
            
            case apply = "apply"
            
            case title = "title"
            
            case auto = "auto"
            
        }

        public init(apply: DisplayMetaDict?, auto: DisplayMetaDict?, description: String?, remove: DisplayMetaDict?, subtitle: String?, title: String?) {
            
            self.subtitle = subtitle
            
            self.remove = remove
            
            self.description = description
            
            self.apply = apply
            
            self.title = title
            
            self.auto = auto
            
        }

        public func duplicate() -> DisplayMeta {
            let dict = self.dictionary!
            let copy = DisplayMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remove = try container.decode(DisplayMetaDict.self, forKey: .remove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apply = try container.decode(DisplayMetaDict.self, forKey: .apply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    auto = try container.decode(DisplayMetaDict.self, forKey: .auto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(remove, forKey: .remove)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(apply, forKey: .apply)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(auto, forKey: .auto)
            
            
        }
        
    }
    
    /*
        Model: Identifier
        Used By: Cart
    */

    class Identifier: Codable {
        
        
        public var categoryId: [Int]?
        
        public var storeId: [Int]?
        
        public var collectionId: [String]?
        
        public var itemId: [Int]?
        
        public var userId: [String]?
        
        public var articleId: [String]?
        
        public var brandId: [Int]?
        
        public var companyId: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryId = "category_id"
            
            case storeId = "store_id"
            
            case collectionId = "collection_id"
            
            case itemId = "item_id"
            
            case userId = "user_id"
            
            case articleId = "article_id"
            
            case brandId = "brand_id"
            
            case companyId = "company_id"
            
        }

        public init(articleId: [String]?, brandId: [Int]?, categoryId: [Int]?, collectionId: [String]?, companyId: [Int]?, itemId: [Int]?, storeId: [Int]?, userId: [String]?) {
            
            self.categoryId = categoryId
            
            self.storeId = storeId
            
            self.collectionId = collectionId
            
            self.itemId = itemId
            
            self.userId = userId
            
            self.articleId = articleId
            
            self.brandId = brandId
            
            self.companyId = companyId
            
        }

        public func duplicate() -> Identifier {
            let dict = self.dictionary!
            let copy = Identifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    categoryId = try container.decode([Int].self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode([Int].self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionId = try container.decode([String].self, forKey: .collectionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode([Int].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleId = try container.decode([String].self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode([Int].self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode([Int].self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(collectionId, forKey: .collectionId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
    
    /*
        Model: CouponAdd
        Used By: Cart
    */

    class CouponAdd: Codable {
        
        
        public var state: State?
        
        public var tags: [String]?
        
        public var ruleDefinition: RuleDefinition
        
        public var restrictions: Restrictions?
        
        public var validity: Validity
        
        public var ownership: Ownership
        
        public var code: String
        
        public var typeSlug: String
        
        public var dateMeta: CouponDateMeta?
        
        public var validation: Validation?
        
        public var author: CouponAuthor?
        
        public var action: CouponAction?
        
        public var rule: [Rule]
        
        public var schedule: CouponSchedule?
        
        public var displayMeta: DisplayMeta
        
        public var identifiers: Identifier
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case tags = "tags"
            
            case ruleDefinition = "rule_definition"
            
            case restrictions = "restrictions"
            
            case validity = "validity"
            
            case ownership = "ownership"
            
            case code = "code"
            
            case typeSlug = "type_slug"
            
            case dateMeta = "date_meta"
            
            case validation = "validation"
            
            case author = "author"
            
            case action = "action"
            
            case rule = "rule"
            
            case schedule = "_schedule"
            
            case displayMeta = "display_meta"
            
            case identifiers = "identifiers"
            
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            
            self.state = state
            
            self.tags = tags
            
            self.ruleDefinition = ruleDefinition
            
            self.restrictions = restrictions
            
            self.validity = validity
            
            self.ownership = ownership
            
            self.code = code
            
            self.typeSlug = typeSlug
            
            self.dateMeta = dateMeta
            
            self.validation = validation
            
            self.author = author
            
            self.action = action
            
            self.rule = rule
            
            self.schedule = schedule
            
            self.displayMeta = displayMeta
            
            self.identifiers = identifiers
            
        }

        public func duplicate() -> CouponAdd {
            let dict = self.dictionary!
            let copy = CouponAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                do {
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
        }
        
    }
    
    /*
        Model: CouponsResponse
        Used By: Cart
    */

    class CouponsResponse: Codable {
        
        
        public var page: Page?
        
        public var items: CouponAdd?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: CouponAdd?, page: Page?) {
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> CouponsResponse {
            let dict = self.dictionary!
            let copy = CouponsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode(CouponAdd.self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: SuccessMessage
        Used By: Cart
    */

    class SuccessMessage: Codable {
        
        
        public var message: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String?, success: Bool?) {
            
            self.message = message
            
            self.success = success
            
        }

        public func duplicate() -> SuccessMessage {
            let dict = self.dictionary!
            let copy = SuccessMessage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: OperationErrorResponse
        Used By: Cart
    */

    class OperationErrorResponse: Codable {
        
        
        public var message: String?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String?, success: Bool?) {
            
            self.message = message
            
            self.success = success
            
        }

        public func duplicate() -> OperationErrorResponse {
            let dict = self.dictionary!
            let copy = OperationErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: CouponUpdate
        Used By: Cart
    */

    class CouponUpdate: Codable {
        
        
        public var state: State?
        
        public var tags: [String]?
        
        public var ruleDefinition: RuleDefinition
        
        public var restrictions: Restrictions?
        
        public var validity: Validity
        
        public var ownership: Ownership
        
        public var code: String
        
        public var typeSlug: String
        
        public var dateMeta: CouponDateMeta?
        
        public var validation: Validation?
        
        public var author: CouponAuthor?
        
        public var action: CouponAction?
        
        public var rule: [Rule]
        
        public var schedule: CouponSchedule?
        
        public var displayMeta: DisplayMeta
        
        public var identifiers: Identifier
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case tags = "tags"
            
            case ruleDefinition = "rule_definition"
            
            case restrictions = "restrictions"
            
            case validity = "validity"
            
            case ownership = "ownership"
            
            case code = "code"
            
            case typeSlug = "type_slug"
            
            case dateMeta = "date_meta"
            
            case validation = "validation"
            
            case author = "author"
            
            case action = "action"
            
            case rule = "rule"
            
            case schedule = "_schedule"
            
            case displayMeta = "display_meta"
            
            case identifiers = "identifiers"
            
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            
            self.state = state
            
            self.tags = tags
            
            self.ruleDefinition = ruleDefinition
            
            self.restrictions = restrictions
            
            self.validity = validity
            
            self.ownership = ownership
            
            self.code = code
            
            self.typeSlug = typeSlug
            
            self.dateMeta = dateMeta
            
            self.validation = validation
            
            self.author = author
            
            self.action = action
            
            self.rule = rule
            
            self.schedule = schedule
            
            self.displayMeta = displayMeta
            
            self.identifiers = identifiers
            
        }

        public func duplicate() -> CouponUpdate {
            let dict = self.dictionary!
            let copy = CouponUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                do {
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
        }
        
    }
    
    /*
        Model: CouponPartialUpdate
        Used By: Cart
    */

    class CouponPartialUpdate: Codable {
        
        
        public var schedule: CouponSchedule?
        
        public var archive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case archive = "archive"
            
        }

        public init(archive: Bool?, schedule: CouponSchedule?) {
            
            self.schedule = schedule
            
            self.archive = archive
            
        }

        public func duplicate() -> CouponPartialUpdate {
            let dict = self.dictionary!
            let copy = CouponPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
        }
        
    }
    
    /*
        Model: PromotionAction
        Used By: Cart
    */

    class PromotionAction: Codable {
        
        
        public var actionType: String
        
        public var actionDate: String
        

        public enum CodingKeys: String, CodingKey {
            
            case actionType = "action_type"
            
            case actionDate = "action_date"
            
        }

        public init(actionDate: String, actionType: String) {
            
            self.actionType = actionType
            
            self.actionDate = actionDate
            
        }

        public func duplicate() -> PromotionAction {
            let dict = self.dictionary!
            let copy = PromotionAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
            
                actionDate = try container.decode(String.self, forKey: .actionDate)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
            
            
            try? container.encode(actionDate, forKey: .actionDate)
            
            
        }
        
    }
    
    /*
        Model: PromotionDateMeta
        Used By: Cart
    */

    class PromotionDateMeta: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public func duplicate() -> PromotionDateMeta {
            let dict = self.dictionary!
            let copy = PromotionDateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
    
    /*
        Model: DiscountOffer
        Used By: Cart
    */

    class DiscountOffer: Codable {
        
        
        public var discountPrice: Double?
        
        public var discountAmount: Double?
        
        public var discountPercentage: Double?
        
        public var minOfferQuantity: Int?
        
        public var maxDiscountAmount: Double?
        
        public var code: String?
        
        public var maxOfferQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountPrice = "discount_price"
            
            case discountAmount = "discount_amount"
            
            case discountPercentage = "discount_percentage"
            
            case minOfferQuantity = "min_offer_quantity"
            
            case maxDiscountAmount = "max_discount_amount"
            
            case code = "code"
            
            case maxOfferQuantity = "max_offer_quantity"
            
        }

        public init(code: String?, discountAmount: Double?, discountPercentage: Double?, discountPrice: Double?, maxDiscountAmount: Double?, maxOfferQuantity: Int?, minOfferQuantity: Int?) {
            
            self.discountPrice = discountPrice
            
            self.discountAmount = discountAmount
            
            self.discountPercentage = discountPercentage
            
            self.minOfferQuantity = minOfferQuantity
            
            self.maxDiscountAmount = maxDiscountAmount
            
            self.code = code
            
            self.maxOfferQuantity = maxOfferQuantity
            
        }

        public func duplicate() -> DiscountOffer {
            let dict = self.dictionary!
            let copy = DiscountOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discountPrice = try container.decode(Double.self, forKey: .discountPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountAmount = try container.decode(Double.self, forKey: .discountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)
            
            
            
            
            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
            
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
            
            
            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
            
            
        }
        
    }
    
    /*
        Model: CompareObject
        Used By: Cart
    */

    class CompareObject: Codable {
        
        
        public var lessThanEquals: Double?
        
        public var greaterThan: Double?
        
        public var greaterThanEquals: Double?
        
        public var lessThan: Double?
        
        public var equals: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case lessThanEquals = "less_than_equals"
            
            case greaterThan = "greater_than"
            
            case greaterThanEquals = "greater_than_equals"
            
            case lessThan = "less_than"
            
            case equals = "equals"
            
        }

        public init(equals: Double?, greaterThan: Double?, greaterThanEquals: Double?, lessThan: Double?, lessThanEquals: Double?) {
            
            self.lessThanEquals = lessThanEquals
            
            self.greaterThan = greaterThan
            
            self.greaterThanEquals = greaterThanEquals
            
            self.lessThan = lessThan
            
            self.equals = equals
            
        }

        public func duplicate() -> CompareObject {
            let dict = self.dictionary!
            let copy = CompareObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lessThanEquals = try container.decode(Double.self, forKey: .lessThanEquals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    greaterThan = try container.decode(Double.self, forKey: .greaterThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lessThan = try container.decode(Double.self, forKey: .lessThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    equals = try container.decode(Double.self, forKey: .equals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)
            
            
            
            
            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)
            
            
            
            
            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)
            
            
            
            
            try? container.encodeIfPresent(lessThan, forKey: .lessThan)
            
            
            
            
            try? container.encodeIfPresent(equals, forKey: .equals)
            
            
        }
        
    }
    
    /*
        Model: ItemCriteria
        Used By: Cart
    */

    class ItemCriteria: Codable {
        
        
        public var itemStore: [Int]?
        
        public var itemExcludeCompany: [Int]?
        
        public var itemCategory: [Int]?
        
        public var cartTotal: CompareObject?
        
        public var itemBrand: [Int]?
        
        public var itemSize: [String]?
        
        public var itemCompany: [Int]?
        
        public var itemSku: [String]?
        
        public var itemId: [Int]?
        
        public var itemExcludeCategory: [Int]?
        
        public var buyExpression: String?
        
        public var itemExcludeStore: [Int]?
        
        public var cartQuantity: CompareObject?
        
        public var itemExcludeBrand: [Int]?
        
        public var itemExcludeSku: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemStore = "item_store"
            
            case itemExcludeCompany = "item_exclude_company"
            
            case itemCategory = "item_category"
            
            case cartTotal = "cart_total"
            
            case itemBrand = "item_brand"
            
            case itemSize = "item_size"
            
            case itemCompany = "item_company"
            
            case itemSku = "item_sku"
            
            case itemId = "item_id"
            
            case itemExcludeCategory = "item_exclude_category"
            
            case buyExpression = "buy_expression"
            
            case itemExcludeStore = "item_exclude_store"
            
            case cartQuantity = "cart_quantity"
            
            case itemExcludeBrand = "item_exclude_brand"
            
            case itemExcludeSku = "item_exclude_sku"
            
        }

        public init(buyExpression: String?, cartQuantity: CompareObject?, cartTotal: CompareObject?, itemBrand: [Int]?, itemCategory: [Int]?, itemCompany: [Int]?, itemExcludeBrand: [Int]?, itemExcludeCategory: [Int]?, itemExcludeCompany: [Int]?, itemExcludeSku: [String]?, itemExcludeStore: [Int]?, itemId: [Int]?, itemSize: [String]?, itemSku: [String]?, itemStore: [Int]?) {
            
            self.itemStore = itemStore
            
            self.itemExcludeCompany = itemExcludeCompany
            
            self.itemCategory = itemCategory
            
            self.cartTotal = cartTotal
            
            self.itemBrand = itemBrand
            
            self.itemSize = itemSize
            
            self.itemCompany = itemCompany
            
            self.itemSku = itemSku
            
            self.itemId = itemId
            
            self.itemExcludeCategory = itemExcludeCategory
            
            self.buyExpression = buyExpression
            
            self.itemExcludeStore = itemExcludeStore
            
            self.cartQuantity = cartQuantity
            
            self.itemExcludeBrand = itemExcludeBrand
            
            self.itemExcludeSku = itemExcludeSku
            
        }

        public func duplicate() -> ItemCriteria {
            let dict = self.dictionary!
            let copy = ItemCriteria(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemStore = try container.decode([Int].self, forKey: .itemStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCategory = try container.decode([Int].self, forKey: .itemCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemBrand = try container.decode([Int].self, forKey: .itemBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSize = try container.decode([String].self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCompany = try container.decode([Int].self, forKey: .itemCompany)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSku = try container.decode([String].self, forKey: .itemSku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode([Int].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyExpression = try container.decode(String.self, forKey: .buyExpression)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemStore, forKey: .itemStore)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)
            
            
            
            
            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)
            
            
            
            
            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)
            
            
            
            
            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)
            
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
            
            
            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)
            
            
            
            
            try? container.encodeIfPresent(itemSku, forKey: .itemSku)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)
            
            
            
            
            try? container.encodeIfPresent(buyExpression, forKey: .buyExpression)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)
            
            
            
            
            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)
            
            
        }
        
    }
    
    /*
        Model: DiscountRule
        Used By: Cart
    */

    class DiscountRule: Codable {
        
        
        public var discountType: String
        
        public var offer: DiscountOffer
        
        public var itemCriteria: ItemCriteria
        
        public var buyCondition: String
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case offer = "offer"
            
            case itemCriteria = "item_criteria"
            
            case buyCondition = "buy_condition"
            
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            
            self.discountType = discountType
            
            self.offer = offer
            
            self.itemCriteria = itemCriteria
            
            self.buyCondition = buyCondition
            
        }

        public func duplicate() -> DiscountRule {
            let dict = self.dictionary!
            let copy = DiscountRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                offer = try container.decode(DiscountOffer.self, forKey: .offer)
                
            
            
            
                itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)
                
            
            
            
                buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
        }
        
    }
    
    /*
        Model: Ownership1
        Used By: Cart
    */

    class Ownership1: Codable {
        
        
        public var payableCategory: String
        
        public var payableBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
            case payableBy = "payable_by"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableCategory = payableCategory
            
            self.payableBy = payableBy
            
        }

        public func duplicate() -> Ownership1 {
            let dict = self.dictionary!
            let copy = Ownership1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
        }
        
    }
    
    /*
        Model: PromotionAuthor
        Used By: Cart
    */

    class PromotionAuthor: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(createdBy: String?, modifiedBy: String?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        public func duplicate() -> PromotionAuthor {
            let dict = self.dictionary!
            let copy = PromotionAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
    
    /*
        Model: Visibility
        Used By: Cart
    */

    class Visibility: Codable {
        
        
        public var couponList: Bool
        
        public var pdp: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case couponList = "coupon_list"
            
            case pdp = "pdp"
            
        }

        public init(couponList: Bool, pdp: Bool) {
            
            self.couponList = couponList
            
            self.pdp = pdp
            
        }

        public func duplicate() -> Visibility {
            let dict = self.dictionary!
            let copy = Visibility(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                couponList = try container.decode(Bool.self, forKey: .couponList)
                
            
            
            
                pdp = try container.decode(Bool.self, forKey: .pdp)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponList, forKey: .couponList)
            
            
            
            
            try? container.encodeIfPresent(pdp, forKey: .pdp)
            
            
        }
        
    }
    
    /*
        Model: PromotionSchedule
        Used By: Cart
    */

    class PromotionSchedule: Codable {
        
        
        public var nextSchedule: [[String: Any]]?
        
        public var published: Bool
        
        public var end: String?
        
        public var cron: String?
        
        public var duration: Int?
        
        public var start: String
        

        public enum CodingKeys: String, CodingKey {
            
            case nextSchedule = "next_schedule"
            
            case published = "published"
            
            case end = "end"
            
            case cron = "cron"
            
            case duration = "duration"
            
            case start = "start"
            
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, published: Bool, start: String) {
            
            self.nextSchedule = nextSchedule
            
            self.published = published
            
            self.end = end
            
            self.cron = cron
            
            self.duration = duration
            
            self.start = start
            
        }

        public func duplicate() -> PromotionSchedule {
            let dict = self.dictionary!
            let copy = PromotionSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                start = try container.decode(String.self, forKey: .start)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
        }
        
    }
    
    /*
        Model: DisplayMeta1
        Used By: Cart
    */

    class DisplayMeta1: Codable {
        
        
        public var offerText: String?
        
        public var description: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case offerText = "offer_text"
            
            case description = "description"
            
            case name = "name"
            
        }

        public init(description: String?, name: String?, offerText: String?) {
            
            self.offerText = offerText
            
            self.description = description
            
            self.name = name
            
        }

        public func duplicate() -> DisplayMeta1 {
            let dict = self.dictionary!
            let copy = DisplayMeta1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: UserRegistered
        Used By: Cart
    */

    class UserRegistered: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> UserRegistered {
            let dict = self.dictionary!
            let copy = UserRegistered(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(start, forKey: .start)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: PostOrder1
        Used By: Cart
    */

    class PostOrder1: Codable {
        
        
        public var cancellationAllowed: Bool?
        
        public var returnAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancellationAllowed = "cancellation_allowed"
            
            case returnAllowed = "return_allowed"
            
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            
            self.cancellationAllowed = cancellationAllowed
            
            self.returnAllowed = returnAllowed
            
        }

        public func duplicate() -> PostOrder1 {
            let dict = self.dictionary!
            let copy = PostOrder1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
        }
        
    }
    
    /*
        Model: UsesRemaining1
        Used By: Cart
    */

    class UsesRemaining1: Codable {
        
        
        public var user: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case total = "total"
            
        }

        public init(total: Int?, user: Int?) {
            
            self.user = user
            
            self.total = total
            
        }

        public func duplicate() -> UsesRemaining1 {
            let dict = self.dictionary!
            let copy = UsesRemaining1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    user = try container.decode(Int.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
    
    /*
        Model: UsesRestriction1
        Used By: Cart
    */

    class UsesRestriction1: Codable {
        
        
        public var maximum: UsesRemaining1?
        
        public var remaining: UsesRemaining1?
        

        public enum CodingKeys: String, CodingKey {
            
            case maximum = "maximum"
            
            case remaining = "remaining"
            
        }

        public init(maximum: UsesRemaining1?, remaining: UsesRemaining1?) {
            
            self.maximum = maximum
            
            self.remaining = remaining
            
        }

        public func duplicate() -> UsesRestriction1 {
            let dict = self.dictionary!
            let copy = UsesRestriction1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maximum = try container.decode(UsesRemaining1.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
        }
        
    }
    
    /*
        Model: PaymentAllowValue1
        Used By: Cart
    */

    class PaymentAllowValue1: Codable {
        
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
        }

        public init(max: Int?) {
            
            self.max = max
            
        }

        public func duplicate() -> PaymentAllowValue1 {
            let dict = self.dictionary!
            let copy = PaymentAllowValue1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PromotionPaymentModes
        Used By: Cart
    */

    class PromotionPaymentModes: Codable {
        
        
        public var type: String
        
        public var uses: PaymentAllowValue1?
        
        public var codes: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case uses = "uses"
            
            case codes = "codes"
            
        }

        public init(codes: [String]?, type: String, uses: PaymentAllowValue1?) {
            
            self.type = type
            
            self.uses = uses
            
            self.codes = codes
            
        }

        public func duplicate() -> PromotionPaymentModes {
            let dict = self.dictionary!
            let copy = PromotionPaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    uses = try container.decode(PaymentAllowValue1.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codes = try container.decode([String].self, forKey: .codes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(codes, forKey: .codes)
            
            
        }
        
    }
    
    /*
        Model: Restrictions1
        Used By: Cart
    */

    class Restrictions1: Codable {
        
        
        public var anonymousUsers: Bool?
        
        public var userRegistered: UserRegistered?
        
        public var orderQuantity: Int?
        
        public var platforms: [String]?
        
        public var postOrder: PostOrder1?
        
        public var uses: UsesRestriction1
        
        public var userGroups: [Int]?
        
        public var userId: [String]?
        
        public var payments: [PromotionPaymentModes]?
        

        public enum CodingKeys: String, CodingKey {
            
            case anonymousUsers = "anonymous_users"
            
            case userRegistered = "user_registered"
            
            case orderQuantity = "order_quantity"
            
            case platforms = "platforms"
            
            case postOrder = "post_order"
            
            case uses = "uses"
            
            case userGroups = "user_groups"
            
            case userId = "user_id"
            
            case payments = "payments"
            
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            
            self.anonymousUsers = anonymousUsers
            
            self.userRegistered = userRegistered
            
            self.orderQuantity = orderQuantity
            
            self.platforms = platforms
            
            self.postOrder = postOrder
            
            self.uses = uses
            
            self.userGroups = userGroups
            
            self.userId = userId
            
            self.payments = payments
            
        }

        public func duplicate() -> Restrictions1 {
            let dict = self.dictionary!
            let copy = Restrictions1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userRegistered = try container.decode(UserRegistered.self, forKey: .userRegistered)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uses = try container.decode(UsesRestriction1.self, forKey: .uses)
                
            
            
            
                do {
                    userGroups = try container.decode([Int].self, forKey: .userGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([PromotionPaymentModes].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)
            
            
            
            
            try? container.encode(userRegistered, forKey: .userRegistered)
            
            
            
            
            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
        }
        
    }
    
    /*
        Model: PromotionListItem
        Used By: Cart
    */

    class PromotionListItem: Codable {
        
        
        public var promotionType: String
        
        public var postOrderAction: PromotionAction?
        
        public var dateMeta: PromotionDateMeta?
        
        public var currency: String?
        
        public var discountRules: [DiscountRule]
        
        public var code: String?
        
        public var ownership: Ownership1
        
        public var mode: String
        
        public var applyExclusive: String?
        
        public var buyRules: [String: ItemCriteria]
        
        public var applyAllDiscount: Bool?
        
        public var applicationId: String
        
        public var customJson: [String: Any]?
        
        public var author: PromotionAuthor?
        
        public var visiblility: Visibility?
        
        public var schedule: PromotionSchedule?
        
        public var displayMeta: DisplayMeta1
        
        public var restrictions: Restrictions1?
        
        public var applyPriority: Int?
        
        public var promoGroup: String
        
        public var stackable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionType = "promotion_type"
            
            case postOrderAction = "post_order_action"
            
            case dateMeta = "date_meta"
            
            case currency = "currency"
            
            case discountRules = "discount_rules"
            
            case code = "code"
            
            case ownership = "ownership"
            
            case mode = "mode"
            
            case applyExclusive = "apply_exclusive"
            
            case buyRules = "buy_rules"
            
            case applyAllDiscount = "apply_all_discount"
            
            case applicationId = "application_id"
            
            case customJson = "_custom_json"
            
            case author = "author"
            
            case visiblility = "visiblility"
            
            case schedule = "_schedule"
            
            case displayMeta = "display_meta"
            
            case restrictions = "restrictions"
            
            case applyPriority = "apply_priority"
            
            case promoGroup = "promo_group"
            
            case stackable = "stackable"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.promotionType = promotionType
            
            self.postOrderAction = postOrderAction
            
            self.dateMeta = dateMeta
            
            self.currency = currency
            
            self.discountRules = discountRules
            
            self.code = code
            
            self.ownership = ownership
            
            self.mode = mode
            
            self.applyExclusive = applyExclusive
            
            self.buyRules = buyRules
            
            self.applyAllDiscount = applyAllDiscount
            
            self.applicationId = applicationId
            
            self.customJson = customJson
            
            self.author = author
            
            self.visiblility = visiblility
            
            self.schedule = schedule
            
            self.displayMeta = displayMeta
            
            self.restrictions = restrictions
            
            self.applyPriority = applyPriority
            
            self.promoGroup = promoGroup
            
            self.stackable = stackable
            
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
        }
        
    }
    
    /*
        Model: PromotionsResponse
        Used By: Cart
    */

    class PromotionsResponse: Codable {
        
        
        public var page: Page?
        
        public var items: PromotionListItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: PromotionListItem?, page: Page?) {
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> PromotionsResponse {
            let dict = self.dictionary!
            let copy = PromotionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode(PromotionListItem.self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: PromotionAdd
        Used By: Cart
    */

    class PromotionAdd: Codable {
        
        
        public var promotionType: String
        
        public var postOrderAction: PromotionAction?
        
        public var dateMeta: PromotionDateMeta?
        
        public var currency: String?
        
        public var discountRules: [DiscountRule]
        
        public var code: String?
        
        public var ownership: Ownership1
        
        public var mode: String
        
        public var applyExclusive: String?
        
        public var buyRules: [String: ItemCriteria]
        
        public var applyAllDiscount: Bool?
        
        public var applicationId: String
        
        public var customJson: [String: Any]?
        
        public var author: PromotionAuthor?
        
        public var visiblility: Visibility?
        
        public var schedule: PromotionSchedule?
        
        public var displayMeta: DisplayMeta1
        
        public var restrictions: Restrictions1?
        
        public var applyPriority: Int?
        
        public var promoGroup: String
        
        public var stackable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionType = "promotion_type"
            
            case postOrderAction = "post_order_action"
            
            case dateMeta = "date_meta"
            
            case currency = "currency"
            
            case discountRules = "discount_rules"
            
            case code = "code"
            
            case ownership = "ownership"
            
            case mode = "mode"
            
            case applyExclusive = "apply_exclusive"
            
            case buyRules = "buy_rules"
            
            case applyAllDiscount = "apply_all_discount"
            
            case applicationId = "application_id"
            
            case customJson = "_custom_json"
            
            case author = "author"
            
            case visiblility = "visiblility"
            
            case schedule = "_schedule"
            
            case displayMeta = "display_meta"
            
            case restrictions = "restrictions"
            
            case applyPriority = "apply_priority"
            
            case promoGroup = "promo_group"
            
            case stackable = "stackable"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.promotionType = promotionType
            
            self.postOrderAction = postOrderAction
            
            self.dateMeta = dateMeta
            
            self.currency = currency
            
            self.discountRules = discountRules
            
            self.code = code
            
            self.ownership = ownership
            
            self.mode = mode
            
            self.applyExclusive = applyExclusive
            
            self.buyRules = buyRules
            
            self.applyAllDiscount = applyAllDiscount
            
            self.applicationId = applicationId
            
            self.customJson = customJson
            
            self.author = author
            
            self.visiblility = visiblility
            
            self.schedule = schedule
            
            self.displayMeta = displayMeta
            
            self.restrictions = restrictions
            
            self.applyPriority = applyPriority
            
            self.promoGroup = promoGroup
            
            self.stackable = stackable
            
        }

        public func duplicate() -> PromotionAdd {
            let dict = self.dictionary!
            let copy = PromotionAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
        }
        
    }
    
    /*
        Model: PromotionUpdate
        Used By: Cart
    */

    class PromotionUpdate: Codable {
        
        
        public var promotionType: String
        
        public var postOrderAction: PromotionAction?
        
        public var dateMeta: PromotionDateMeta?
        
        public var currency: String?
        
        public var discountRules: [DiscountRule]
        
        public var code: String?
        
        public var ownership: Ownership1
        
        public var mode: String
        
        public var applyExclusive: String?
        
        public var buyRules: [String: ItemCriteria]
        
        public var applyAllDiscount: Bool?
        
        public var applicationId: String
        
        public var customJson: [String: Any]?
        
        public var author: PromotionAuthor?
        
        public var visiblility: Visibility?
        
        public var schedule: PromotionSchedule?
        
        public var displayMeta: DisplayMeta1
        
        public var restrictions: Restrictions1?
        
        public var applyPriority: Int?
        
        public var promoGroup: String
        
        public var stackable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionType = "promotion_type"
            
            case postOrderAction = "post_order_action"
            
            case dateMeta = "date_meta"
            
            case currency = "currency"
            
            case discountRules = "discount_rules"
            
            case code = "code"
            
            case ownership = "ownership"
            
            case mode = "mode"
            
            case applyExclusive = "apply_exclusive"
            
            case buyRules = "buy_rules"
            
            case applyAllDiscount = "apply_all_discount"
            
            case applicationId = "application_id"
            
            case customJson = "_custom_json"
            
            case author = "author"
            
            case visiblility = "visiblility"
            
            case schedule = "_schedule"
            
            case displayMeta = "display_meta"
            
            case restrictions = "restrictions"
            
            case applyPriority = "apply_priority"
            
            case promoGroup = "promo_group"
            
            case stackable = "stackable"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.promotionType = promotionType
            
            self.postOrderAction = postOrderAction
            
            self.dateMeta = dateMeta
            
            self.currency = currency
            
            self.discountRules = discountRules
            
            self.code = code
            
            self.ownership = ownership
            
            self.mode = mode
            
            self.applyExclusive = applyExclusive
            
            self.buyRules = buyRules
            
            self.applyAllDiscount = applyAllDiscount
            
            self.applicationId = applicationId
            
            self.customJson = customJson
            
            self.author = author
            
            self.visiblility = visiblility
            
            self.schedule = schedule
            
            self.displayMeta = displayMeta
            
            self.restrictions = restrictions
            
            self.applyPriority = applyPriority
            
            self.promoGroup = promoGroup
            
            self.stackable = stackable
            
        }

        public func duplicate() -> PromotionUpdate {
            let dict = self.dictionary!
            let copy = PromotionUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
        }
        
    }
    
    /*
        Model: PromotionPartialUpdate
        Used By: Cart
    */

    class PromotionPartialUpdate: Codable {
        
        
        public var schedule: PromotionSchedule?
        
        public var archive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case archive = "archive"
            
        }

        public init(archive: Bool?, schedule: PromotionSchedule?) {
            
            self.schedule = schedule
            
            self.archive = archive
            
        }

        public func duplicate() -> PromotionPartialUpdate {
            let dict = self.dictionary!
            let copy = PromotionPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
        }
        
    }
    
    /*
        Model: CartItem
        Used By: Cart
    */

    class CartItem: Codable {
        
        
        public var quantity: Int?
        
        public var productId: String
        
        public var size: String
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case productId = "product_id"
            
            case size = "size"
            
        }

        public init(productId: String, quantity: Int?, size: String) {
            
            self.quantity = quantity
            
            self.productId = productId
            
            self.size = size
            
        }

        public func duplicate() -> CartItem {
            let dict = self.dictionary!
            let copy = CartItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                productId = try container.decode(String.self, forKey: .productId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
    
    /*
        Model: OpenapiCartDetailsRequest
        Used By: Cart
    */

    class OpenapiCartDetailsRequest: Codable {
        
        
        public var cartItems: CartItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
        }

        public init(cartItems: CartItem?) {
            
            self.cartItems = cartItems
            
        }

        public func duplicate() -> OpenapiCartDetailsRequest {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartItems = try container.decode(CartItem.self, forKey: .cartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
        }
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: Cart
    */

    class LoyaltyPoints: Codable {
        
        
        public var isApplied: Bool?
        
        public var description: String?
        
        public var applicable: Double?
        
        public var total: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case description = "description"
            
            case applicable = "applicable"
            
            case total = "total"
            
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            
            self.isApplied = isApplied
            
            self.description = description
            
            self.applicable = applicable
            
            self.total = total
            
        }

        public func duplicate() -> LoyaltyPoints {
            let dict = self.dictionary!
            let copy = LoyaltyPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicable = try container.decode(Double.self, forKey: .applicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
    
    /*
        Model: DisplayBreakup
        Used By: Cart
    */

    class DisplayBreakup: Codable {
        
        
        public var currencyCode: String?
        
        public var display: String?
        
        public var key: String?
        
        public var message: [String]?
        
        public var value: Double?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case display = "display"
            
            case key = "key"
            
            case message = "message"
            
            case value = "value"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            
            self.currencyCode = currencyCode
            
            self.display = display
            
            self.key = key
            
            self.message = message
            
            self.value = value
            
            self.currencySymbol = currencySymbol
            
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode([String].self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
        }
        
    }
    
    /*
        Model: RawBreakup
        Used By: Cart
    */

    class RawBreakup: Codable {
        
        
        public var convenienceFee: Double?
        
        public var discount: Double?
        
        public var codCharge: Double?
        
        public var mrpTotal: Double?
        
        public var subtotal: Double?
        
        public var total: Double?
        
        public var gstCharges: Double?
        
        public var youSaved: Double?
        
        public var fyndCash: Double?
        
        public var deliveryCharge: Double?
        
        public var vog: Double?
        
        public var coupon: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case convenienceFee = "convenience_fee"
            
            case discount = "discount"
            
            case codCharge = "cod_charge"
            
            case mrpTotal = "mrp_total"
            
            case subtotal = "subtotal"
            
            case total = "total"
            
            case gstCharges = "gst_charges"
            
            case youSaved = "you_saved"
            
            case fyndCash = "fynd_cash"
            
            case deliveryCharge = "delivery_charge"
            
            case vog = "vog"
            
            case coupon = "coupon"
            
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            
            self.convenienceFee = convenienceFee
            
            self.discount = discount
            
            self.codCharge = codCharge
            
            self.mrpTotal = mrpTotal
            
            self.subtotal = subtotal
            
            self.total = total
            
            self.gstCharges = gstCharges
            
            self.youSaved = youSaved
            
            self.fyndCash = fyndCash
            
            self.deliveryCharge = deliveryCharge
            
            self.vog = vog
            
            self.coupon = coupon
            
        }

        public func duplicate() -> RawBreakup {
            let dict = self.dictionary!
            let copy = RawBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharge = try container.decode(Double.self, forKey: .codCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCash = try container.decode(Double.self, forKey: .fyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vog = try container.decode(Double.self, forKey: .vog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
    
    /*
        Model: CouponBreakup
        Used By: Cart
    */

    class CouponBreakup: Codable {
        
        
        public var type: String?
        
        public var isApplied: Bool?
        
        public var minimumCartValue: Double?
        
        public var maxDiscountValue: Double?
        
        public var uid: String?
        
        public var couponType: String?
        
        public var title: String?
        
        public var description: String?
        
        public var message: String?
        
        public var code: String?
        
        public var value: Double?
        
        public var subTitle: String?
        
        public var couponValue: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case isApplied = "is_applied"
            
            case minimumCartValue = "minimum_cart_value"
            
            case maxDiscountValue = "max_discount_value"
            
            case uid = "uid"
            
            case couponType = "coupon_type"
            
            case title = "title"
            
            case description = "description"
            
            case message = "message"
            
            case code = "code"
            
            case value = "value"
            
            case subTitle = "sub_title"
            
            case couponValue = "coupon_value"
            
        }

        public init(code: String?, couponType: String?, couponValue: Double?, description: String?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, type: String?, uid: String?, value: Double?) {
            
            self.type = type
            
            self.isApplied = isApplied
            
            self.minimumCartValue = minimumCartValue
            
            self.maxDiscountValue = maxDiscountValue
            
            self.uid = uid
            
            self.couponType = couponType
            
            self.title = title
            
            self.description = description
            
            self.message = message
            
            self.code = code
            
            self.value = value
            
            self.subTitle = subTitle
            
            self.couponValue = couponValue
            
        }

        public func duplicate() -> CouponBreakup {
            let dict = self.dictionary!
            let copy = CouponBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encode(couponType, forKey: .couponType)
            
            
            
            
            try? container.encode(title, forKey: .title)
            
            
            
            
            try? container.encode(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encode(subTitle, forKey: .subTitle)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
        }
        
    }
    
    /*
        Model: CartBreakup
        Used By: Cart
    */

    class CartBreakup: Codable {
        
        
        public var loyaltyPoints: LoyaltyPoints?
        
        public var display: [DisplayBreakup]?
        
        public var raw: RawBreakup?
        
        public var coupon: CouponBreakup?
        

        public enum CodingKeys: String, CodingKey {
            
            case loyaltyPoints = "loyalty_points"
            
            case display = "display"
            
            case raw = "raw"
            
            case coupon = "coupon"
            
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            
            self.loyaltyPoints = loyaltyPoints
            
            self.display = display
            
            self.raw = raw
            
            self.coupon = coupon
            
        }

        public func duplicate() -> CartBreakup {
            let dict = self.dictionary!
            let copy = CartBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(CouponBreakup.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
    
    /*
        Model: ProductPrice
        Used By: Cart
    */

    class ProductPrice: Codable {
        
        
        public var effective: Double?
        
        public var currencyCode: String?
        
        public var marked: Double?
        
        public var addOn: Double?
        
        public var currencySymbol: String?
        
        public var selling: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case currencyCode = "currency_code"
            
            case marked = "marked"
            
            case addOn = "add_on"
            
            case currencySymbol = "currency_symbol"
            
            case selling = "selling"
            
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            
            self.effective = effective
            
            self.currencyCode = currencyCode
            
            self.marked = marked
            
            self.addOn = addOn
            
            self.currencySymbol = currencySymbol
            
            self.selling = selling
            
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addOn = try container.decode(Double.self, forKey: .addOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selling = try container.decode(Double.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
        }
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: Cart
    */

    class ProductPriceInfo: Codable {
        
        
        public var base: ProductPrice?
        
        public var converted: ProductPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case converted = "converted"
            
        }

        public init(base: ProductPrice?, converted: ProductPrice?) {
            
            self.base = base
            
            self.converted = converted
            
        }

        public func duplicate() -> ProductPriceInfo {
            let dict = self.dictionary!
            let copy = ProductPriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    base = try container.decode(ProductPrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    converted = try container.decode(ProductPrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
        }
        
    }
    
    /*
        Model: ProductAvailability
        Used By: Cart
    */

    class ProductAvailability: Codable {
        
        
        public var outOfStock: Bool?
        
        public var sizes: [String]?
        
        public var isValid: Bool?
        
        public var deliverable: Bool?
        
        public var otherStoreQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case outOfStock = "out_of_stock"
            
            case sizes = "sizes"
            
            case isValid = "is_valid"
            
            case deliverable = "deliverable"
            
            case otherStoreQuantity = "other_store_quantity"
            
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            
            self.outOfStock = outOfStock
            
            self.sizes = sizes
            
            self.isValid = isValid
            
            self.deliverable = deliverable
            
            self.otherStoreQuantity = otherStoreQuantity
            
        }

        public func duplicate() -> ProductAvailability {
            let dict = self.dictionary!
            let copy = ProductAvailability(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverable = try container.decode(Bool.self, forKey: .deliverable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
            
            
            
            
            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
            
            
        }
        
    }
    
    /*
        Model: PromoMeta
        Used By: Cart
    */

    class PromoMeta: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> PromoMeta {
            let dict = self.dictionary!
            let copy = PromoMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: BaseInfo
        Used By: Cart
    */

    class BaseInfo: Codable {
        
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String?, uid: Int?) {
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> BaseInfo {
            let dict = self.dictionary!
            let copy = BaseInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: BasePrice
        Used By: Cart
    */

    class BasePrice: Codable {
        
        
        public var currencySymbol: String?
        
        public var effective: Double?
        
        public var currencyCode: String?
        
        public var marked: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case effective = "effective"
            
            case currencyCode = "currency_code"
            
            case marked = "marked"
            
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
            
            self.currencySymbol = currencySymbol
            
            self.effective = effective
            
            self.currencyCode = currencyCode
            
            self.marked = marked
            
        }

        public func duplicate() -> BasePrice {
            let dict = self.dictionary!
            let copy = BasePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
        }
        
    }
    
    /*
        Model: ArticlePriceInfo
        Used By: Cart
    */

    class ArticlePriceInfo: Codable {
        
        
        public var base: BasePrice?
        
        public var converted: BasePrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case converted = "converted"
            
        }

        public init(base: BasePrice?, converted: BasePrice?) {
            
            self.base = base
            
            self.converted = converted
            
        }

        public func duplicate() -> ArticlePriceInfo {
            let dict = self.dictionary!
            let copy = ArticlePriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    base = try container.decode(BasePrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    converted = try container.decode(BasePrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
        }
        
    }
    
    /*
        Model: ProductArticle
        Used By: Cart
    */

    class ProductArticle: Codable {
        
        
        public var type: String?
        
        public var quantity: Int?
        
        public var uid: String?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var seller: BaseInfo?
        
        public var size: String?
        
        public var extraMeta: [String: Any]?
        
        public var productGroupTags: [String]?
        
        public var price: ArticlePriceInfo?
        
        public var store: BaseInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case quantity = "quantity"
            
            case uid = "uid"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case seller = "seller"
            
            case size = "size"
            
            case extraMeta = "extra_meta"
            
            case productGroupTags = "product_group_tags"
            
            case price = "price"
            
            case store = "store"
            
        }

        public init(extraMeta: [String: Any]?, parentItemIdentifiers: [String: Any]?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            
            self.type = type
            
            self.quantity = quantity
            
            self.uid = uid
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.seller = seller
            
            self.size = size
            
            self.extraMeta = extraMeta
            
            self.productGroupTags = productGroupTags
            
            self.price = price
            
            self.store = store
            
        }

        public func duplicate() -> ProductArticle {
            let dict = self.dictionary!
            let copy = ProductArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seller = try container.decode(BaseInfo.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productGroupTags = try container.decode([String].self, forKey: .productGroupTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ArticlePriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(BaseInfo.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
        }
        
    }
    
    /*
        Model: AppliedPromotion
        Used By: Cart
    */

    class AppliedPromotion: Codable {
        
        
        public var promotionType: String?
        
        public var articleQuantity: Int?
        
        public var amount: Double?
        
        public var promoId: String?
        
        public var mrpPromotion: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionType = "promotion_type"
            
            case articleQuantity = "article_quantity"
            
            case amount = "amount"
            
            case promoId = "promo_id"
            
            case mrpPromotion = "mrp_promotion"
            
        }

        public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
            
            self.promotionType = promotionType
            
            self.articleQuantity = articleQuantity
            
            self.amount = amount
            
            self.promoId = promoId
            
            self.mrpPromotion = mrpPromotion
            
        }

        public func duplicate() -> AppliedPromotion {
            let dict = self.dictionary!
            let copy = AppliedPromotion(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoId = try container.decode(String.self, forKey: .promoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(promoId, forKey: .promoId)
            
            
            
            
            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
            
            
        }
        
    }
    
    /*
        Model: CartProductIdentifer
        Used By: Cart
    */

    class CartProductIdentifer: Codable {
        
        
        public var identifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
        }

        public init(identifier: String?) {
            
            self.identifier = identifier
            
        }

        public func duplicate() -> CartProductIdentifer {
            let dict = self.dictionary!
            let copy = CartProductIdentifer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
    
    /*
        Model: ProductImage
        Used By: Cart
    */

    class ProductImage: Codable {
        
        
        public var aspectRatio: String?
        
        public var secureUrl: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case secureUrl = "secure_url"
            
            case url = "url"
            
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            
            self.aspectRatio = aspectRatio
            
            self.secureUrl = secureUrl
            
            self.url = url
            
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
    
    /*
        Model: CategoryInfo
        Used By: Cart
    */

    class CategoryInfo: Codable {
        
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String?, uid: Int?) {
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> CategoryInfo {
            let dict = self.dictionary!
            let copy = CategoryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ActionQuery
        Used By: Cart
    */

    class ActionQuery: Codable {
        
        
        public var productSlug: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case productSlug = "product_slug"
            
        }

        public init(productSlug: [String]?) {
            
            self.productSlug = productSlug
            
        }

        public func duplicate() -> ActionQuery {
            let dict = self.dictionary!
            let copy = ActionQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productSlug = try container.decode([String].self, forKey: .productSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productSlug, forKey: .productSlug)
            
            
        }
        
    }
    
    /*
        Model: ProductAction
        Used By: Cart
    */

    class ProductAction: Codable {
        
        
        public var type: String?
        
        public var query: ActionQuery?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case query = "query"
            
            case url = "url"
            
        }

        public init(query: ActionQuery?, type: String?, url: String?) {
            
            self.type = type
            
            self.query = query
            
            self.url = url
            
        }

        public func duplicate() -> ProductAction {
            let dict = self.dictionary!
            let copy = ProductAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(ActionQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
    
    /*
        Model: CartProduct
        Used By: Cart
    */

    class CartProduct: Codable {
        
        
        public var images: [ProductImage]?
        
        public var type: String?
        
        public var categories: [CategoryInfo]?
        
        public var brand: BaseInfo?
        
        public var uid: Int?
        
        public var action: ProductAction?
        
        public var name: String?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case images = "images"
            
            case type = "type"
            
            case categories = "categories"
            
            case brand = "brand"
            
            case uid = "uid"
            
            case action = "action"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            
            self.images = images
            
            self.type = type
            
            self.categories = categories
            
            self.brand = brand
            
            self.uid = uid
            
            self.action = action
            
            self.name = name
            
            self.slug = slug
            
        }

        public func duplicate() -> CartProduct {
            let dict = self.dictionary!
            let copy = CartProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    images = try container.decode([ProductImage].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categories = try container.decode([CategoryInfo].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(ProductAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
    
    /*
        Model: CartProductInfo
        Used By: Cart
    */

    class CartProductInfo: Codable {
        
        
        public var couponMessage: String?
        
        public var pricePerUnit: ProductPriceInfo?
        
        public var discount: String?
        
        public var availability: ProductAvailability?
        
        public var quantity: Int?
        
        public var promoMeta: PromoMeta?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var article: ProductArticle?
        
        public var promotionApplied: [AppliedPromotion]?
        
        public var isSet: Bool?
        
        public var bulkOffer: [String: Any]?
        
        public var key: String?
        
        public var message: String?
        
        public var price: ProductPriceInfo?
        
        public var identifiers: CartProductIdentifer
        
        public var product: CartProduct?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponMessage = "coupon_message"
            
            case pricePerUnit = "price_per_unit"
            
            case discount = "discount"
            
            case availability = "availability"
            
            case quantity = "quantity"
            
            case promoMeta = "promo_meta"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case article = "article"
            
            case promotionApplied = "promotion_applied"
            
            case isSet = "is_set"
            
            case bulkOffer = "bulk_offer"
            
            case key = "key"
            
            case message = "message"
            
            case price = "price"
            
            case identifiers = "identifiers"
            
            case product = "product"
            
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, parentItemIdentifiers: [String: Any]?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
            
            self.couponMessage = couponMessage
            
            self.pricePerUnit = pricePerUnit
            
            self.discount = discount
            
            self.availability = availability
            
            self.quantity = quantity
            
            self.promoMeta = promoMeta
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.article = article
            
            self.promotionApplied = promotionApplied
            
            self.isSet = isSet
            
            self.bulkOffer = bulkOffer
            
            self.key = key
            
            self.message = message
            
            self.price = price
            
            self.identifiers = identifiers
            
            self.product = product
            
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    couponMessage = try container.decode(String.self, forKey: .couponMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availability = try container.decode(ProductAvailability.self, forKey: .availability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(ProductArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ProductPriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
            
            
            
                do {
                    product = try container.decode(CartProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
    
    /*
        Model: OpenapiCartDetailsResponse
        Used By: Cart
    */

    class OpenapiCartDetailsResponse: Codable {
        
        
        public var message: String?
        
        public var isValid: Bool?
        
        public var breakupValues: CartBreakup?
        
        public var items: [CartProductInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case isValid = "is_valid"
            
            case breakupValues = "breakup_values"
            
            case items = "items"
            
        }

        public init(breakupValues: CartBreakup?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            
            self.message = message
            
            self.isValid = isValid
            
            self.breakupValues = breakupValues
            
            self.items = items
            
        }

        public func duplicate() -> OpenapiCartDetailsResponse {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: OpenApiErrorResponse
        Used By: Cart
    */

    class OpenApiErrorResponse: Codable {
        
        
        public var message: String?
        
        public var errors: [String: Any]?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case errors = "errors"
            
            case success = "success"
            
        }

        public init(errors: [String: Any]?, message: String?, success: Bool?) {
            
            self.message = message
            
            self.errors = errors
            
            self.success = success
            
        }

        public func duplicate() -> OpenApiErrorResponse {
            let dict = self.dictionary!
            let copy = OpenApiErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errors = try container.decode([String: Any].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: ShippingAddress
        Used By: Cart
    */

    class ShippingAddress: Codable {
        
        
        public var state: String?
        
        public var areaCodeSlug: String?
        
        public var email: String?
        
        public var city: String?
        
        public var country: String?
        
        public var areaCode: String
        
        public var countryCode: String?
        
        public var address: String?
        
        public var addressType: String?
        
        public var meta: [String: Any]?
        
        public var phone: Int?
        
        public var name: String?
        
        public var area: String?
        
        public var landmark: String?
        
        public var pincode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case areaCodeSlug = "area_code_slug"
            
            case email = "email"
            
            case city = "city"
            
            case country = "country"
            
            case areaCode = "area_code"
            
            case countryCode = "country_code"
            
            case address = "address"
            
            case addressType = "address_type"
            
            case meta = "meta"
            
            case phone = "phone"
            
            case name = "name"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case pincode = "pincode"
            
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String, areaCodeSlug: String?, city: String?, country: String?, countryCode: String?, email: String?, landmark: String?, meta: [String: Any]?, name: String?, phone: Int?, pincode: Int?, state: String?) {
            
            self.state = state
            
            self.areaCodeSlug = areaCodeSlug
            
            self.email = email
            
            self.city = city
            
            self.country = country
            
            self.areaCode = areaCode
            
            self.countryCode = countryCode
            
            self.address = address
            
            self.addressType = addressType
            
            self.meta = meta
            
            self.phone = phone
            
            self.name = name
            
            self.area = area
            
            self.landmark = landmark
            
            self.pincode = pincode
            
        }

        public func duplicate() -> ShippingAddress {
            let dict = self.dictionary!
            let copy = ShippingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
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
                    phone = try container.decode(Int.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCartServiceabilityRequest
        Used By: Cart
    */

    class OpenApiCartServiceabilityRequest: Codable {
        
        
        public var cartItems: CartItem?
        
        public var shippingAddress: ShippingAddress
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
            case shippingAddress = "shipping_address"
            
        }

        public init(cartItems: CartItem?, shippingAddress: ShippingAddress) {
            
            self.cartItems = cartItems
            
            self.shippingAddress = shippingAddress
            
        }

        public func duplicate() -> OpenApiCartServiceabilityRequest {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartItems = try container.decode(CartItem.self, forKey: .cartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
        }
        
    }
    
    /*
        Model: PromiseFormatted
        Used By: Cart
    */

    class PromiseFormatted: Codable {
        
        
        public var min: String?
        
        public var max: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: String?, min: String?) {
            
            self.min = min
            
            self.max = max
            
        }

        public func duplicate() -> PromiseFormatted {
            let dict = self.dictionary!
            let copy = PromiseFormatted(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PromiseTimestamp
        Used By: Cart
    */

    class PromiseTimestamp: Codable {
        
        
        public var min: Double?
        
        public var max: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: Double?, min: Double?) {
            
            self.min = min
            
            self.max = max
            
        }

        public func duplicate() -> PromiseTimestamp {
            let dict = self.dictionary!
            let copy = PromiseTimestamp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: ShipmentPromise
        Used By: Cart
    */

    class ShipmentPromise: Codable {
        
        
        public var formatted: PromiseFormatted?
        
        public var timestamp: PromiseTimestamp?
        

        public enum CodingKeys: String, CodingKey {
            
            case formatted = "formatted"
            
            case timestamp = "timestamp"
            
        }

        public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
            
            self.formatted = formatted
            
            self.timestamp = timestamp
            
        }

        public func duplicate() -> ShipmentPromise {
            let dict = self.dictionary!
            let copy = ShipmentPromise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(formatted, forKey: .formatted)
            
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCartServiceabilityResponse
        Used By: Cart
    */

    class OpenApiCartServiceabilityResponse: Codable {
        
        
        public var deliveryPromise: ShipmentPromise?
        
        public var isValid: Bool?
        
        public var message: String?
        
        public var breakupValues: CartBreakup?
        
        public var items: [CartProductInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryPromise = "delivery_promise"
            
            case isValid = "is_valid"
            
            case message = "message"
            
            case breakupValues = "breakup_values"
            
            case items = "items"
            
        }

        public init(breakupValues: CartBreakup?, deliveryPromise: ShipmentPromise?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            
            self.deliveryPromise = deliveryPromise
            
            self.isValid = isValid
            
            self.message = message
            
            self.breakupValues = breakupValues
            
            self.items = items
            
        }

        public func duplicate() -> OpenApiCartServiceabilityResponse {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: CartItemMeta
        Used By: Cart
    */

    class CartItemMeta: Codable {
        
        
        public var groupId: String?
        
        public var primaryItem: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case groupId = "group_id"
            
            case primaryItem = "primary_item"
            
        }

        public init(groupId: String?, primaryItem: Bool?) {
            
            self.groupId = groupId
            
            self.primaryItem = primaryItem
            
        }

        public func duplicate() -> CartItemMeta {
            let dict = self.dictionary!
            let copy = CartItemMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryItem = try container.decode(Bool.self, forKey: .primaryItem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)
            
            
        }
        
    }
    
    /*
        Model: OpenApiFiles
        Used By: Cart
    */

    class OpenApiFiles: Codable {
        
        
        public var key: String
        
        public var values: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case values = "values"
            
        }

        public init(key: String, values: [String]) {
            
            self.key = key
            
            self.values = values
            
        }

        public func duplicate() -> OpenApiFiles {
            let dict = self.dictionary!
            let copy = OpenApiFiles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                values = try container.decode([String].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
    
    /*
        Model: OpenApiOrderItem
        Used By: Cart
    */

    class OpenApiOrderItem: Codable {
        
        
        public var cashbackApplied: Double
        
        public var couponEffectiveDiscount: Double
        
        public var priceEffective: Double
        
        public var extraMeta: [String: Any]?
        
        public var discount: Double
        
        public var quantity: Int?
        
        public var meta: CartItemMeta?
        
        public var size: String
        
        public var productId: Int
        
        public var codCharges: Double
        
        public var loyaltyDiscount: Double?
        
        public var employeeDiscount: Double?
        
        public var files: [OpenApiFiles]?
        
        public var amountPaid: Double
        
        public var priceMarked: Double
        
        public var deliveryCharges: Double
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        

        public enum CodingKeys: String, CodingKey {
            
            case cashbackApplied = "cashback_applied"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case priceEffective = "price_effective"
            
            case extraMeta = "extra_meta"
            
            case discount = "discount"
            
            case quantity = "quantity"
            
            case meta = "meta"
            
            case size = "size"
            
            case productId = "product_id"
            
            case codCharges = "cod_charges"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case employeeDiscount = "employee_discount"
            
            case files = "files"
            
            case amountPaid = "amount_paid"
            
            case priceMarked = "price_marked"
            
            case deliveryCharges = "delivery_charges"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double?, extraMeta: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, meta: CartItemMeta?, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int?, size: String) {
            
            self.cashbackApplied = cashbackApplied
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.priceEffective = priceEffective
            
            self.extraMeta = extraMeta
            
            self.discount = discount
            
            self.quantity = quantity
            
            self.meta = meta
            
            self.size = size
            
            self.productId = productId
            
            self.codCharges = codCharges
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.employeeDiscount = employeeDiscount
            
            self.files = files
            
            self.amountPaid = amountPaid
            
            self.priceMarked = priceMarked
            
            self.deliveryCharges = deliveryCharges
            
            self.paymentMethods = paymentMethods
            
        }

        public func duplicate() -> OpenApiOrderItem {
            let dict = self.dictionary!
            let copy = OpenApiOrderItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CartItemMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                productId = try container.decode(Int.self, forKey: .productId)
                
            
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
    
    /*
        Model: OpenApiPlatformCheckoutReq
        Used By: Cart
    */

    class OpenApiPlatformCheckoutReq: Codable {
        
        
        public var cashbackApplied: Double
        
        public var orderId: String?
        
        public var affiliateOrderId: String?
        
        public var employeeDiscount: [String: Any]?
        
        public var loyaltyDiscount: Double?
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        
        public var currencyCode: String?
        
        public var paymentMode: String?
        
        public var couponCode: String
        
        public var billingAddress: ShippingAddress
        
        public var shippingAddress: ShippingAddress?
        
        public var cartItems: [OpenApiOrderItem]
        
        public var codCharges: Double
        
        public var files: [OpenApiFiles]?
        
        public var cartValue: Double
        
        public var deliveryCharges: Double
        
        public var couponValue: Double
        
        public var coupon: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cashbackApplied = "cashback_applied"
            
            case orderId = "order_id"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case employeeDiscount = "employee_discount"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case paymentMethods = "payment_methods"
            
            case currencyCode = "currency_code"
            
            case paymentMode = "payment_mode"
            
            case couponCode = "coupon_code"
            
            case billingAddress = "billing_address"
            
            case shippingAddress = "shipping_address"
            
            case cartItems = "cart_items"
            
            case codCharges = "cod_charges"
            
            case files = "files"
            
            case cartValue = "cart_value"
            
            case deliveryCharges = "delivery_charges"
            
            case couponValue = "coupon_value"
            
            case coupon = "coupon"
            
        }

        public init(affiliateOrderId: String?, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String?, couponCode: String, couponValue: Double, currencyCode: String?, deliveryCharges: Double, employeeDiscount: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, orderId: String?, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String?, shippingAddress: ShippingAddress?) {
            
            self.cashbackApplied = cashbackApplied
            
            self.orderId = orderId
            
            self.affiliateOrderId = affiliateOrderId
            
            self.employeeDiscount = employeeDiscount
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.paymentMethods = paymentMethods
            
            self.currencyCode = currencyCode
            
            self.paymentMode = paymentMode
            
            self.couponCode = couponCode
            
            self.billingAddress = billingAddress
            
            self.shippingAddress = shippingAddress
            
            self.cartItems = cartItems
            
            self.codCharges = codCharges
            
            self.files = files
            
            self.cartValue = cartValue
            
            self.deliveryCharges = deliveryCharges
            
            self.couponValue = couponValue
            
            self.coupon = coupon
            
        }

        public func duplicate() -> OpenApiPlatformCheckoutReq {
            let dict = self.dictionary!
            let copy = OpenApiPlatformCheckoutReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                couponCode = try container.decode(String.self, forKey: .couponCode)
                
            
            
            
                billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)
                
            
            
            
                do {
                    shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
                
            
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                do {
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCheckoutResponse
        Used By: Cart
    */

    class OpenApiCheckoutResponse: Codable {
        
        
        public var message: String?
        
        public var orderRefId: String?
        
        public var orderId: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case orderRefId = "order_ref_id"
            
            case orderId = "order_id"
            
            case success = "success"
            
        }

        public init(message: String?, orderId: String, orderRefId: String?, success: Bool?) {
            
            self.message = message
            
            self.orderRefId = orderRefId
            
            self.orderId = orderId
            
            self.success = success
            
        }

        public func duplicate() -> OpenApiCheckoutResponse {
            let dict = self.dictionary!
            let copy = OpenApiCheckoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderRefId = try container.decode(String.self, forKey: .orderRefId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderRefId, forKey: .orderRefId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
}
