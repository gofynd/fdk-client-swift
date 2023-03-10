

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: Restrictions
         Used By: Cart
     */

    class Restrictions: Codable {
        public var userGroups: [Int]?

        public var platforms: [String]?

        public var userType: String?

        public var payments: [String: PaymentModes]?

        public var bulkBundle: BulkBundleRestriction?

        public var uses: UsesRestriction?

        public var orderingStores: [Int]?

        public var couponAllowed: Bool?

        public var postOrder: PostOrder?

        public var priceRange: PriceRange?

        public enum CodingKeys: String, CodingKey {
            case userGroups = "user_groups"

            case platforms

            case userType = "user_type"

            case payments

            case bulkBundle = "bulk_bundle"

            case uses

            case orderingStores = "ordering_stores"

            case couponAllowed = "coupon_allowed"

            case postOrder = "post_order"

            case priceRange = "price_range"
        }

        public init(bulkBundle: BulkBundleRestriction? = nil, couponAllowed: Bool? = nil, orderingStores: [Int]? = nil, payments: [String: PaymentModes]? = nil, platforms: [String]? = nil, postOrder: PostOrder? = nil, priceRange: PriceRange? = nil, userGroups: [Int]? = nil, userType: String? = nil, uses: UsesRestriction? = nil) {
            self.userGroups = userGroups

            self.platforms = platforms

            self.userType = userType

            self.payments = payments

            self.bulkBundle = bulkBundle

            self.uses = uses

            self.orderingStores = orderingStores

            self.couponAllowed = couponAllowed

            self.postOrder = postOrder

            self.priceRange = priceRange
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                userType = try container.decode(String.self, forKey: .userType)

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
                uses = try container.decode(UsesRestriction.self, forKey: .uses)

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
                couponAllowed = try container.decode(Bool.self, forKey: .couponAllowed)

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
                priceRange = try container.decode(PriceRange.self, forKey: .priceRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)

            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(priceRange, forKey: .priceRange)
        }
    }
}
