import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Identifier
         Used By: Cart
     */

    class Identifier: Codable {
        public var brandId: [Int]?

        public var storeId: [Int]?

        public var collectionId: [String]?

        public var articleId: [String]?

        public var itemId: [Int]?

        public var companyId: [Int]?

        public var userId: [String]?

        public var categoryId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"

            case storeId = "store_id"

            case collectionId = "collection_id"

            case articleId = "article_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case userId = "user_id"

            case categoryId = "category_id"
        }

        public init(articleId: [String]?, brandId: [Int]?, categoryId: [Int]?, collectionId: [String]?, companyId: [Int]?, itemId: [Int]?, storeId: [Int]?, userId: [String]?) {
            self.brandId = brandId

            self.storeId = storeId

            self.collectionId = collectionId

            self.articleId = articleId

            self.itemId = itemId

            self.companyId = companyId

            self.userId = userId

            self.categoryId = categoryId
        }

        public func duplicate() -> Identifier {
            let dict = self.dictionary!
            let copy = Identifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([Int].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode([Int].self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collectionId = try container.decode([String].self, forKey: .collectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode([String].self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode([Int].self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryId = try container.decode([Int].self, forKey: .categoryId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(collectionId, forKey: .collectionId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
        }
    }

    /*
         Model: Validity
         Used By: Cart
     */

    class Validity: Codable {
        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case priority
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)
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
            case min

            case max
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
            } catch {}

            do {
                max = try container.decode(Int.self, forKey: .max)

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
         Model: UsesRemaining
         Used By: Cart
     */

    class UsesRemaining: Codable {
        public var user: Int?

        public var total: Int?

        public var app: Int?

        public enum CodingKeys: String, CodingKey {
            case user

            case total

            case app
        }

        public init(app: Int?, total: Int?, user: Int?) {
            self.user = user

            self.total = total

            self.app = app
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
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(Int.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(app, forKey: .app)
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
            case maximum

            case remaining
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
            } catch {}

            do {
                remaining = try container.decode(UsesRemaining.self, forKey: .remaining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(remaining, forKey: .remaining)
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
            } catch {}

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
        }
    }

    /*
         Model: PaymentAllowValue
         Used By: Cart
     */

    class PaymentAllowValue: Codable {
        public var max: Int?

        public enum CodingKeys: String, CodingKey {
            case max
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
            } catch {}
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
        public var uses: PaymentAllowValue?

        public var codes: [String]?

        public var types: [String]?

        public var networks: [String]?

        public enum CodingKeys: String, CodingKey {
            case uses

            case codes

            case types

            case networks
        }

        public init(codes: [String]?, networks: [String]?, types: [String]?, uses: PaymentAllowValue?) {
            self.uses = uses

            self.codes = codes

            self.types = types

            self.networks = networks
        }

        public func duplicate() -> PaymentModes {
            let dict = self.dictionary!
            let copy = PaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uses = try container.decode(PaymentAllowValue.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codes = try container.decode([String].self, forKey: .codes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                types = try container.decode([String].self, forKey: .types)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                networks = try container.decode([String].self, forKey: .networks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(networks, forKey: .networks)
        }
    }

    /*
         Model: Restrictions
         Used By: Cart
     */

    class Restrictions: Codable {
        public var priceRange: PriceRange?

        public var userGroups: [Int]?

        public var couponAllowed: Bool?

        public var platforms: [String]?

        public var uses: UsesRestriction?

        public var bulkBundle: BulkBundleRestriction?

        public var orderingStores: [Int]?

        public var postOrder: PostOrder?

        public var payments: [String: PaymentModes]?

        public enum CodingKeys: String, CodingKey {
            case priceRange = "price_range"

            case userGroups = "user_groups"

            case couponAllowed = "coupon_allowed"

            case platforms

            case uses

            case bulkBundle = "bulk_bundle"

            case orderingStores = "ordering_stores"

            case postOrder = "post_order"

            case payments
        }

        public init(bulkBundle: BulkBundleRestriction?, couponAllowed: Bool?, orderingStores: [Int]?, payments: [String: PaymentModes]?, platforms: [String]?, postOrder: PostOrder?, priceRange: PriceRange?, userGroups: [Int]?, uses: UsesRestriction?) {
            self.priceRange = priceRange

            self.userGroups = userGroups

            self.couponAllowed = couponAllowed

            self.platforms = platforms

            self.uses = uses

            self.bulkBundle = bulkBundle

            self.orderingStores = orderingStores

            self.postOrder = postOrder

            self.payments = payments
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
            } catch {}

            do {
                userGroups = try container.decode([Int].self, forKey: .userGroups)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponAllowed = try container.decode(Bool.self, forKey: .couponAllowed)

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
                uses = try container.decode(UsesRestriction.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkBundle = try container.decode(BulkBundleRestriction.self, forKey: .bulkBundle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStores = try container.decode([Int].self, forKey: .orderingStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrder = try container.decode(PostOrder.self, forKey: .postOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([String: PaymentModes].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceRange, forKey: .priceRange)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)

            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(payments, forKey: .payments)
        }
    }

    /*
         Model: CouponSchedule
         Used By: Cart
     */

    class CouponSchedule: Codable {
        public var duration: Int?

        public var start: String?

        public var end: String?

        public var nextSchedule: [[String: Any]]?

        public var cron: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case start

            case end

            case nextSchedule = "next_schedule"

            case cron
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, start: String?) {
            self.duration = duration

            self.start = start

            self.end = end

            self.nextSchedule = nextSchedule

            self.cron = cron
        }

        public func duplicate() -> CouponSchedule {
            let dict = self.dictionary!
            let copy = CouponSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(cron, forKey: .cron)
        }
    }

    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var type: String

        public var scope: [String]?

        public var calculateOn: String

        public var isExact: Bool?

        public var valueType: String

        public var autoApply: Bool?

        public var currencyCode: String?

        public var applicableOn: String

        public enum CodingKeys: String, CodingKey {
            case type

            case scope

            case calculateOn = "calculate_on"

            case isExact = "is_exact"

            case valueType = "value_type"

            case autoApply = "auto_apply"

            case currencyCode = "currency_code"

            case applicableOn = "applicable_on"
        }

        public init(applicableOn: String, autoApply: Bool?, calculateOn: String, currencyCode: String?, isExact: Bool?, scope: [String]?, type: String, valueType: String) {
            self.type = type

            self.scope = scope

            self.calculateOn = calculateOn

            self.isExact = isExact

            self.valueType = valueType

            self.autoApply = autoApply

            self.currencyCode = currencyCode

            self.applicableOn = applicableOn
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
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueType = try container.decode(String.self, forKey: .valueType)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicableOn = try container.decode(String.self, forKey: .applicableOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(scope, forKey: .scope)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
        }
    }

    /*
         Model: Rule
         Used By: Cart
     */

    class Rule: Codable {
        public var discountQty: Double?

        public var value: Double?

        public var key: Double?

        public var min: Double?

        public var max: Double?

        public enum CodingKeys: String, CodingKey {
            case discountQty = "discount_qty"

            case value

            case key

            case min

            case max
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            self.discountQty = discountQty

            self.value = value

            self.key = key

            self.min = min

            self.max = max
        }

        public func duplicate() -> Rule {
            let dict = self.dictionary!
            let copy = Rule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discountQty = try container.decode(Double.self, forKey: .discountQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(Double.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
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
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(createdOn, forKey: .createdOn)

            try? container.encode(modifiedOn, forKey: .modifiedOn)
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
            case title

            case subtitle
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
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var title: String?

        public var remove: DisplayMetaDict?

        public var auto: DisplayMetaDict?

        public var description: String?

        public var subtitle: String?

        public var apply: DisplayMetaDict?

        public enum CodingKeys: String, CodingKey {
            case title

            case remove

            case auto

            case description

            case subtitle

            case apply
        }

        public init(apply: DisplayMetaDict?, auto: DisplayMetaDict?, description: String?, remove: DisplayMetaDict?, subtitle: String?, title: String?) {
            self.title = title

            self.remove = remove

            self.auto = auto

            self.description = description

            self.subtitle = subtitle

            self.apply = apply
        }

        public func duplicate() -> DisplayMeta {
            let dict = self.dictionary!
            let copy = DisplayMeta(dictionary: dict)!
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
                remove = try container.decode(DisplayMetaDict.self, forKey: .remove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auto = try container.decode(DisplayMetaDict.self, forKey: .auto)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apply = try container.decode(DisplayMetaDict.self, forKey: .apply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(remove, forKey: .remove)

            try? container.encodeIfPresent(auto, forKey: .auto)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(apply, forKey: .apply)
        }
    }

    /*
         Model: CouponAuthor
         Used By: Cart
     */

    class CouponAuthor: Codable {
        public var modifiedBy: String?

        public var createdBy: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case createdBy = "created_by"
        }

        public init(createdBy: String?, modifiedBy: String?) {
            self.modifiedBy = modifiedBy

            self.createdBy = createdBy
        }

        public func duplicate() -> CouponAuthor {
            let dict = self.dictionary!
            let copy = CouponAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: State
         Used By: Cart
     */

    class State: Codable {
        public var isArchived: Bool?

        public var isDisplay: Bool?

        public var isPublic: Bool?

        public enum CodingKeys: String, CodingKey {
            case isArchived = "is_archived"

            case isDisplay = "is_display"

            case isPublic = "is_public"
        }

        public init(isArchived: Bool?, isDisplay: Bool?, isPublic: Bool?) {
            self.isArchived = isArchived

            self.isDisplay = isDisplay

            self.isPublic = isPublic
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDisplay = try container.decode(Bool.self, forKey: .isDisplay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPublic = try container.decode(Bool.self, forKey: .isPublic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)

            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)
        }
    }

    /*
         Model: CouponAction
         Used By: Cart
     */

    class CouponAction: Codable {
        public var actionDate: String?

        public var txnMode: String?

        public enum CodingKeys: String, CodingKey {
            case actionDate = "action_date"

            case txnMode = "txn_mode"
        }

        public init(actionDate: String?, txnMode: String?) {
            self.actionDate = actionDate

            self.txnMode = txnMode
        }

        public func duplicate() -> CouponAction {
            let dict = self.dictionary!
            let copy = CouponAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                actionDate = try container.decode(String.self, forKey: .actionDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                txnMode = try container.decode(String.self, forKey: .txnMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(actionDate, forKey: .actionDate)

            try? container.encodeIfPresent(txnMode, forKey: .txnMode)
        }
    }

    /*
         Model: Validation
         Used By: Cart
     */

    class Validation: Codable {
        public var appId: [String]?

        public var userRegisteredAfter: String?

        public var anonymous: Bool?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case userRegisteredAfter = "user_registered_after"

            case anonymous
        }

        public init(anonymous: Bool?, appId: [String]?, userRegisteredAfter: String?) {
            self.appId = appId

            self.userRegisteredAfter = userRegisteredAfter

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
                appId = try container.decode([String].self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userRegisteredAfter = try container.decode(String.self, forKey: .userRegisteredAfter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymous = try container.decode(Bool.self, forKey: .anonymous)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)

            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
        }
    }

    /*
         Model: Ownership
         Used By: Cart
     */

    class Ownership: Codable {
        public var payableBy: String

        public var payableCategory: String

        public enum CodingKeys: String, CodingKey {
            case payableBy = "payable_by"

            case payableCategory = "payable_category"
        }

        public init(payableBy: String, payableCategory: String) {
            self.payableBy = payableBy

            self.payableCategory = payableCategory
        }

        public func duplicate() -> Ownership {
            let dict = self.dictionary!
            let copy = Ownership(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payableBy = try container.decode(String.self, forKey: .payableBy)

            payableCategory = try container.decode(String.self, forKey: .payableCategory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payableBy, forKey: .payableBy)

            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
        }
    }

    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var identifiers: Identifier

        public var code: String

        public var validity: Validity

        public var restrictions: Restrictions?

        public var typeSlug: String

        public var schedule: CouponSchedule?

        public var tags: [String]?

        public var ruleDefinition: RuleDefinition

        public var rule: [Rule]

        public var dateMeta: CouponDateMeta?

        public var displayMeta: DisplayMeta

        public var author: CouponAuthor?

        public var state: State?

        public var action: CouponAction?

        public var validation: Validation?

        public var ownership: Ownership

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case code

            case validity

            case restrictions

            case typeSlug = "type_slug"

            case schedule = "_schedule"

            case tags

            case ruleDefinition = "rule_definition"

            case rule

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case author

            case state

            case action

            case validation

            case ownership
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            self.identifiers = identifiers

            self.code = code

            self.validity = validity

            self.restrictions = restrictions

            self.typeSlug = typeSlug

            self.schedule = schedule

            self.tags = tags

            self.ruleDefinition = ruleDefinition

            self.rule = rule

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.author = author

            self.state = state

            self.action = action

            self.validation = validation

            self.ownership = ownership
        }

        public func duplicate() -> CouponAdd {
            let dict = self.dictionary!
            let copy = CouponAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            code = try container.decode(String.self, forKey: .code)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(ownership, forKey: .ownership)
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
            case page

            case items
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
            } catch {}

            do {
                items = try container.decode(CouponAdd.self, forKey: .items)

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

    /*
         Model: SuccessMessage
         Used By: Cart
     */

    class SuccessMessage: Codable {
        public var message: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case message

            case success
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
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case message

            case success
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
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var identifiers: Identifier

        public var code: String

        public var validity: Validity

        public var restrictions: Restrictions?

        public var typeSlug: String

        public var schedule: CouponSchedule?

        public var tags: [String]?

        public var ruleDefinition: RuleDefinition

        public var rule: [Rule]

        public var dateMeta: CouponDateMeta?

        public var displayMeta: DisplayMeta

        public var author: CouponAuthor?

        public var state: State?

        public var action: CouponAction?

        public var validation: Validation?

        public var ownership: Ownership

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case code

            case validity

            case restrictions

            case typeSlug = "type_slug"

            case schedule = "_schedule"

            case tags

            case ruleDefinition = "rule_definition"

            case rule

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case author

            case state

            case action

            case validation

            case ownership
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            self.identifiers = identifiers

            self.code = code

            self.validity = validity

            self.restrictions = restrictions

            self.typeSlug = typeSlug

            self.schedule = schedule

            self.tags = tags

            self.ruleDefinition = ruleDefinition

            self.rule = rule

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.author = author

            self.state = state

            self.action = action

            self.validation = validation

            self.ownership = ownership
        }

        public func duplicate() -> CouponUpdate {
            let dict = self.dictionary!
            let copy = CouponUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            code = try container.decode(String.self, forKey: .code)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(ownership, forKey: .ownership)
        }
    }

    /*
         Model: CouponPartialUpdate
         Used By: Cart
     */

    class CouponPartialUpdate: Codable {
        public var archive: Bool?

        public var schedule: CouponSchedule?

        public enum CodingKeys: String, CodingKey {
            case archive

            case schedule
        }

        public init(archive: Bool?, schedule: CouponSchedule?) {
            self.archive = archive

            self.schedule = schedule
        }

        public func duplicate() -> CouponPartialUpdate {
            let dict = self.dictionary!
            let copy = CouponPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: Visibility
         Used By: Cart
     */

    class Visibility: Codable {
        public var pdp: Bool

        public var couponList: Bool

        public enum CodingKeys: String, CodingKey {
            case pdp

            case couponList = "coupon_list"
        }

        public init(couponList: Bool, pdp: Bool) {
            self.pdp = pdp

            self.couponList = couponList
        }

        public func duplicate() -> Visibility {
            let dict = self.dictionary!
            let copy = Visibility(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pdp = try container.decode(Bool.self, forKey: .pdp)

            couponList = try container.decode(Bool.self, forKey: .couponList)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdp, forKey: .pdp)

            try? container.encodeIfPresent(couponList, forKey: .couponList)
        }
    }

    /*
         Model: PromotionAction
         Used By: Cart
     */

    class PromotionAction: Codable {
        public var actionDate: String

        public var actionType: String

        public enum CodingKeys: String, CodingKey {
            case actionDate = "action_date"

            case actionType = "action_type"
        }

        public init(actionDate: String, actionType: String) {
            self.actionDate = actionDate

            self.actionType = actionType
        }

        public func duplicate() -> PromotionAction {
            let dict = self.dictionary!
            let copy = PromotionAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actionDate = try container.decode(String.self, forKey: .actionDate)

            actionType = try container.decode(String.self, forKey: .actionType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(actionDate, forKey: .actionDate)

            try? container.encodeIfPresent(actionType, forKey: .actionType)
        }
    }

    /*
         Model: PromotionSchedule
         Used By: Cart
     */

    class PromotionSchedule: Codable {
        public var duration: Int?

        public var published: Bool

        public var start: String

        public var end: String?

        public var nextSchedule: [[String: Any]]?

        public var cron: String?

        public enum CodingKeys: String, CodingKey {
            case duration

            case published

            case start

            case end

            case nextSchedule = "next_schedule"

            case cron
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, published: Bool, start: String) {
            self.duration = duration

            self.published = published

            self.start = start

            self.end = end

            self.nextSchedule = nextSchedule

            self.cron = cron
        }

        public func duplicate() -> PromotionSchedule {
            let dict = self.dictionary!
            let copy = PromotionSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            published = try container.decode(Bool.self, forKey: .published)

            start = try container.decode(String.self, forKey: .start)

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(duration, forKey: .duration)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(cron, forKey: .cron)
        }
    }

    /*
         Model: CompareObject
         Used By: Cart
     */

    class CompareObject: Codable {
        public var equals: Double?

        public var greaterThan: Double?

        public var lessThanEquals: Double?

        public var greaterThanEquals: Double?

        public var lessThan: Double?

        public enum CodingKeys: String, CodingKey {
            case equals

            case greaterThan = "greater_than"

            case lessThanEquals = "less_than_equals"

            case greaterThanEquals = "greater_than_equals"

            case lessThan = "less_than"
        }

        public init(equals: Double?, greaterThan: Double?, greaterThanEquals: Double?, lessThan: Double?, lessThanEquals: Double?) {
            self.equals = equals

            self.greaterThan = greaterThan

            self.lessThanEquals = lessThanEquals

            self.greaterThanEquals = greaterThanEquals

            self.lessThan = lessThan
        }

        public func duplicate() -> CompareObject {
            let dict = self.dictionary!
            let copy = CompareObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                equals = try container.decode(Double.self, forKey: .equals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                greaterThan = try container.decode(Double.self, forKey: .greaterThan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lessThanEquals = try container.decode(Double.self, forKey: .lessThanEquals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lessThan = try container.decode(Double.self, forKey: .lessThan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(equals, forKey: .equals)

            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)

            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)

            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)

            try? container.encodeIfPresent(lessThan, forKey: .lessThan)
        }
    }

    /*
         Model: ItemCriteria
         Used By: Cart
     */

    class ItemCriteria: Codable {
        public var buyExpression: String?

        public var itemBrand: [Int]?

        public var itemSize: [String]?

        public var cartTotal: CompareObject?

        public var itemExcludeStore: [Int]?

        public var itemExcludeSku: [String]?

        public var itemSku: [String]?

        public var itemCompany: [Int]?

        public var itemExcludeBrand: [Int]?

        public var itemId: [Int]?

        public var cartQuantity: CompareObject?

        public var itemStore: [Int]?

        public var itemCategory: [Int]?

        public var itemExcludeCompany: [Int]?

        public var itemExcludeCategory: [Int]?

        public enum CodingKeys: String, CodingKey {
            case buyExpression = "buy_expression"

            case itemBrand = "item_brand"

            case itemSize = "item_size"

            case cartTotal = "cart_total"

            case itemExcludeStore = "item_exclude_store"

            case itemExcludeSku = "item_exclude_sku"

            case itemSku = "item_sku"

            case itemCompany = "item_company"

            case itemExcludeBrand = "item_exclude_brand"

            case itemId = "item_id"

            case cartQuantity = "cart_quantity"

            case itemStore = "item_store"

            case itemCategory = "item_category"

            case itemExcludeCompany = "item_exclude_company"

            case itemExcludeCategory = "item_exclude_category"
        }

        public init(buyExpression: String?, cartQuantity: CompareObject?, cartTotal: CompareObject?, itemBrand: [Int]?, itemCategory: [Int]?, itemCompany: [Int]?, itemExcludeBrand: [Int]?, itemExcludeCategory: [Int]?, itemExcludeCompany: [Int]?, itemExcludeSku: [String]?, itemExcludeStore: [Int]?, itemId: [Int]?, itemSize: [String]?, itemSku: [String]?, itemStore: [Int]?) {
            self.buyExpression = buyExpression

            self.itemBrand = itemBrand

            self.itemSize = itemSize

            self.cartTotal = cartTotal

            self.itemExcludeStore = itemExcludeStore

            self.itemExcludeSku = itemExcludeSku

            self.itemSku = itemSku

            self.itemCompany = itemCompany

            self.itemExcludeBrand = itemExcludeBrand

            self.itemId = itemId

            self.cartQuantity = cartQuantity

            self.itemStore = itemStore

            self.itemCategory = itemCategory

            self.itemExcludeCompany = itemExcludeCompany

            self.itemExcludeCategory = itemExcludeCategory
        }

        public func duplicate() -> ItemCriteria {
            let dict = self.dictionary!
            let copy = ItemCriteria(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                buyExpression = try container.decode(String.self, forKey: .buyExpression)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemBrand = try container.decode([Int].self, forKey: .itemBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode([String].self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSku = try container.decode([String].self, forKey: .itemSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCompany = try container.decode([Int].self, forKey: .itemCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemStore = try container.decode([Int].self, forKey: .itemStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCategory = try container.decode([Int].self, forKey: .itemCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyExpression, forKey: .buyExpression)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)
        }
    }

    /*
         Model: DiscountOffer
         Used By: Cart
     */

    class DiscountOffer: Codable {
        public var code: String?

        public var discountAmount: Double?

        public var maxDiscountAmount: Double?

        public var minOfferQuantity: Int?

        public var discountPrice: Double?

        public var discountPercentage: Double?

        public var maxOfferQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case code

            case discountAmount = "discount_amount"

            case maxDiscountAmount = "max_discount_amount"

            case minOfferQuantity = "min_offer_quantity"

            case discountPrice = "discount_price"

            case discountPercentage = "discount_percentage"

            case maxOfferQuantity = "max_offer_quantity"
        }

        public init(code: String?, discountAmount: Double?, discountPercentage: Double?, discountPrice: Double?, maxDiscountAmount: Double?, maxOfferQuantity: Int?, minOfferQuantity: Int?) {
            self.code = code

            self.discountAmount = discountAmount

            self.maxDiscountAmount = maxDiscountAmount

            self.minOfferQuantity = minOfferQuantity

            self.discountPrice = discountPrice

            self.discountPercentage = discountPercentage

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountAmount = try container.decode(Double.self, forKey: .discountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountPrice = try container.decode(Double.self, forKey: .discountPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)

            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)

            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)

            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)

            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)

            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
        }
    }

    /*
         Model: DiscountRule
         Used By: Cart
     */

    class DiscountRule: Codable {
        public var buyCondition: String

        public var itemCriteria: ItemCriteria

        public var offer: DiscountOffer

        public var discountType: String

        public enum CodingKeys: String, CodingKey {
            case buyCondition = "buy_condition"

            case itemCriteria = "item_criteria"

            case offer

            case discountType = "discount_type"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            self.buyCondition = buyCondition

            self.itemCriteria = itemCriteria

            self.offer = offer

            self.discountType = discountType
        }

        public func duplicate() -> DiscountRule {
            let dict = self.dictionary!
            let copy = DiscountRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)

            offer = try container.decode(DiscountOffer.self, forKey: .offer)

            discountType = try container.decode(String.self, forKey: .discountType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(discountType, forKey: .discountType)
        }
    }

    /*
         Model: UserRegistered
         Used By: Cart
     */

    class UserRegistered: Codable {
        public var end: String?

        public var start: String?

        public enum CodingKeys: String, CodingKey {
            case end

            case start
        }

        public init(end: String?, start: String?) {
            self.end = end

            self.start = start
        }

        public func duplicate() -> UserRegistered {
            let dict = self.dictionary!
            let copy = UserRegistered(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(end, forKey: .end)

            try? container.encode(start, forKey: .start)
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
            case user

            case total
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
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case maximum

            case remaining
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
            } catch {}

            do {
                remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(remaining, forKey: .remaining)
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
            } catch {}

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
        }
    }

    /*
         Model: PaymentAllowValue1
         Used By: Cart
     */

    class PaymentAllowValue1: Codable {
        public var max: Int?

        public enum CodingKeys: String, CodingKey {
            case max
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
            } catch {}
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

        public var codes: [String]?

        public var uses: PaymentAllowValue1?

        public enum CodingKeys: String, CodingKey {
            case type

            case codes

            case uses
        }

        public init(codes: [String]?, type: String, uses: PaymentAllowValue1?) {
            self.type = type

            self.codes = codes

            self.uses = uses
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
                codes = try container.decode([String].self, forKey: .codes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uses = try container.decode(PaymentAllowValue1.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(uses, forKey: .uses)
        }
    }

    /*
         Model: Restrictions1
         Used By: Cart
     */

    class Restrictions1: Codable {
        public var userRegistered: UserRegistered?

        public var orderQuantity: Int?

        public var anonymousUsers: Bool?

        public var userGroups: [Int]?

        public var platforms: [String]?

        public var uses: UsesRestriction1

        public var userId: [String]?

        public var postOrder: PostOrder1?

        public var payments: [PromotionPaymentModes]?

        public enum CodingKeys: String, CodingKey {
            case userRegistered = "user_registered"

            case orderQuantity = "order_quantity"

            case anonymousUsers = "anonymous_users"

            case userGroups = "user_groups"

            case platforms

            case uses

            case userId = "user_id"

            case postOrder = "post_order"

            case payments
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            self.userRegistered = userRegistered

            self.orderQuantity = orderQuantity

            self.anonymousUsers = anonymousUsers

            self.userGroups = userGroups

            self.platforms = platforms

            self.uses = uses

            self.userId = userId

            self.postOrder = postOrder

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
                userRegistered = try container.decode(UserRegistered.self, forKey: .userRegistered)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userGroups = try container.decode([Int].self, forKey: .userGroups)

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

            uses = try container.decode(UsesRestriction1.self, forKey: .uses)

            do {
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([PromotionPaymentModes].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(payments, forKey: .payments)
        }
    }

    /*
         Model: PromotionAuthor
         Used By: Cart
     */

    class PromotionAuthor: Codable {
        public var modifiedBy: String?

        public var createdBy: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case createdBy = "created_by"
        }

        public init(createdBy: String?, modifiedBy: String?) {
            self.modifiedBy = modifiedBy

            self.createdBy = createdBy
        }

        public func duplicate() -> PromotionAuthor {
            let dict = self.dictionary!
            let copy = PromotionAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(createdBy, forKey: .createdBy)
        }
    }

    /*
         Model: Ownership1
         Used By: Cart
     */

    class Ownership1: Codable {
        public var payableBy: String

        public var payableCategory: String

        public enum CodingKeys: String, CodingKey {
            case payableBy = "payable_by"

            case payableCategory = "payable_category"
        }

        public init(payableBy: String, payableCategory: String) {
            self.payableBy = payableBy

            self.payableCategory = payableCategory
        }

        public func duplicate() -> Ownership1 {
            let dict = self.dictionary!
            let copy = Ownership1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payableBy = try container.decode(String.self, forKey: .payableBy)

            payableCategory = try container.decode(String.self, forKey: .payableCategory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payableBy, forKey: .payableBy)

            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
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
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(createdOn, forKey: .createdOn)

            try? container.encode(modifiedOn, forKey: .modifiedOn)
        }
    }

    /*
         Model: DisplayMeta1
         Used By: Cart
     */

    class DisplayMeta1: Codable {
        public var name: String?

        public var description: String?

        public var offerText: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case offerText = "offer_text"
        }

        public init(description: String?, name: String?, offerText: String?) {
            self.name = name

            self.description = description

            self.offerText = offerText
        }

        public func duplicate() -> DisplayMeta1 {
            let dict = self.dictionary!
            let copy = DisplayMeta1(dictionary: dict)!
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
                offerText = try container.decode(String.self, forKey: .offerText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(offerText, forKey: .offerText)
        }
    }

    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var visiblility: Visibility?

        public var postOrderAction: PromotionAction?

        public var schedule: PromotionSchedule?

        public var discountRules: [DiscountRule]

        public var restrictions: Restrictions1?

        public var applyPriority: Int?

        public var author: PromotionAuthor?

        public var mode: String

        public var currency: String?

        public var ownership: Ownership1

        public var code: String?

        public var promoGroup: String

        public var customJson: [String: Any]?

        public var dateMeta: PromotionDateMeta?

        public var displayMeta: DisplayMeta1

        public var applyAllDiscount: Bool?

        public var promotionType: String

        public var buyRules: [String: ItemCriteria]

        public var applyExclusive: String?

        public var applicationId: String

        public var stackable: Bool?

        public enum CodingKeys: String, CodingKey {
            case visiblility

            case postOrderAction = "post_order_action"

            case schedule = "_schedule"

            case discountRules = "discount_rules"

            case restrictions

            case applyPriority = "apply_priority"

            case author

            case mode

            case currency

            case ownership

            case code

            case promoGroup = "promo_group"

            case customJson = "_custom_json"

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case applyAllDiscount = "apply_all_discount"

            case promotionType = "promotion_type"

            case buyRules = "buy_rules"

            case applyExclusive = "apply_exclusive"

            case applicationId = "application_id"

            case stackable
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.visiblility = visiblility

            self.postOrderAction = postOrderAction

            self.schedule = schedule

            self.discountRules = discountRules

            self.restrictions = restrictions

            self.applyPriority = applyPriority

            self.author = author

            self.mode = mode

            self.currency = currency

            self.ownership = ownership

            self.code = code

            self.promoGroup = promoGroup

            self.customJson = customJson

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.applyAllDiscount = applyAllDiscount

            self.promotionType = promotionType

            self.buyRules = buyRules

            self.applyExclusive = applyExclusive

            self.applicationId = applicationId

            self.stackable = stackable
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

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
            case page

            case items
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
            } catch {}

            do {
                items = try container.decode(PromotionListItem.self, forKey: .items)

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

    /*
         Model: PromotionAdd
         Used By: Cart
     */

    class PromotionAdd: Codable {
        public var visiblility: Visibility?

        public var postOrderAction: PromotionAction?

        public var schedule: PromotionSchedule?

        public var discountRules: [DiscountRule]

        public var restrictions: Restrictions1?

        public var applyPriority: Int?

        public var author: PromotionAuthor?

        public var mode: String

        public var currency: String?

        public var ownership: Ownership1

        public var code: String?

        public var promoGroup: String

        public var customJson: [String: Any]?

        public var dateMeta: PromotionDateMeta?

        public var displayMeta: DisplayMeta1

        public var applyAllDiscount: Bool?

        public var promotionType: String

        public var buyRules: [String: ItemCriteria]

        public var applyExclusive: String?

        public var applicationId: String

        public var stackable: Bool?

        public enum CodingKeys: String, CodingKey {
            case visiblility

            case postOrderAction = "post_order_action"

            case schedule = "_schedule"

            case discountRules = "discount_rules"

            case restrictions

            case applyPriority = "apply_priority"

            case author

            case mode

            case currency

            case ownership

            case code

            case promoGroup = "promo_group"

            case customJson = "_custom_json"

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case applyAllDiscount = "apply_all_discount"

            case promotionType = "promotion_type"

            case buyRules = "buy_rules"

            case applyExclusive = "apply_exclusive"

            case applicationId = "application_id"

            case stackable
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.visiblility = visiblility

            self.postOrderAction = postOrderAction

            self.schedule = schedule

            self.discountRules = discountRules

            self.restrictions = restrictions

            self.applyPriority = applyPriority

            self.author = author

            self.mode = mode

            self.currency = currency

            self.ownership = ownership

            self.code = code

            self.promoGroup = promoGroup

            self.customJson = customJson

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.applyAllDiscount = applyAllDiscount

            self.promotionType = promotionType

            self.buyRules = buyRules

            self.applyExclusive = applyExclusive

            self.applicationId = applicationId

            self.stackable = stackable
        }

        public func duplicate() -> PromotionAdd {
            let dict = self.dictionary!
            let copy = PromotionAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(stackable, forKey: .stackable)
        }
    }

    /*
         Model: PromotionUpdate
         Used By: Cart
     */

    class PromotionUpdate: Codable {
        public var visiblility: Visibility?

        public var postOrderAction: PromotionAction?

        public var schedule: PromotionSchedule?

        public var discountRules: [DiscountRule]

        public var restrictions: Restrictions1?

        public var applyPriority: Int?

        public var author: PromotionAuthor?

        public var mode: String

        public var currency: String?

        public var ownership: Ownership1

        public var code: String?

        public var promoGroup: String

        public var customJson: [String: Any]?

        public var dateMeta: PromotionDateMeta?

        public var displayMeta: DisplayMeta1

        public var applyAllDiscount: Bool?

        public var promotionType: String

        public var buyRules: [String: ItemCriteria]

        public var applyExclusive: String?

        public var applicationId: String

        public var stackable: Bool?

        public enum CodingKeys: String, CodingKey {
            case visiblility

            case postOrderAction = "post_order_action"

            case schedule = "_schedule"

            case discountRules = "discount_rules"

            case restrictions

            case applyPriority = "apply_priority"

            case author

            case mode

            case currency

            case ownership

            case code

            case promoGroup = "promo_group"

            case customJson = "_custom_json"

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case applyAllDiscount = "apply_all_discount"

            case promotionType = "promotion_type"

            case buyRules = "buy_rules"

            case applyExclusive = "apply_exclusive"

            case applicationId = "application_id"

            case stackable
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.visiblility = visiblility

            self.postOrderAction = postOrderAction

            self.schedule = schedule

            self.discountRules = discountRules

            self.restrictions = restrictions

            self.applyPriority = applyPriority

            self.author = author

            self.mode = mode

            self.currency = currency

            self.ownership = ownership

            self.code = code

            self.promoGroup = promoGroup

            self.customJson = customJson

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.applyAllDiscount = applyAllDiscount

            self.promotionType = promotionType

            self.buyRules = buyRules

            self.applyExclusive = applyExclusive

            self.applicationId = applicationId

            self.stackable = stackable
        }

        public func duplicate() -> PromotionUpdate {
            let dict = self.dictionary!
            let copy = PromotionUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(stackable, forKey: .stackable)
        }
    }

    /*
         Model: PromotionPartialUpdate
         Used By: Cart
     */

    class PromotionPartialUpdate: Codable {
        public var archive: Bool?

        public var schedule: PromotionSchedule?

        public enum CodingKeys: String, CodingKey {
            case archive

            case schedule
        }

        public init(archive: Bool?, schedule: PromotionSchedule?) {
            self.archive = archive

            self.schedule = schedule
        }

        public func duplicate() -> PromotionPartialUpdate {
            let dict = self.dictionary!
            let copy = PromotionPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: CartItem
         Used By: Cart
     */

    class CartItem: Codable {
        public var quantity: Int?

        public var size: String

        public var productId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case size

            case productId = "product_id"
        }

        public init(productId: String, quantity: Int?, size: String) {
            self.quantity = quantity

            self.size = size

            self.productId = productId
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
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            productId = try container.decode(String.self, forKey: .productId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(productId, forKey: .productId)
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }

    /*
         Model: CartProductIdentifer
         Used By: Cart
     */

    class CartProductIdentifer: Codable {
        public var identifier: String?

        public enum CodingKeys: String, CodingKey {
            case identifier
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }

    /*
         Model: ProductAvailability
         Used By: Cart
     */

    class ProductAvailability: Codable {
        public var sizes: [String]?

        public var deliverable: Bool?

        public var outOfStock: Bool?

        public var isValid: Bool?

        public var otherStoreQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case deliverable

            case outOfStock = "out_of_stock"

            case isValid = "is_valid"

            case otherStoreQuantity = "other_store_quantity"
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            self.sizes = sizes

            self.deliverable = deliverable

            self.outOfStock = outOfStock

            self.isValid = isValid

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
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverable = try container.decode(Bool.self, forKey: .deliverable)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(deliverable, forKey: .deliverable)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
        }
    }

    /*
         Model: BaseInfo
         Used By: Cart
     */

    class BaseInfo: Codable {
        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid
        }

        public init(name: String?, uid: Int?) {
            self.name = name

            self.uid = uid
        }

        public func duplicate() -> BaseInfo {
            let dict = self.dictionary!
            let copy = BaseInfo(dictionary: dict)!
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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: BasePrice
         Used By: Cart
     */

    class BasePrice: Codable {
        public var effective: Double?

        public var currencySymbol: String?

        public var marked: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case effective

            case currencySymbol = "currency_symbol"

            case marked

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
            self.effective = effective

            self.currencySymbol = currencySymbol

            self.marked = marked

            self.currencyCode = currencyCode
        }

        public func duplicate() -> BasePrice {
            let dict = self.dictionary!
            let copy = BasePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }

    /*
         Model: ArticlePriceInfo
         Used By: Cart
     */

    class ArticlePriceInfo: Codable {
        public var converted: BasePrice?

        public var base: BasePrice?

        public enum CodingKeys: String, CodingKey {
            case converted

            case base
        }

        public init(base: BasePrice?, converted: BasePrice?) {
            self.converted = converted

            self.base = base
        }

        public func duplicate() -> ArticlePriceInfo {
            let dict = self.dictionary!
            let copy = ArticlePriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                converted = try container.decode(BasePrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                base = try container.decode(BasePrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(converted, forKey: .converted)

            try? container.encodeIfPresent(base, forKey: .base)
        }
    }

    /*
         Model: ProductArticle
         Used By: Cart
     */

    class ProductArticle: Codable {
        public var type: String?

        public var size: String?

        public var uid: String?

        public var productGroupTags: [String]?

        public var extraMeta: [String: Any]?

        public var seller: BaseInfo?

        public var price: ArticlePriceInfo?

        public var quantity: Int?

        public var parentItemIdentifiers: [String: Any]?

        public var store: BaseInfo?

        public enum CodingKeys: String, CodingKey {
            case type

            case size

            case uid

            case productGroupTags = "product_group_tags"

            case extraMeta = "extra_meta"

            case seller

            case price

            case quantity

            case parentItemIdentifiers = "parent_item_identifiers"

            case store
        }

        public init(extraMeta: [String: Any]?, parentItemIdentifiers: [String: Any]?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            self.type = type

            self.size = size

            self.uid = uid

            self.productGroupTags = productGroupTags

            self.extraMeta = extraMeta

            self.seller = seller

            self.price = price

            self.quantity = quantity

            self.parentItemIdentifiers = parentItemIdentifiers

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
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(BaseInfo.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(BaseInfo.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(store, forKey: .store)
        }
    }

    /*
         Model: PromoMeta
         Used By: Cart
     */

    class PromoMeta: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: AppliedPromotion
         Used By: Cart
     */

    class AppliedPromotion: Codable {
        public var promoId: String?

        public var promotionType: String?

        public var articleQuantity: Int?

        public var amount: Double?

        public var mrpPromotion: Bool?

        public enum CodingKeys: String, CodingKey {
            case promoId = "promo_id"

            case promotionType = "promotion_type"

            case articleQuantity = "article_quantity"

            case amount

            case mrpPromotion = "mrp_promotion"
        }

        public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
            self.promoId = promoId

            self.promotionType = promotionType

            self.articleQuantity = articleQuantity

            self.amount = amount

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
                promoId = try container.decode(String.self, forKey: .promoId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionType = try container.decode(String.self, forKey: .promotionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
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
            } catch {}
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
        public var query: ActionQuery?

        public var type: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case type

            case url
        }

        public init(query: ActionQuery?, type: String?, url: String?) {
            self.query = query

            self.type = type

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
                query = try container.decode(ActionQuery.self, forKey: .query)

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
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: ProductImage
         Used By: Cart
     */

    class ProductImage: Codable {
        public var url: String?

        public var aspectRatio: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case aspectRatio = "aspect_ratio"

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            self.url = url

            self.aspectRatio = aspectRatio

            self.secureUrl = secureUrl
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: CategoryInfo
         Used By: Cart
     */

    class CategoryInfo: Codable {
        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid
        }

        public init(name: String?, uid: Int?) {
            self.name = name

            self.uid = uid
        }

        public func duplicate() -> CategoryInfo {
            let dict = self.dictionary!
            let copy = CategoryInfo(dictionary: dict)!
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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: CartProduct
         Used By: Cart
     */

    class CartProduct: Codable {
        public var type: String?

        public var action: ProductAction?

        public var uid: Int?

        public var images: [ProductImage]?

        public var name: String?

        public var categories: [CategoryInfo]?

        public var brand: BaseInfo?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case action

            case uid

            case images

            case name

            case categories

            case brand

            case slug
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            self.type = type

            self.action = action

            self.uid = uid

            self.images = images

            self.name = name

            self.categories = categories

            self.brand = brand

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductAction.self, forKey: .action)

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
                images = try container.decode([ProductImage].self, forKey: .images)

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
                categories = try container.decode([CategoryInfo].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(BaseInfo.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: ProductPrice
         Used By: Cart
     */

    class ProductPrice: Codable {
        public var selling: Double?

        public var addOn: Double?

        public var effective: Double?

        public var currencyCode: String?

        public var currencySymbol: String?

        public var marked: Double?

        public enum CodingKeys: String, CodingKey {
            case selling

            case addOn = "add_on"

            case effective

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case marked
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            self.selling = selling

            self.addOn = addOn

            self.effective = effective

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.marked = marked
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selling = try container.decode(Double.self, forKey: .selling)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addOn = try container.decode(Double.self, forKey: .addOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selling, forKey: .selling)

            try? container.encodeIfPresent(addOn, forKey: .addOn)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }

    /*
         Model: ProductPriceInfo
         Used By: Cart
     */

    class ProductPriceInfo: Codable {
        public var converted: ProductPrice?

        public var base: ProductPrice?

        public enum CodingKeys: String, CodingKey {
            case converted

            case base
        }

        public init(base: ProductPrice?, converted: ProductPrice?) {
            self.converted = converted

            self.base = base
        }

        public func duplicate() -> ProductPriceInfo {
            let dict = self.dictionary!
            let copy = ProductPriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                converted = try container.decode(ProductPrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                base = try container.decode(ProductPrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(converted, forKey: .converted)

            try? container.encodeIfPresent(base, forKey: .base)
        }
    }

    /*
         Model: CartProductInfo
         Used By: Cart
     */

    class CartProductInfo: Codable {
        public var identifiers: CartProductIdentifer

        public var availability: ProductAvailability?

        public var article: ProductArticle?

        public var discount: String?

        public var isSet: Bool?

        public var promoMeta: PromoMeta?

        public var promotionApplied: [AppliedPromotion]?

        public var key: String?

        public var message: String?

        public var product: CartProduct?

        public var price: ProductPriceInfo?

        public var bulkOffer: [String: Any]?

        public var quantity: Int?

        public var pricePerUnit: ProductPriceInfo?

        public var parentItemIdentifiers: [String: Any]?

        public var couponMessage: String?

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case availability

            case article

            case discount

            case isSet = "is_set"

            case promoMeta = "promo_meta"

            case promotionApplied = "promotion_applied"

            case key

            case message

            case product

            case price

            case bulkOffer = "bulk_offer"

            case quantity

            case pricePerUnit = "price_per_unit"

            case parentItemIdentifiers = "parent_item_identifiers"

            case couponMessage = "coupon_message"
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, parentItemIdentifiers: [String: Any]?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
            self.identifiers = identifiers

            self.availability = availability

            self.article = article

            self.discount = discount

            self.isSet = isSet

            self.promoMeta = promoMeta

            self.promotionApplied = promotionApplied

            self.key = key

            self.message = message

            self.product = product

            self.price = price

            self.bulkOffer = bulkOffer

            self.quantity = quantity

            self.pricePerUnit = pricePerUnit

            self.parentItemIdentifiers = parentItemIdentifiers

            self.couponMessage = couponMessage
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(ProductArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)

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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(CartProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductPriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponMessage = try container.decode(String.self, forKey: .couponMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(availability, forKey: .availability)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
        }
    }

    /*
         Model: LoyaltyPoints
         Used By: Cart
     */

    class LoyaltyPoints: Codable {
        public var total: Double?

        public var isApplied: Bool?

        public var description: String?

        public var applicable: Double?

        public enum CodingKeys: String, CodingKey {
            case total

            case isApplied = "is_applied"

            case description

            case applicable
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            self.total = total

            self.isApplied = isApplied

            self.description = description

            self.applicable = applicable
        }

        public func duplicate() -> LoyaltyPoints {
            let dict = self.dictionary!
            let copy = LoyaltyPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

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
                applicable = try container.decode(Double.self, forKey: .applicable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(applicable, forKey: .applicable)
        }
    }

    /*
         Model: RawBreakup
         Used By: Cart
     */

    class RawBreakup: Codable {
        public var convenienceFee: Double?

        public var total: Double?

        public var codCharge: Double?

        public var discount: Double?

        public var vog: Double?

        public var subtotal: Double?

        public var deliveryCharge: Double?

        public var coupon: Double?

        public var gstCharges: Double?

        public var fyndCash: Double?

        public var mrpTotal: Double?

        public var youSaved: Double?

        public enum CodingKeys: String, CodingKey {
            case convenienceFee = "convenience_fee"

            case total

            case codCharge = "cod_charge"

            case discount

            case vog

            case subtotal

            case deliveryCharge = "delivery_charge"

            case coupon

            case gstCharges = "gst_charges"

            case fyndCash = "fynd_cash"

            case mrpTotal = "mrp_total"

            case youSaved = "you_saved"
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            self.convenienceFee = convenienceFee

            self.total = total

            self.codCharge = codCharge

            self.discount = discount

            self.vog = vog

            self.subtotal = subtotal

            self.deliveryCharge = deliveryCharge

            self.coupon = coupon

            self.gstCharges = gstCharges

            self.fyndCash = fyndCash

            self.mrpTotal = mrpTotal

            self.youSaved = youSaved
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
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharge = try container.decode(Double.self, forKey: .codCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vog = try container.decode(Double.self, forKey: .vog)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtotal = try container.decode(Double.self, forKey: .subtotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(Double.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCharges = try container.decode(Double.self, forKey: .gstCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                youSaved = try container.decode(Double.self, forKey: .youSaved)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(vog, forKey: .vog)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
        }
    }

    /*
         Model: DisplayBreakup
         Used By: Cart
     */

    class DisplayBreakup: Codable {
        public var key: String?

        public var display: String?

        public var message: [String]?

        public var currencyCode: String?

        public var currencySymbol: String?

        public var value: Double?

        public enum CodingKeys: String, CodingKey {
            case key

            case display

            case message

            case currencyCode = "currency_code"

            case currencySymbol = "currency_symbol"

            case value
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            self.key = key

            self.display = display

            self.message = message

            self.currencyCode = currencyCode

            self.currencySymbol = currencySymbol

            self.value = value
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
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

            do {
                message = try container.decode([String].self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: CouponBreakup
         Used By: Cart
     */

    class CouponBreakup: Codable {
        public var title: String?

        public var type: String?

        public var isApplied: Bool?

        public var code: String?

        public var subTitle: String?

        public var uid: String?

        public var maxDiscountValue: Double?

        public var couponValue: Double?

        public var couponType: String?

        public var message: String?

        public var description: String?

        public var minimumCartValue: Double?

        public var value: Double?

        public enum CodingKeys: String, CodingKey {
            case title

            case type

            case isApplied = "is_applied"

            case code

            case subTitle = "sub_title"

            case uid

            case maxDiscountValue = "max_discount_value"

            case couponValue = "coupon_value"

            case couponType = "coupon_type"

            case message

            case description

            case minimumCartValue = "minimum_cart_value"

            case value
        }

        public init(code: String?, couponType: String?, couponValue: Double?, description: String?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, type: String?, uid: String?, value: Double?) {
            self.title = title

            self.type = type

            self.isApplied = isApplied

            self.code = code

            self.subTitle = subTitle

            self.uid = uid

            self.maxDiscountValue = maxDiscountValue

            self.couponValue = couponValue

            self.couponType = couponType

            self.message = message

            self.description = description

            self.minimumCartValue = minimumCartValue

            self.value = value
        }

        public func duplicate() -> CouponBreakup {
            let dict = self.dictionary!
            let copy = CouponBreakup(dictionary: dict)!
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

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
                subTitle = try container.decode(String.self, forKey: .subTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponType = try container.decode(String.self, forKey: .couponType)

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

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(couponType, forKey: .couponType)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: CartBreakup
         Used By: Cart
     */

    class CartBreakup: Codable {
        public var loyaltyPoints: LoyaltyPoints?

        public var raw: RawBreakup?

        public var display: [DisplayBreakup]?

        public var coupon: CouponBreakup?

        public enum CodingKeys: String, CodingKey {
            case loyaltyPoints = "loyalty_points"

            case raw

            case display

            case coupon
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            self.loyaltyPoints = loyaltyPoints

            self.raw = raw

            self.display = display

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
            } catch {}

            do {
                raw = try container.decode(RawBreakup.self, forKey: .raw)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode([DisplayBreakup].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(CouponBreakup.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(raw, forKey: .raw)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }

    /*
         Model: OpenapiCartDetailsResponse
         Used By: Cart
     */

    class OpenapiCartDetailsResponse: Codable {
        public var message: String?

        public var isValid: Bool?

        public var items: [CartProductInfo]?

        public var breakupValues: CartBreakup?

        public enum CodingKeys: String, CodingKey {
            case message

            case isValid = "is_valid"

            case items

            case breakupValues = "breakup_values"
        }

        public init(breakupValues: CartBreakup?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            self.message = message

            self.isValid = isValid

            self.items = items

            self.breakupValues = breakupValues
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
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        }
    }

    /*
         Model: OpenApiErrorResponse
         Used By: Cart
     */

    class OpenApiErrorResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var errors: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case errors
        }

        public init(errors: [String: Any]?, message: String?, success: Bool?) {
            self.message = message

            self.success = success

            self.errors = errors
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
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }

    /*
         Model: ShippingAddress
         Used By: Cart
     */

    class ShippingAddress: Codable {
        public var addressType: String?

        public var country: String?

        public var areaCodeSlug: String?

        public var phone: Int?

        public var countryCode: String?

        public var address: String?

        public var landmark: String?

        public var area: String?

        public var email: String?

        public var city: String?

        public var pincode: Int?

        public var state: String?

        public var meta: [String: Any]?

        public var name: String?

        public var areaCode: String

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case country

            case areaCodeSlug = "area_code_slug"

            case phone

            case countryCode = "country_code"

            case address

            case landmark

            case area

            case email

            case city

            case pincode

            case state

            case meta

            case name

            case areaCode = "area_code"
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String, areaCodeSlug: String?, city: String?, country: String?, countryCode: String?, email: String?, landmark: String?, meta: [String: Any]?, name: String?, phone: Int?, pincode: Int?, state: String?) {
            self.addressType = addressType

            self.country = country

            self.areaCodeSlug = areaCodeSlug

            self.phone = phone

            self.countryCode = countryCode

            self.address = address

            self.landmark = landmark

            self.area = area

            self.email = email

            self.city = city

            self.pincode = pincode

            self.state = state

            self.meta = meta

            self.name = name

            self.areaCode = areaCode
        }

        public func duplicate() -> ShippingAddress {
            let dict = self.dictionary!
            let copy = ShippingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

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
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(Int.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                area = try container.decode(String.self, forKey: .area)

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

            do {
                city = try container.decode(String.self, forKey: .city)

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
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            areaCode = try container.decode(String.self, forKey: .areaCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encode(country, forKey: .country)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
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
            } catch {}

            shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
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
            case min

            case max
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
         Model: PromiseFormatted
         Used By: Cart
     */

    class PromiseFormatted: Codable {
        public var min: String?

        public var max: String?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
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
            } catch {}

            do {
                max = try container.decode(String.self, forKey: .max)

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
         Model: ShipmentPromise
         Used By: Cart
     */

    class ShipmentPromise: Codable {
        public var timestamp: PromiseTimestamp?

        public var formatted: PromiseFormatted?

        public enum CodingKeys: String, CodingKey {
            case timestamp

            case formatted
        }

        public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
            self.timestamp = timestamp

            self.formatted = formatted
        }

        public func duplicate() -> ShipmentPromise {
            let dict = self.dictionary!
            let copy = ShipmentPromise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(formatted, forKey: .formatted)
        }
    }

    /*
         Model: OpenApiCartServiceabilityResponse
         Used By: Cart
     */

    class OpenApiCartServiceabilityResponse: Codable {
        public var items: [CartProductInfo]?

        public var breakupValues: CartBreakup?

        public var deliveryPromise: ShipmentPromise?

        public var message: String?

        public var isValid: Bool?

        public enum CodingKeys: String, CodingKey {
            case items

            case breakupValues = "breakup_values"

            case deliveryPromise = "delivery_promise"

            case message

            case isValid = "is_valid"
        }

        public init(breakupValues: CartBreakup?, deliveryPromise: ShipmentPromise?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            self.items = items

            self.breakupValues = breakupValues

            self.deliveryPromise = deliveryPromise

            self.message = message

            self.isValid = isValid
        }

        public func duplicate() -> OpenApiCartServiceabilityResponse {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

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

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(isValid, forKey: .isValid)
        }
    }

    /*
         Model: OpenApiFiles
         Used By: Cart
     */

    class OpenApiFiles: Codable {
        public var values: [String]

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case values

            case key
        }

        public init(key: String, values: [String]) {
            self.values = values

            self.key = key
        }

        public func duplicate() -> OpenApiFiles {
            let dict = self.dictionary!
            let copy = OpenApiFiles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            values = try container.decode([String].self, forKey: .values)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: CartItemMeta
         Used By: Cart
     */

    class CartItemMeta: Codable {
        public var primaryItem: Bool?

        public var groupId: String?

        public enum CodingKeys: String, CodingKey {
            case primaryItem = "primary_item"

            case groupId = "group_id"
        }

        public init(groupId: String?, primaryItem: Bool?) {
            self.primaryItem = primaryItem

            self.groupId = groupId
        }

        public func duplicate() -> CartItemMeta {
            let dict = self.dictionary!
            let copy = CartItemMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                primaryItem = try container.decode(Bool.self, forKey: .primaryItem)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)

            try? container.encodeIfPresent(groupId, forKey: .groupId)
        }
    }

    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var employeeDiscount: Double?

        public var discount: Double

        public var size: String

        public var cashbackApplied: Double

        public var priceMarked: Double

        public var files: [OpenApiFiles]?

        public var extraMeta: [String: Any]?

        public var loyaltyDiscount: Double?

        public var deliveryCharges: Double

        public var productId: Int

        public var codCharges: Double

        public var quantity: Int?

        public var meta: CartItemMeta?

        public var amountPaid: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var couponEffectiveDiscount: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case employeeDiscount = "employee_discount"

            case discount

            case size

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case files

            case extraMeta = "extra_meta"

            case loyaltyDiscount = "loyalty_discount"

            case deliveryCharges = "delivery_charges"

            case productId = "product_id"

            case codCharges = "cod_charges"

            case quantity

            case meta

            case amountPaid = "amount_paid"

            case paymentMethods = "payment_methods"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double?, extraMeta: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, meta: CartItemMeta?, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int?, size: String) {
            self.employeeDiscount = employeeDiscount

            self.discount = discount

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.files = files

            self.extraMeta = extraMeta

            self.loyaltyDiscount = loyaltyDiscount

            self.deliveryCharges = deliveryCharges

            self.productId = productId

            self.codCharges = codCharges

            self.quantity = quantity

            self.meta = meta

            self.amountPaid = amountPaid

            self.paymentMethods = paymentMethods

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective
        }

        public func duplicate() -> OpenApiOrderItem {
            let dict = self.dictionary!
            let copy = OpenApiOrderItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            productId = try container.decode(Int.self, forKey: .productId)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }

    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var cartValue: Double

        public var couponValue: Double

        public var couponCode: String

        public var shippingAddress: ShippingAddress?

        public var files: [OpenApiFiles]?

        public var currencyCode: String?

        public var affiliateOrderId: String?

        public var billingAddress: ShippingAddress

        public var employeeDiscount: [String: Any]?

        public var cartItems: [OpenApiOrderItem]

        public var cashbackApplied: Double

        public var orderId: String?

        public var coupon: String?

        public var paymentMode: String?

        public var loyaltyDiscount: Double?

        public var deliveryCharges: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case cartValue = "cart_value"

            case couponValue = "coupon_value"

            case couponCode = "coupon_code"

            case shippingAddress = "shipping_address"

            case files

            case currencyCode = "currency_code"

            case affiliateOrderId = "affiliate_order_id"

            case billingAddress = "billing_address"

            case employeeDiscount = "employee_discount"

            case cartItems = "cart_items"

            case cashbackApplied = "cashback_applied"

            case orderId = "order_id"

            case coupon

            case paymentMode = "payment_mode"

            case loyaltyDiscount = "loyalty_discount"

            case deliveryCharges = "delivery_charges"

            case paymentMethods = "payment_methods"

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String?, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String?, couponCode: String, couponValue: Double, currencyCode: String?, deliveryCharges: Double, employeeDiscount: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, orderId: String?, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String?, shippingAddress: ShippingAddress?) {
            self.cartValue = cartValue

            self.couponValue = couponValue

            self.couponCode = couponCode

            self.shippingAddress = shippingAddress

            self.files = files

            self.currencyCode = currencyCode

            self.affiliateOrderId = affiliateOrderId

            self.billingAddress = billingAddress

            self.employeeDiscount = employeeDiscount

            self.cartItems = cartItems

            self.cashbackApplied = cashbackApplied

            self.orderId = orderId

            self.coupon = coupon

            self.paymentMode = paymentMode

            self.loyaltyDiscount = loyaltyDiscount

            self.deliveryCharges = deliveryCharges

            self.paymentMethods = paymentMethods

            self.codCharges = codCharges
        }

        public func duplicate() -> OpenApiPlatformCheckoutReq {
            let dict = self.dictionary!
            let copy = OpenApiPlatformCheckoutReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }

    /*
         Model: OpenApiCheckoutResponse
         Used By: Cart
     */

    class OpenApiCheckoutResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var orderId: String

        public var orderRefId: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case orderId = "order_id"

            case orderRefId = "order_ref_id"
        }

        public init(message: String?, orderId: String, orderRefId: String?, success: Bool?) {
            self.message = message

            self.success = success

            self.orderId = orderId

            self.orderRefId = orderRefId
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
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                orderRefId = try container.decode(String.self, forKey: .orderRefId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(orderRefId, forKey: .orderRefId)
        }
    }
}
