import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CouponSchedule
         Used By: Cart
     */

    class CouponSchedule: Codable {
        public var cron: String?

        public var start: String?

        public var end: String?

        public var nextSchedule: [[String: Any]]?

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case cron

            case start

            case end

            case nextSchedule = "next_schedule"

            case duration
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, start: String?) {
            self.cron = cron

            self.start = start

            self.end = end

            self.nextSchedule = nextSchedule

            self.duration = duration
        }

        public func duplicate() -> CouponSchedule {
            let dict = self.dictionary!
            let copy = CouponSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cron = try container.decode(String.self, forKey: .cron)

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
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(duration, forKey: .duration)
        }
    }

    /*
         Model: Identifier
         Used By: Cart
     */

    class Identifier: Codable {
        public var collectionId: [String]?

        public var brandId: [Int]?

        public var storeId: [Int]?

        public var userId: [String]?

        public var articleId: [String]?

        public var categoryId: [Int]?

        public var itemId: [Int]?

        public var companyId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case collectionId = "collection_id"

            case brandId = "brand_id"

            case storeId = "store_id"

            case userId = "user_id"

            case articleId = "article_id"

            case categoryId = "category_id"

            case itemId = "item_id"

            case companyId = "company_id"
        }

        public init(articleId: [String]?, brandId: [Int]?, categoryId: [Int]?, collectionId: [String]?, companyId: [Int]?, itemId: [Int]?, storeId: [Int]?, userId: [String]?) {
            self.collectionId = collectionId

            self.brandId = brandId

            self.storeId = storeId

            self.userId = userId

            self.articleId = articleId

            self.categoryId = categoryId

            self.itemId = itemId

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
                collectionId = try container.decode([String].self, forKey: .collectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                userId = try container.decode([String].self, forKey: .userId)

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
                categoryId = try container.decode([Int].self, forKey: .categoryId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectionId, forKey: .collectionId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(categoryId, forKey: .categoryId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }

    /*
         Model: Validation
         Used By: Cart
     */

    class Validation: Codable {
        public var anonymous: Bool?

        public var appId: [String]?

        public var userRegisteredAfter: String?

        public enum CodingKeys: String, CodingKey {
            case anonymous

            case appId = "app_id"

            case userRegisteredAfter = "user_registered_after"
        }

        public init(anonymous: Bool?, appId: [String]?, userRegisteredAfter: String?) {
            self.anonymous = anonymous

            self.appId = appId

            self.userRegisteredAfter = userRegisteredAfter
        }

        public func duplicate() -> Validation {
            let dict = self.dictionary!
            let copy = Validation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                anonymous = try container.decode(Bool.self, forKey: .anonymous)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(anonymous, forKey: .anonymous)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)
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
        public var types: [String]?

        public var uses: PaymentAllowValue?

        public var codes: [String]?

        public var networks: [String]?

        public enum CodingKeys: String, CodingKey {
            case types

            case uses

            case codes

            case networks
        }

        public init(codes: [String]?, networks: [String]?, types: [String]?, uses: PaymentAllowValue?) {
            self.types = types

            self.uses = uses

            self.codes = codes

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
                types = try container.decode([String].self, forKey: .types)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                networks = try container.decode([String].self, forKey: .networks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(types, forKey: .types)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(networks, forKey: .networks)
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
        public var returnAllowed: Bool?

        public var cancellationAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case returnAllowed = "return_allowed"

            case cancellationAllowed = "cancellation_allowed"
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            self.returnAllowed = returnAllowed

            self.cancellationAllowed = cancellationAllowed
        }

        public func duplicate() -> PostOrder {
            let dict = self.dictionary!
            let copy = PostOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)

            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
        }
    }

    /*
         Model: UsesRemaining
         Used By: Cart
     */

    class UsesRemaining: Codable {
        public var total: Int?

        public var user: Int?

        public var app: Int?

        public enum CodingKeys: String, CodingKey {
            case total

            case user

            case app
        }

        public init(app: Int?, total: Int?, user: Int?) {
            self.total = total

            self.user = user

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
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(Int.self, forKey: .user)

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

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(app, forKey: .app)
        }
    }

    /*
         Model: UsesRestriction
         Used By: Cart
     */

    class UsesRestriction: Codable {
        public var remaining: UsesRemaining?

        public var maximum: UsesRemaining?

        public enum CodingKeys: String, CodingKey {
            case remaining

            case maximum
        }

        public init(maximum: UsesRemaining?, remaining: UsesRemaining?) {
            self.remaining = remaining

            self.maximum = maximum
        }

        public func duplicate() -> UsesRestriction {
            let dict = self.dictionary!
            let copy = UsesRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                remaining = try container.decode(UsesRemaining.self, forKey: .remaining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maximum = try container.decode(UsesRemaining.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remaining, forKey: .remaining)

            try? container.encodeIfPresent(maximum, forKey: .maximum)
        }
    }

    /*
         Model: PriceRange
         Used By: Cart
     */

    class PriceRange: Codable {
        public var max: Int?

        public var min: Int?

        public enum CodingKeys: String, CodingKey {
            case max

            case min
        }

        public init(max: Int?, min: Int?) {
            self.max = max

            self.min = min
        }

        public func duplicate() -> PriceRange {
            let dict = self.dictionary!
            let copy = PriceRange(dictionary: dict)!
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

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }

    /*
         Model: Restrictions
         Used By: Cart
     */

    class Restrictions: Codable {
        public var orderingStores: [Int]?

        public var couponAllowed: Bool?

        public var payments: [String: PaymentModes]?

        public var bulkBundle: BulkBundleRestriction?

        public var postOrder: PostOrder?

        public var userGroups: [Int]?

        public var uses: UsesRestriction?

        public var priceRange: PriceRange?

        public var platforms: [String]?

        public enum CodingKeys: String, CodingKey {
            case orderingStores = "ordering_stores"

            case couponAllowed = "coupon_allowed"

            case payments

            case bulkBundle = "bulk_bundle"

            case postOrder = "post_order"

            case userGroups = "user_groups"

            case uses

            case priceRange = "price_range"

            case platforms
        }

        public init(bulkBundle: BulkBundleRestriction?, couponAllowed: Bool?, orderingStores: [Int]?, payments: [String: PaymentModes]?, platforms: [String]?, postOrder: PostOrder?, priceRange: PriceRange?, userGroups: [Int]?, uses: UsesRestriction?) {
            self.orderingStores = orderingStores

            self.couponAllowed = couponAllowed

            self.payments = payments

            self.bulkBundle = bulkBundle

            self.postOrder = postOrder

            self.userGroups = userGroups

            self.uses = uses

            self.priceRange = priceRange

            self.platforms = platforms
        }

        public func duplicate() -> Restrictions {
            let dict = self.dictionary!
            let copy = Restrictions(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderingStores = try container.decode([Int].self, forKey: .orderingStores)

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
                payments = try container.decode([String: PaymentModes].self, forKey: .payments)

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
                postOrder = try container.decode(PostOrder.self, forKey: .postOrder)

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
                uses = try container.decode(UsesRestriction.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceRange = try container.decode(PriceRange.self, forKey: .priceRange)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)

            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(priceRange, forKey: .priceRange)

            try? container.encodeIfPresent(platforms, forKey: .platforms)
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
         Model: State
         Used By: Cart
     */

    class State: Codable {
        public var isDisplay: Bool?

        public var isPublic: Bool?

        public var isArchived: Bool?

        public enum CodingKeys: String, CodingKey {
            case isDisplay = "is_display"

            case isPublic = "is_public"

            case isArchived = "is_archived"
        }

        public init(isArchived: Bool?, isDisplay: Bool?, isPublic: Bool?) {
            self.isDisplay = isDisplay

            self.isPublic = isPublic

            self.isArchived = isArchived
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                isArchived = try container.decode(Bool.self, forKey: .isArchived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)

            try? container.encodeIfPresent(isPublic, forKey: .isPublic)

            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
        }
    }

    /*
         Model: RuleDefinition
         Used By: Cart
     */

    class RuleDefinition: Codable {
        public var valueType: String

        public var currencyCode: String?

        public var type: String

        public var autoApply: Bool?

        public var isExact: Bool?

        public var calculateOn: String

        public var applicableOn: String

        public var scope: [String]?

        public enum CodingKeys: String, CodingKey {
            case valueType = "value_type"

            case currencyCode = "currency_code"

            case type

            case autoApply = "auto_apply"

            case isExact = "is_exact"

            case calculateOn = "calculate_on"

            case applicableOn = "applicable_on"

            case scope
        }

        public init(applicableOn: String, autoApply: Bool?, calculateOn: String, currencyCode: String?, isExact: Bool?, scope: [String]?, type: String, valueType: String) {
            self.valueType = valueType

            self.currencyCode = currencyCode

            self.type = type

            self.autoApply = autoApply

            self.isExact = isExact

            self.calculateOn = calculateOn

            self.applicableOn = applicableOn

            self.scope = scope
        }

        public func duplicate() -> RuleDefinition {
            let dict = self.dictionary!
            let copy = RuleDefinition(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueType = try container.decode(String.self, forKey: .valueType)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isExact = try container.decode(Bool.self, forKey: .isExact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            calculateOn = try container.decode(String.self, forKey: .calculateOn)

            applicableOn = try container.decode(String.self, forKey: .applicableOn)

            do {
                scope = try container.decode([String].self, forKey: .scope)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueType, forKey: .valueType)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)

            try? container.encodeIfPresent(isExact, forKey: .isExact)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)

            try? container.encodeIfPresent(scope, forKey: .scope)
        }
    }

    /*
         Model: Rule
         Used By: Cart
     */

    class Rule: Codable {
        public var max: Double?

        public var discountQty: Double?

        public var value: Double?

        public var min: Double?

        public var key: Double?

        public enum CodingKeys: String, CodingKey {
            case max

            case discountQty = "discount_qty"

            case value

            case min

            case key
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            self.max = max

            self.discountQty = discountQty

            self.value = value

            self.min = min

            self.key = key
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
            } catch {}

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
                min = try container.decode(Double.self, forKey: .min)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: DisplayMetaDict
         Used By: Cart
     */

    class DisplayMetaDict: Codable {
        public var subtitle: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case title
        }

        public init(subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.title = title
        }

        public func duplicate() -> DisplayMetaDict {
            let dict = self.dictionary!
            let copy = DisplayMetaDict(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: DisplayMeta
         Used By: Cart
     */

    class DisplayMeta: Codable {
        public var subtitle: String?

        public var description: String?

        public var apply: DisplayMetaDict?

        public var auto: DisplayMetaDict?

        public var title: String?

        public var remove: DisplayMetaDict?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case description

            case apply

            case auto

            case title

            case remove
        }

        public init(apply: DisplayMetaDict?, auto: DisplayMetaDict?, description: String?, remove: DisplayMetaDict?, subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.description = description

            self.apply = apply

            self.auto = auto

            self.title = title

            self.remove = remove
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
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

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

            do {
                auto = try container.decode(DisplayMetaDict.self, forKey: .auto)

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
                remove = try container.decode(DisplayMetaDict.self, forKey: .remove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(apply, forKey: .apply)

            try? container.encodeIfPresent(auto, forKey: .auto)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(remove, forKey: .remove)
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
        public var schedule: CouponSchedule?

        public var identifiers: Identifier

        public var validation: Validation?

        public var typeSlug: String

        public var validity: Validity

        public var dateMeta: CouponDateMeta?

        public var author: CouponAuthor?

        public var restrictions: Restrictions?

        public var tags: [String]?

        public var action: CouponAction?

        public var state: State?

        public var ruleDefinition: RuleDefinition

        public var rule: [Rule]

        public var displayMeta: DisplayMeta

        public var code: String

        public var ownership: Ownership

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case identifiers

            case validation

            case typeSlug = "type_slug"

            case validity

            case dateMeta = "date_meta"

            case author

            case restrictions

            case tags

            case action

            case state

            case ruleDefinition = "rule_definition"

            case rule

            case displayMeta = "display_meta"

            case code

            case ownership
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            self.schedule = schedule

            self.identifiers = identifiers

            self.validation = validation

            self.typeSlug = typeSlug

            self.validity = validity

            self.dateMeta = dateMeta

            self.author = author

            self.restrictions = restrictions

            self.tags = tags

            self.action = action

            self.state = state

            self.ruleDefinition = ruleDefinition

            self.rule = rule

            self.displayMeta = displayMeta

            self.code = code

            self.ownership = ownership
        }

        public func duplicate() -> CouponAdd {
            let dict = self.dictionary!
            let copy = CouponAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

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

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            rule = try container.decode([Rule].self, forKey: .rule)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            code = try container.decode(String.self, forKey: .code)

            ownership = try container.decode(Ownership.self, forKey: .ownership)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ownership, forKey: .ownership)
        }
    }

    /*
         Model: CouponsResponse
         Used By: Cart
     */

    class CouponsResponse: Codable {
        public var items: CouponAdd?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: CouponAdd?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CouponsResponse {
            let dict = self.dictionary!
            let copy = CouponsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(CouponAdd.self, forKey: .items)

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
         Model: SuccessMessage
         Used By: Cart
     */

    class SuccessMessage: Codable {
        public var success: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String?, success: Bool?) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> SuccessMessage {
            let dict = self.dictionary!
            let copy = SuccessMessage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

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

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: OperationErrorResponse
         Used By: Cart
     */

    class OperationErrorResponse: Codable {
        public var success: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String?, success: Bool?) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> OperationErrorResponse {
            let dict = self.dictionary!
            let copy = OperationErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

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

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var schedule: CouponSchedule?

        public var identifiers: Identifier

        public var validation: Validation?

        public var typeSlug: String

        public var validity: Validity

        public var dateMeta: CouponDateMeta?

        public var author: CouponAuthor?

        public var restrictions: Restrictions?

        public var tags: [String]?

        public var action: CouponAction?

        public var state: State?

        public var ruleDefinition: RuleDefinition

        public var rule: [Rule]

        public var displayMeta: DisplayMeta

        public var code: String

        public var ownership: Ownership

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case identifiers

            case validation

            case typeSlug = "type_slug"

            case validity

            case dateMeta = "date_meta"

            case author

            case restrictions

            case tags

            case action

            case state

            case ruleDefinition = "rule_definition"

            case rule

            case displayMeta = "display_meta"

            case code

            case ownership
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            self.schedule = schedule

            self.identifiers = identifiers

            self.validation = validation

            self.typeSlug = typeSlug

            self.validity = validity

            self.dateMeta = dateMeta

            self.author = author

            self.restrictions = restrictions

            self.tags = tags

            self.action = action

            self.state = state

            self.ruleDefinition = ruleDefinition

            self.rule = rule

            self.displayMeta = displayMeta

            self.code = code

            self.ownership = ownership
        }

        public func duplicate() -> CouponUpdate {
            let dict = self.dictionary!
            let copy = CouponUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

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

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            rule = try container.decode([Rule].self, forKey: .rule)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            code = try container.decode(String.self, forKey: .code)

            ownership = try container.decode(Ownership.self, forKey: .ownership)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(code, forKey: .code)

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
         Model: CompareObject
         Used By: Cart
     */

    class CompareObject: Codable {
        public var greaterThanEquals: Double?

        public var lessThanEquals: Double?

        public var equals: Double?

        public var greaterThan: Double?

        public var lessThan: Double?

        public enum CodingKeys: String, CodingKey {
            case greaterThanEquals = "greater_than_equals"

            case lessThanEquals = "less_than_equals"

            case equals

            case greaterThan = "greater_than"

            case lessThan = "less_than"
        }

        public init(equals: Double?, greaterThan: Double?, greaterThanEquals: Double?, lessThan: Double?, lessThanEquals: Double?) {
            self.greaterThanEquals = greaterThanEquals

            self.lessThanEquals = lessThanEquals

            self.equals = equals

            self.greaterThan = greaterThan

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
                greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)

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
                lessThan = try container.decode(Double.self, forKey: .lessThan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)

            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)

            try? container.encodeIfPresent(equals, forKey: .equals)

            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)

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

        public var itemSku: [String]?

        public var itemExcludeCompany: [Int]?

        public var cartTotal: CompareObject?

        public var itemExcludeStore: [Int]?

        public var itemStore: [Int]?

        public var itemSize: [String]?

        public var cartQuantity: CompareObject?

        public var itemExcludeSku: [String]?

        public var itemExcludeCategory: [Int]?

        public var itemExcludeBrand: [Int]?

        public var itemCompany: [Int]?

        public var itemCategory: [Int]?

        public var itemId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case buyExpression = "buy_expression"

            case itemBrand = "item_brand"

            case itemSku = "item_sku"

            case itemExcludeCompany = "item_exclude_company"

            case cartTotal = "cart_total"

            case itemExcludeStore = "item_exclude_store"

            case itemStore = "item_store"

            case itemSize = "item_size"

            case cartQuantity = "cart_quantity"

            case itemExcludeSku = "item_exclude_sku"

            case itemExcludeCategory = "item_exclude_category"

            case itemExcludeBrand = "item_exclude_brand"

            case itemCompany = "item_company"

            case itemCategory = "item_category"

            case itemId = "item_id"
        }

        public init(buyExpression: String?, cartQuantity: CompareObject?, cartTotal: CompareObject?, itemBrand: [Int]?, itemCategory: [Int]?, itemCompany: [Int]?, itemExcludeBrand: [Int]?, itemExcludeCategory: [Int]?, itemExcludeCompany: [Int]?, itemExcludeSku: [String]?, itemExcludeStore: [Int]?, itemId: [Int]?, itemSize: [String]?, itemSku: [String]?, itemStore: [Int]?) {
            self.buyExpression = buyExpression

            self.itemBrand = itemBrand

            self.itemSku = itemSku

            self.itemExcludeCompany = itemExcludeCompany

            self.cartTotal = cartTotal

            self.itemExcludeStore = itemExcludeStore

            self.itemStore = itemStore

            self.itemSize = itemSize

            self.cartQuantity = cartQuantity

            self.itemExcludeSku = itemExcludeSku

            self.itemExcludeCategory = itemExcludeCategory

            self.itemExcludeBrand = itemExcludeBrand

            self.itemCompany = itemCompany

            self.itemCategory = itemCategory

            self.itemId = itemId
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
                itemSku = try container.decode([String].self, forKey: .itemSku)

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
                itemStore = try container.decode([Int].self, forKey: .itemStore)

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
                cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)

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
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)

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
                itemCompany = try container.decode([Int].self, forKey: .itemCompany)

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
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyExpression, forKey: .buyExpression)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
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
        public var uses: PaymentAllowValue1?

        public var codes: [String]?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case uses

            case codes

            case type
        }

        public init(codes: [String]?, type: String, uses: PaymentAllowValue1?) {
            self.uses = uses

            self.codes = codes

            self.type = type
        }

        public func duplicate() -> PromotionPaymentModes {
            let dict = self.dictionary!
            let copy = PromotionPaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uses = try container.decode(PaymentAllowValue1.self, forKey: .uses)

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

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: PostOrder1
         Used By: Cart
     */

    class PostOrder1: Codable {
        public var returnAllowed: Bool?

        public var cancellationAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case returnAllowed = "return_allowed"

            case cancellationAllowed = "cancellation_allowed"
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            self.returnAllowed = returnAllowed

            self.cancellationAllowed = cancellationAllowed
        }

        public func duplicate() -> PostOrder1 {
            let dict = self.dictionary!
            let copy = PostOrder1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)

            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
        }
    }

    /*
         Model: UsesRemaining1
         Used By: Cart
     */

    class UsesRemaining1: Codable {
        public var total: Int?

        public var user: Int?

        public enum CodingKeys: String, CodingKey {
            case total

            case user
        }

        public init(total: Int?, user: Int?) {
            self.total = total

            self.user = user
        }

        public func duplicate() -> UsesRemaining1 {
            let dict = self.dictionary!
            let copy = UsesRemaining1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(Int.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }

    /*
         Model: UsesRestriction1
         Used By: Cart
     */

    class UsesRestriction1: Codable {
        public var remaining: UsesRemaining1?

        public var maximum: UsesRemaining1?

        public enum CodingKeys: String, CodingKey {
            case remaining

            case maximum
        }

        public init(maximum: UsesRemaining1?, remaining: UsesRemaining1?) {
            self.remaining = remaining

            self.maximum = maximum
        }

        public func duplicate() -> UsesRestriction1 {
            let dict = self.dictionary!
            let copy = UsesRestriction1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maximum = try container.decode(UsesRemaining1.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remaining, forKey: .remaining)

            try? container.encodeIfPresent(maximum, forKey: .maximum)
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
            case start

            case end
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
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(start, forKey: .start)

            try? container.encode(end, forKey: .end)
        }
    }

    /*
         Model: Restrictions1
         Used By: Cart
     */

    class Restrictions1: Codable {
        public var payments: [PromotionPaymentModes]?

        public var anonymousUsers: Bool?

        public var postOrder: PostOrder1?

        public var userGroups: [Int]?

        public var userId: [String]?

        public var uses: UsesRestriction1

        public var userRegistered: UserRegistered?

        public var orderQuantity: Int?

        public var platforms: [String]?

        public enum CodingKeys: String, CodingKey {
            case payments

            case anonymousUsers = "anonymous_users"

            case postOrder = "post_order"

            case userGroups = "user_groups"

            case userId = "user_id"

            case uses

            case userRegistered = "user_registered"

            case orderQuantity = "order_quantity"

            case platforms
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            self.payments = payments

            self.anonymousUsers = anonymousUsers

            self.postOrder = postOrder

            self.userGroups = userGroups

            self.userId = userId

            self.uses = uses

            self.userRegistered = userRegistered

            self.orderQuantity = orderQuantity

            self.platforms = platforms
        }

        public func duplicate() -> Restrictions1 {
            let dict = self.dictionary!
            let copy = Restrictions1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payments = try container.decode([PromotionPaymentModes].self, forKey: .payments)

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
                postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)

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
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uses = try container.decode(UsesRestriction1.self, forKey: .uses)

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
                platforms = try container.decode([String].self, forKey: .platforms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(platforms, forKey: .platforms)
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
         Model: DisplayMeta1
         Used By: Cart
     */

    class DisplayMeta1: Codable {
        public var name: String?

        public var offerText: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case offerText = "offer_text"

            case description
        }

        public init(description: String?, name: String?, offerText: String?) {
            self.name = name

            self.offerText = offerText

            self.description = description
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
                offerText = try container.decode(String.self, forKey: .offerText)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: DiscountOffer
         Used By: Cart
     */

    class DiscountOffer: Codable {
        public var minOfferQuantity: Int?

        public var maxOfferQuantity: Int?

        public var discountAmount: Double?

        public var code: String?

        public var discountPercentage: Double?

        public var maxDiscountAmount: Double?

        public var discountPrice: Double?

        public enum CodingKeys: String, CodingKey {
            case minOfferQuantity = "min_offer_quantity"

            case maxOfferQuantity = "max_offer_quantity"

            case discountAmount = "discount_amount"

            case code

            case discountPercentage = "discount_percentage"

            case maxDiscountAmount = "max_discount_amount"

            case discountPrice = "discount_price"
        }

        public init(code: String?, discountAmount: Double?, discountPercentage: Double?, discountPrice: Double?, maxDiscountAmount: Double?, maxOfferQuantity: Int?, minOfferQuantity: Int?) {
            self.minOfferQuantity = minOfferQuantity

            self.maxOfferQuantity = maxOfferQuantity

            self.discountAmount = discountAmount

            self.code = code

            self.discountPercentage = discountPercentage

            self.maxDiscountAmount = maxDiscountAmount

            self.discountPrice = discountPrice
        }

        public func duplicate() -> DiscountOffer {
            let dict = self.dictionary!
            let copy = DiscountOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)

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

            do {
                discountAmount = try container.decode(Double.self, forKey: .discountAmount)

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
                discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)

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
                discountPrice = try container.decode(Double.self, forKey: .discountPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)

            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)

            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)

            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)

            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)
        }
    }

    /*
         Model: DiscountRule
         Used By: Cart
     */

    class DiscountRule: Codable {
        public var offer: DiscountOffer

        public var itemCriteria: ItemCriteria

        public var buyCondition: String

        public var discountType: String

        public enum CodingKeys: String, CodingKey {
            case offer

            case itemCriteria = "item_criteria"

            case buyCondition = "buy_condition"

            case discountType = "discount_type"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            self.offer = offer

            self.itemCriteria = itemCriteria

            self.buyCondition = buyCondition

            self.discountType = discountType
        }

        public func duplicate() -> DiscountRule {
            let dict = self.dictionary!
            let copy = DiscountRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            offer = try container.decode(DiscountOffer.self, forKey: .offer)

            itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            discountType = try container.decode(String.self, forKey: .discountType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)

            try? container.encodeIfPresent(discountType, forKey: .discountType)
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
         Model: PromotionSchedule
         Used By: Cart
     */

    class PromotionSchedule: Codable {
        public var cron: String?

        public var start: String

        public var end: String

        public var published: Bool

        public var nextSchedule: [[String: Any]]?

        public var duration: Int?

        public enum CodingKeys: String, CodingKey {
            case cron

            case start

            case end

            case published

            case nextSchedule = "next_schedule"

            case duration
        }

        public init(cron: String?, duration: Int?, end: String, nextSchedule: [[String: Any]]?, published: Bool, start: String) {
            self.cron = cron

            self.start = start

            self.end = end

            self.published = published

            self.nextSchedule = nextSchedule

            self.duration = duration
        }

        public func duplicate() -> PromotionSchedule {
            let dict = self.dictionary!
            let copy = PromotionSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            start = try container.decode(String.self, forKey: .start)

            end = try container.decode(String.self, forKey: .end)

            published = try container.decode(Bool.self, forKey: .published)

            do {
                nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encode(end, forKey: .end)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)

            try? container.encode(duration, forKey: .duration)
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
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var buyRules: [String: ItemCriteria]

        public var author: PromotionAuthor?

        public var customJson: [String: Any]?

        public var mode: String

        public var applicationId: String

        public var dateMeta: PromotionDateMeta?

        public var restrictions: Restrictions1?

        public var stackable: Bool?

        public var visiblility: Visibility?

        public var displayMeta: DisplayMeta1

        public var currency: String?

        public var discountRules: [DiscountRule]

        public var code: String?

        public var postOrderAction: PromotionAction?

        public var promoGroup: String

        public var promotionType: String

        public var schedule: PromotionSchedule?

        public var applyAllDiscount: Bool?

        public var applyPriority: Int?

        public var ownership: Ownership1

        public var applyExclusive: String?

        public enum CodingKeys: String, CodingKey {
            case buyRules = "buy_rules"

            case author

            case customJson = "_custom_json"

            case mode

            case applicationId = "application_id"

            case dateMeta = "date_meta"

            case restrictions

            case stackable

            case visiblility

            case displayMeta = "display_meta"

            case currency

            case discountRules = "discount_rules"

            case code

            case postOrderAction = "post_order_action"

            case promoGroup = "promo_group"

            case promotionType = "promotion_type"

            case schedule = "_schedule"

            case applyAllDiscount = "apply_all_discount"

            case applyPriority = "apply_priority"

            case ownership

            case applyExclusive = "apply_exclusive"
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.buyRules = buyRules

            self.author = author

            self.customJson = customJson

            self.mode = mode

            self.applicationId = applicationId

            self.dateMeta = dateMeta

            self.restrictions = restrictions

            self.stackable = stackable

            self.visiblility = visiblility

            self.displayMeta = displayMeta

            self.currency = currency

            self.discountRules = discountRules

            self.code = code

            self.postOrderAction = postOrderAction

            self.promoGroup = promoGroup

            self.promotionType = promotionType

            self.schedule = schedule

            self.applyAllDiscount = applyAllDiscount

            self.applyPriority = applyPriority

            self.ownership = ownership

            self.applyExclusive = applyExclusive
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encode(applyExclusive, forKey: .applyExclusive)
        }
    }

    /*
         Model: PromotionsResponse
         Used By: Cart
     */

    class PromotionsResponse: Codable {
        public var items: PromotionListItem?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: PromotionListItem?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> PromotionsResponse {
            let dict = self.dictionary!
            let copy = PromotionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(PromotionListItem.self, forKey: .items)

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
         Model: PromotionAdd
         Used By: Cart
     */

    class PromotionAdd: Codable {
        public var buyRules: [String: ItemCriteria]

        public var author: PromotionAuthor?

        public var customJson: [String: Any]?

        public var mode: String

        public var applicationId: String

        public var dateMeta: PromotionDateMeta?

        public var restrictions: Restrictions1?

        public var stackable: Bool?

        public var visiblility: Visibility?

        public var displayMeta: DisplayMeta1

        public var currency: String?

        public var discountRules: [DiscountRule]

        public var code: String?

        public var postOrderAction: PromotionAction?

        public var promoGroup: String

        public var promotionType: String

        public var schedule: PromotionSchedule?

        public var applyAllDiscount: Bool?

        public var applyPriority: Int?

        public var ownership: Ownership1

        public var applyExclusive: String?

        public enum CodingKeys: String, CodingKey {
            case buyRules = "buy_rules"

            case author

            case customJson = "_custom_json"

            case mode

            case applicationId = "application_id"

            case dateMeta = "date_meta"

            case restrictions

            case stackable

            case visiblility

            case displayMeta = "display_meta"

            case currency

            case discountRules = "discount_rules"

            case code

            case postOrderAction = "post_order_action"

            case promoGroup = "promo_group"

            case promotionType = "promotion_type"

            case schedule = "_schedule"

            case applyAllDiscount = "apply_all_discount"

            case applyPriority = "apply_priority"

            case ownership

            case applyExclusive = "apply_exclusive"
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.buyRules = buyRules

            self.author = author

            self.customJson = customJson

            self.mode = mode

            self.applicationId = applicationId

            self.dateMeta = dateMeta

            self.restrictions = restrictions

            self.stackable = stackable

            self.visiblility = visiblility

            self.displayMeta = displayMeta

            self.currency = currency

            self.discountRules = discountRules

            self.code = code

            self.postOrderAction = postOrderAction

            self.promoGroup = promoGroup

            self.promotionType = promotionType

            self.schedule = schedule

            self.applyAllDiscount = applyAllDiscount

            self.applyPriority = applyPriority

            self.ownership = ownership

            self.applyExclusive = applyExclusive
        }

        public func duplicate() -> PromotionAdd {
            let dict = self.dictionary!
            let copy = PromotionAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encode(applyExclusive, forKey: .applyExclusive)
        }
    }

    /*
         Model: PromotionUpdate
         Used By: Cart
     */

    class PromotionUpdate: Codable {
        public var buyRules: [String: ItemCriteria]

        public var author: PromotionAuthor?

        public var customJson: [String: Any]?

        public var mode: String

        public var applicationId: String

        public var dateMeta: PromotionDateMeta?

        public var restrictions: Restrictions1?

        public var stackable: Bool?

        public var visiblility: Visibility?

        public var displayMeta: DisplayMeta1

        public var currency: String?

        public var discountRules: [DiscountRule]

        public var code: String?

        public var postOrderAction: PromotionAction?

        public var promoGroup: String

        public var promotionType: String

        public var schedule: PromotionSchedule?

        public var applyAllDiscount: Bool?

        public var applyPriority: Int?

        public var ownership: Ownership1

        public var applyExclusive: String?

        public enum CodingKeys: String, CodingKey {
            case buyRules = "buy_rules"

            case author

            case customJson = "_custom_json"

            case mode

            case applicationId = "application_id"

            case dateMeta = "date_meta"

            case restrictions

            case stackable

            case visiblility

            case displayMeta = "display_meta"

            case currency

            case discountRules = "discount_rules"

            case code

            case postOrderAction = "post_order_action"

            case promoGroup = "promo_group"

            case promotionType = "promotion_type"

            case schedule = "_schedule"

            case applyAllDiscount = "apply_all_discount"

            case applyPriority = "apply_priority"

            case ownership

            case applyExclusive = "apply_exclusive"
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.buyRules = buyRules

            self.author = author

            self.customJson = customJson

            self.mode = mode

            self.applicationId = applicationId

            self.dateMeta = dateMeta

            self.restrictions = restrictions

            self.stackable = stackable

            self.visiblility = visiblility

            self.displayMeta = displayMeta

            self.currency = currency

            self.discountRules = discountRules

            self.code = code

            self.postOrderAction = postOrderAction

            self.promoGroup = promoGroup

            self.promotionType = promotionType

            self.schedule = schedule

            self.applyAllDiscount = applyAllDiscount

            self.applyPriority = applyPriority

            self.ownership = ownership

            self.applyExclusive = applyExclusive
        }

        public func duplicate() -> PromotionUpdate {
            let dict = self.dictionary!
            let copy = PromotionUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encode(applyExclusive, forKey: .applyExclusive)
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
        public var size: String

        public var quantity: Int?

        public var productId: String

        public enum CodingKeys: String, CodingKey {
            case size

            case quantity

            case productId = "product_id"
        }

        public init(productId: String, quantity: Int?, size: String) {
            self.size = size

            self.quantity = quantity

            self.productId = productId
        }

        public func duplicate() -> CartItem {
            let dict = self.dictionary!
            let copy = CartItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(String.self, forKey: .productId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

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
         Model: ProductAvailability
         Used By: Cart
     */

    class ProductAvailability: Codable {
        public var otherStoreQuantity: Int?

        public var deliverable: Bool?

        public var outOfStock: Bool?

        public var isValid: Bool?

        public var sizes: [String]?

        public enum CodingKeys: String, CodingKey {
            case otherStoreQuantity = "other_store_quantity"

            case deliverable

            case outOfStock = "out_of_stock"

            case isValid = "is_valid"

            case sizes
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            self.otherStoreQuantity = otherStoreQuantity

            self.deliverable = deliverable

            self.outOfStock = outOfStock

            self.isValid = isValid

            self.sizes = sizes
        }

        public func duplicate() -> ProductAvailability {
            let dict = self.dictionary!
            let copy = ProductAvailability(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)

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
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)

            try? container.encodeIfPresent(deliverable, forKey: .deliverable)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
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
         Model: ProductPrice
         Used By: Cart
     */

    class ProductPrice: Codable {
        public var currencySymbol: String?

        public var currencyCode: String?

        public var effective: Double?

        public var selling: Double?

        public var addOn: Double?

        public var marked: Double?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case effective

            case selling

            case addOn = "add_on"

            case marked
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.effective = effective

            self.selling = selling

            self.addOn = addOn

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
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(selling, forKey: .selling)

            try? container.encodeIfPresent(addOn, forKey: .addOn)

            try? container.encodeIfPresent(marked, forKey: .marked)
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
            case base

            case converted
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
            } catch {}

            do {
                converted = try container.decode(ProductPrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(base, forKey: .base)

            try? container.encodeIfPresent(converted, forKey: .converted)
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
         Model: AppliedPromotion
         Used By: Cart
     */

    class AppliedPromotion: Codable {
        public var promotionType: String?

        public var mrpPromotion: Bool?

        public var articleQuantity: Int?

        public var promoId: String?

        public var amount: Double?

        public enum CodingKeys: String, CodingKey {
            case promotionType = "promotion_type"

            case mrpPromotion = "mrp_promotion"

            case articleQuantity = "article_quantity"

            case promoId = "promo_id"

            case amount
        }

        public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
            self.promotionType = promotionType

            self.mrpPromotion = mrpPromotion

            self.articleQuantity = articleQuantity

            self.promoId = promoId

            self.amount = amount
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
            } catch {}

            do {
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

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
                promoId = try container.decode(String.self, forKey: .promoId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(amount, forKey: .amount)
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
        public var currencySymbol: String?

        public var effective: Double?

        public var currencyCode: String?

        public var marked: Double?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case effective

            case currencyCode = "currency_code"

            case marked
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
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case base

            case converted
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
            } catch {}

            do {
                converted = try container.decode(BasePrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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

        public var uid: String?

        public var parentItemIdentifiers: [String: Any]?

        public var store: BaseInfo?

        public var seller: BaseInfo?

        public var size: String?

        public var price: ArticlePriceInfo?

        public var extraMeta: [String: Any]?

        public var quantity: Int?

        public var productGroupTags: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case uid

            case parentItemIdentifiers = "parent_item_identifiers"

            case store

            case seller

            case size

            case price

            case extraMeta = "extra_meta"

            case quantity

            case productGroupTags = "product_group_tags"
        }

        public init(extraMeta: [String: Any]?, parentItemIdentifiers: [String: Any]?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            self.type = type

            self.uid = uid

            self.parentItemIdentifiers = parentItemIdentifiers

            self.store = store

            self.seller = seller

            self.size = size

            self.price = price

            self.extraMeta = extraMeta

            self.quantity = quantity

            self.productGroupTags = productGroupTags
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
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                seller = try container.decode(BaseInfo.self, forKey: .seller)

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
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
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
        public var secureUrl: String?

        public var aspectRatio: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"

            case aspectRatio = "aspect_ratio"

            case url
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            self.secureUrl = secureUrl

            self.aspectRatio = aspectRatio

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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

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
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: CartProduct
         Used By: Cart
     */

    class CartProduct: Codable {
        public var categories: [CategoryInfo]?

        public var type: String?

        public var uid: Int?

        public var name: String?

        public var brand: BaseInfo?

        public var action: ProductAction?

        public var slug: String?

        public var images: [ProductImage]?

        public enum CodingKeys: String, CodingKey {
            case categories

            case type

            case uid

            case name

            case brand

            case action

            case slug

            case images
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            self.categories = categories

            self.type = type

            self.uid = uid

            self.name = name

            self.brand = brand

            self.action = action

            self.slug = slug

            self.images = images
        }

        public func duplicate() -> CartProduct {
            let dict = self.dictionary!
            let copy = CartProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categories = try container.decode([CategoryInfo].self, forKey: .categories)

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
                brand = try container.decode(BaseInfo.self, forKey: .brand)

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
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }

    /*
         Model: CartProductInfo
         Used By: Cart
     */

    class CartProductInfo: Codable {
        public var availability: ProductAvailability?

        public var promoMeta: PromoMeta?

        public var pricePerUnit: ProductPriceInfo?

        public var identifiers: CartProductIdentifer

        public var bulkOffer: [String: Any]?

        public var promotionApplied: [AppliedPromotion]?

        public var isSet: Bool?

        public var discount: String?

        public var couponMessage: String?

        public var parentItemIdentifiers: [String: Any]?

        public var article: ProductArticle?

        public var message: String?

        public var product: CartProduct?

        public var quantity: Int?

        public var price: ProductPriceInfo?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case availability

            case promoMeta = "promo_meta"

            case pricePerUnit = "price_per_unit"

            case identifiers

            case bulkOffer = "bulk_offer"

            case promotionApplied = "promotion_applied"

            case isSet = "is_set"

            case discount

            case couponMessage = "coupon_message"

            case parentItemIdentifiers = "parent_item_identifiers"

            case article

            case message

            case product

            case quantity

            case price

            case key
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, parentItemIdentifiers: [String: Any]?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
            self.availability = availability

            self.promoMeta = promoMeta

            self.pricePerUnit = pricePerUnit

            self.identifiers = identifiers

            self.bulkOffer = bulkOffer

            self.promotionApplied = promotionApplied

            self.isSet = isSet

            self.discount = discount

            self.couponMessage = couponMessage

            self.parentItemIdentifiers = parentItemIdentifiers

            self.article = article

            self.message = message

            self.product = product

            self.quantity = quantity

            self.price = price

            self.key = key
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

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
                pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                couponMessage = try container.decode(String.self, forKey: .couponMessage)

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
                article = try container.decode(ProductArticle.self, forKey: .article)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availability, forKey: .availability)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: DisplayBreakup
         Used By: Cart
     */

    class DisplayBreakup: Codable {
        public var currencySymbol: String?

        public var currencyCode: String?

        public var display: String?

        public var value: Double?

        public var message: [String]?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case display

            case value

            case message

            case key
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.display = display

            self.value = value

            self.message = message

            self.key = key
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                display = try container.decode(String.self, forKey: .display)

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
                message = try container.decode([String].self, forKey: .message)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: LoyaltyPoints
         Used By: Cart
     */

    class LoyaltyPoints: Codable {
        public var total: Double?

        public var applicable: Double?

        public var isApplied: Bool?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case total

            case applicable

            case isApplied = "is_applied"

            case description
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            self.total = total

            self.applicable = applicable

            self.isApplied = isApplied

            self.description = description
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
                applicable = try container.decode(Double.self, forKey: .applicable)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(applicable, forKey: .applicable)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: CouponBreakup
         Used By: Cart
     */

    class CouponBreakup: Codable {
        public var type: String?

        public var uid: String?

        public var code: String?

        public var isApplied: Bool?

        public var value: Double?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case uid

            case code

            case isApplied = "is_applied"

            case value

            case message
        }

        public init(code: String?, isApplied: Bool?, message: String?, type: String?, uid: String?, value: Double?) {
            self.type = type

            self.uid = uid

            self.code = code

            self.isApplied = isApplied

            self.value = value

            self.message = message
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
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

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
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: RawBreakup
         Used By: Cart
     */

    class RawBreakup: Codable {
        public var fyndCash: Double?

        public var coupon: Double?

        public var subtotal: Double?

        public var youSaved: Double?

        public var total: Double?

        public var convenienceFee: Double?

        public var vog: Double?

        public var mrpTotal: Double?

        public var gstCharges: Double?

        public var codCharge: Double?

        public var deliveryCharge: Double?

        public var discount: Double?

        public enum CodingKeys: String, CodingKey {
            case fyndCash = "fynd_cash"

            case coupon

            case subtotal

            case youSaved = "you_saved"

            case total

            case convenienceFee = "convenience_fee"

            case vog

            case mrpTotal = "mrp_total"

            case gstCharges = "gst_charges"

            case codCharge = "cod_charge"

            case deliveryCharge = "delivery_charge"

            case discount
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            self.fyndCash = fyndCash

            self.coupon = coupon

            self.subtotal = subtotal

            self.youSaved = youSaved

            self.total = total

            self.convenienceFee = convenienceFee

            self.vog = vog

            self.mrpTotal = mrpTotal

            self.gstCharges = gstCharges

            self.codCharge = codCharge

            self.deliveryCharge = deliveryCharge

            self.discount = discount
        }

        public func duplicate() -> RawBreakup {
            let dict = self.dictionary!
            let copy = RawBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

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
                subtotal = try container.decode(Double.self, forKey: .subtotal)

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

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)

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
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)

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
                codCharge = try container.decode(Double.self, forKey: .codCharge)

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
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(vog, forKey: .vog)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }

    /*
         Model: CartBreakup
         Used By: Cart
     */

    class CartBreakup: Codable {
        public var display: [DisplayBreakup]?

        public var loyaltyPoints: LoyaltyPoints?

        public var coupon: CouponBreakup?

        public var raw: RawBreakup?

        public enum CodingKeys: String, CodingKey {
            case display

            case loyaltyPoints = "loyalty_points"

            case coupon

            case raw
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            self.display = display

            self.loyaltyPoints = loyaltyPoints

            self.coupon = coupon

            self.raw = raw
        }

        public func duplicate() -> CartBreakup {
            let dict = self.dictionary!
            let copy = CartBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode([DisplayBreakup].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)

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

            do {
                raw = try container.decode(RawBreakup.self, forKey: .raw)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(raw, forKey: .raw)
        }
    }

    /*
         Model: OpenapiCartDetailsResponse
         Used By: Cart
     */

    class OpenapiCartDetailsResponse: Codable {
        public var items: [CartProductInfo]?

        public var isValid: Bool?

        public var message: String?

        public var breakupValues: CartBreakup?

        public enum CodingKeys: String, CodingKey {
            case items

            case isValid = "is_valid"

            case message

            case breakupValues = "breakup_values"
        }

        public init(breakupValues: CartBreakup?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            self.items = items

            self.isValid = isValid

            self.message = message

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
                items = try container.decode([CartProductInfo].self, forKey: .items)

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
                message = try container.decode(String.self, forKey: .message)

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

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        }
    }

    /*
         Model: OpenApiErrorResponse
         Used By: Cart
     */

    class OpenApiErrorResponse: Codable {
        public var success: Bool?

        public var errors: [String: Any]?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case errors

            case message
        }

        public init(errors: [String: Any]?, message: String?, success: Bool?) {
            self.success = success

            self.errors = errors

            self.message = message
        }

        public func duplicate() -> OpenApiErrorResponse {
            let dict = self.dictionary!
            let copy = OpenApiErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ShippingAddress
         Used By: Cart
     */

    class ShippingAddress: Codable {
        public var countryCode: String?

        public var name: String?

        public var addressType: String?

        public var pincode: Int?

        public var email: String?

        public var meta: [String: Any]?

        public var area: String?

        public var areaCode: String

        public var state: String?

        public var address: String?

        public var areaCodeSlug: String?

        public var phone: Int?

        public var city: String?

        public var country: String?

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case name

            case addressType = "address_type"

            case pincode

            case email

            case meta

            case area

            case areaCode = "area_code"

            case state

            case address

            case areaCodeSlug = "area_code_slug"

            case phone

            case city

            case country

            case landmark
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String, areaCodeSlug: String?, city: String?, country: String?, countryCode: String?, email: String?, landmark: String?, meta: [String: Any]?, name: String?, phone: Int?, pincode: Int?, state: String?) {
            self.countryCode = countryCode

            self.name = name

            self.addressType = addressType

            self.pincode = pincode

            self.email = email

            self.meta = meta

            self.area = area

            self.areaCode = areaCode

            self.state = state

            self.address = address

            self.areaCodeSlug = areaCodeSlug

            self.phone = phone

            self.city = city

            self.country = country

            self.landmark = landmark
        }

        public func duplicate() -> ShippingAddress {
            let dict = self.dictionary!
            let copy = ShippingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

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
                addressType = try container.decode(String.self, forKey: .addressType)

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
                email = try container.decode(String.self, forKey: .email)

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
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            areaCode = try container.decode(String.self, forKey: .areaCode)

            do {
                state = try container.decode(String.self, forKey: .state)

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
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encode(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(city, forKey: .city)

            try? container.encode(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
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
        public var max: Double?

        public var min: Double?

        public enum CodingKeys: String, CodingKey {
            case max

            case min
        }

        public init(max: Double?, min: Double?) {
            self.max = max

            self.min = min
        }

        public func duplicate() -> PromiseTimestamp {
            let dict = self.dictionary!
            let copy = PromiseTimestamp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                max = try container.decode(Double.self, forKey: .max)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)
        }
    }

    /*
         Model: PromiseFormatted
         Used By: Cart
     */

    class PromiseFormatted: Codable {
        public var max: String?

        public var min: String?

        public enum CodingKeys: String, CodingKey {
            case max

            case min
        }

        public init(max: String?, min: String?) {
            self.max = max

            self.min = min
        }

        public func duplicate() -> PromiseFormatted {
            let dict = self.dictionary!
            let copy = PromiseFormatted(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                max = try container.decode(String.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(String.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)
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
        public var deliveryPromise: ShipmentPromise?

        public var breakupValues: CartBreakup?

        public var items: [CartProductInfo]?

        public var isValid: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case deliveryPromise = "delivery_promise"

            case breakupValues = "breakup_values"

            case items

            case isValid = "is_valid"

            case message
        }

        public init(breakupValues: CartBreakup?, deliveryPromise: ShipmentPromise?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            self.deliveryPromise = deliveryPromise

            self.breakupValues = breakupValues

            self.items = items

            self.isValid = isValid

            self.message = message
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
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

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

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: MultiTenderPaymentMeta
         Used By: Cart
     */

    class MultiTenderPaymentMeta: Codable {
        public var currentStatus: String?

        public var paymentId: String?

        public var extraMeta: [String: Any]?

        public var orderId: String?

        public var paymentGateway: String?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case extraMeta = "extra_meta"

            case orderId = "order_id"

            case paymentGateway = "payment_gateway"
        }

        public init(currentStatus: String?, extraMeta: [String: Any]?, orderId: String?, paymentGateway: String?, paymentId: String?) {
            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.extraMeta = extraMeta

            self.orderId = orderId

            self.paymentGateway = paymentGateway
        }

        public func duplicate() -> MultiTenderPaymentMeta {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

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
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(currentStatus, forKey: .currentStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(paymentGateway, forKey: .paymentGateway)
        }
    }

    /*
         Model: MultiTenderPaymentMethod
         Used By: Cart
     */

    class MultiTenderPaymentMethod: Codable {
        public var meta: MultiTenderPaymentMeta?

        public var name: String?

        public var mode: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case name

            case mode

            case amount
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta?, mode: String, name: String?) {
            self.meta = meta

            self.name = name

            self.mode = mode

            self.amount = amount
        }

        public func duplicate() -> MultiTenderPaymentMethod {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)

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

            mode = try container.decode(String.self, forKey: .mode)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(amount, forKey: .amount)
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
            } catch {}

            do {
                primaryItem = try container.decode(Bool.self, forKey: .primaryItem)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)
        }
    }

    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var priceMarked: Double

        public var priceEffective: Double

        public var couponEffectiveDiscount: Double

        public var files: [OpenApiFiles]?

        public var cashbackApplied: Double

        public var loyaltyDiscount: Double?

        public var employeeDiscount: Double?

        public var meta: CartItemMeta?

        public var deliveryCharges: Double

        public var extraMeta: [String: Any]?

        public var codCharges: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var amountPaid: Double

        public var size: String

        public var quantity: Int?

        public var productId: Int

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case files

            case cashbackApplied = "cashback_applied"

            case loyaltyDiscount = "loyalty_discount"

            case employeeDiscount = "employee_discount"

            case meta

            case deliveryCharges = "delivery_charges"

            case extraMeta = "extra_meta"

            case codCharges = "cod_charges"

            case paymentMethods = "payment_methods"

            case amountPaid = "amount_paid"

            case size

            case quantity

            case productId = "product_id"

            case discount
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double?, extraMeta: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, meta: CartItemMeta?, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int?, size: String) {
            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.files = files

            self.cashbackApplied = cashbackApplied

            self.loyaltyDiscount = loyaltyDiscount

            self.employeeDiscount = employeeDiscount

            self.meta = meta

            self.deliveryCharges = deliveryCharges

            self.extraMeta = extraMeta

            self.codCharges = codCharges

            self.paymentMethods = paymentMethods

            self.amountPaid = amountPaid

            self.size = size

            self.quantity = quantity

            self.productId = productId

            self.discount = discount
        }

        public func duplicate() -> OpenApiOrderItem {
            let dict = self.dictionary!
            let copy = OpenApiOrderItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }

    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var coupon: String?

        public var employeeDiscount: [String: Any]?

        public var deliveryCharges: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var orderId: String?

        public var affiliateOrderId: String?

        public var shippingAddress: ShippingAddress?

        public var cashbackApplied: Double

        public var cartItems: [OpenApiOrderItem]

        public var currencyCode: String?

        public var files: [OpenApiFiles]?

        public var couponValue: Double

        public var loyaltyDiscount: Double?

        public var cartValue: Double

        public var billingAddress: ShippingAddress

        public var couponCode: String

        public var codCharges: Double

        public var paymentMode: String?

        public enum CodingKeys: String, CodingKey {
            case coupon

            case employeeDiscount = "employee_discount"

            case deliveryCharges = "delivery_charges"

            case paymentMethods = "payment_methods"

            case orderId = "order_id"

            case affiliateOrderId = "affiliate_order_id"

            case shippingAddress = "shipping_address"

            case cashbackApplied = "cashback_applied"

            case cartItems = "cart_items"

            case currencyCode = "currency_code"

            case files

            case couponValue = "coupon_value"

            case loyaltyDiscount = "loyalty_discount"

            case cartValue = "cart_value"

            case billingAddress = "billing_address"

            case couponCode = "coupon_code"

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"
        }

        public init(affiliateOrderId: String?, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String?, couponCode: String, couponValue: Double, currencyCode: String?, deliveryCharges: Double, employeeDiscount: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, orderId: String?, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String?, shippingAddress: ShippingAddress?) {
            self.coupon = coupon

            self.employeeDiscount = employeeDiscount

            self.deliveryCharges = deliveryCharges

            self.paymentMethods = paymentMethods

            self.orderId = orderId

            self.affiliateOrderId = affiliateOrderId

            self.shippingAddress = shippingAddress

            self.cashbackApplied = cashbackApplied

            self.cartItems = cartItems

            self.currencyCode = currencyCode

            self.files = files

            self.couponValue = couponValue

            self.loyaltyDiscount = loyaltyDiscount

            self.cartValue = cartValue

            self.billingAddress = billingAddress

            self.couponCode = couponCode

            self.codCharges = codCharges

            self.paymentMode = paymentMode
        }

        public func duplicate() -> OpenApiPlatformCheckoutReq {
            let dict = self.dictionary!
            let copy = OpenApiPlatformCheckoutReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }

    /*
         Model: OpenApiCheckoutResponse
         Used By: Cart
     */

    class OpenApiCheckoutResponse: Codable {
        public var orderId: String

        public var success: Bool?

        public var orderRefId: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case success

            case orderRefId = "order_ref_id"

            case message
        }

        public init(message: String?, orderId: String, orderRefId: String?, success: Bool?) {
            self.orderId = orderId

            self.success = success

            self.orderRefId = orderRefId

            self.message = message
        }

        public func duplicate() -> OpenApiCheckoutResponse {
            let dict = self.dictionary!
            let copy = OpenApiCheckoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderRefId = try container.decode(String.self, forKey: .orderRefId)

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

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderRefId, forKey: .orderRefId)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
