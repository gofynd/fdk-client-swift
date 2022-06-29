

import Foundation
public extension PlatformClient {
    /*
         Model: Restrictions
         Used By: Cart
     */

    class Restrictions: Codable {
        public var orderingStores: [Int]?

        public var payments: [String: PaymentModes]?

        public var priceRange: PriceRange?

        public var platforms: [String]?

        public var couponAllowed: Bool?

        public var bulkBundle: BulkBundleRestriction?

        public var postOrder: PostOrder?

        public var uses: UsesRestriction?

        public var userGroups: [Int]?

        public enum CodingKeys: String, CodingKey {
            case orderingStores = "ordering_stores"

            case payments

            case priceRange = "price_range"

            case platforms

            case couponAllowed = "coupon_allowed"

            case bulkBundle = "bulk_bundle"

            case postOrder = "post_order"

            case uses

            case userGroups = "user_groups"
        }

        public init(bulkBundle: BulkBundleRestriction? = nil, couponAllowed: Bool? = nil, orderingStores: [Int]? = nil, payments: [String: PaymentModes]? = nil, platforms: [String]? = nil, postOrder: PostOrder? = nil, priceRange: PriceRange? = nil, userGroups: [Int]? = nil, uses: UsesRestriction? = nil) {
            self.orderingStores = orderingStores

            self.payments = payments

            self.priceRange = priceRange

            self.platforms = platforms

            self.couponAllowed = couponAllowed

            self.bulkBundle = bulkBundle

            self.postOrder = postOrder

            self.uses = uses

            self.userGroups = userGroups
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
                payments = try container.decode([String: PaymentModes].self, forKey: .payments)

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

            do {
                couponAllowed = try container.decode(Bool.self, forKey: .couponAllowed)

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
                uses = try container.decode(UsesRestriction.self, forKey: .uses)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(priceRange, forKey: .priceRange)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)

            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
        }
    }
}
