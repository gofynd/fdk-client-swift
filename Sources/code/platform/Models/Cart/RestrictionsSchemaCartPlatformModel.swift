

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: RestrictionsSchema
         Used By: Cart
     */

    class RestrictionsSchema: Codable {
        public var priceRange: PriceRangeSchema?

        public var postOrder: PostOrderSchema?

        public var platforms: [String]?

        public var uses: UsesRestrictionSchema?

        public var payments: [String: PaymentModesSchema]?

        public var couponAllowed: Bool?

        public var userType: String?

        public var bulkBundle: BulkBundleRestriction?

        public var userGroups: [Int]?

        public var orderingStores: [Int]?

        public enum CodingKeys: String, CodingKey {
            case priceRange = "price_range"

            case postOrder = "post_order"

            case platforms

            case uses

            case payments

            case couponAllowed = "coupon_allowed"

            case userType = "user_type"

            case bulkBundle = "bulk_bundle"

            case userGroups = "user_groups"

            case orderingStores = "ordering_stores"
        }

        public init(bulkBundle: BulkBundleRestriction? = nil, couponAllowed: Bool? = nil, orderingStores: [Int]? = nil, payments: [String: PaymentModesSchema]? = nil, platforms: [String]? = nil, postOrder: PostOrderSchema? = nil, priceRange: PriceRangeSchema? = nil, userGroups: [Int]? = nil, userType: String? = nil, uses: UsesRestrictionSchema? = nil) {
            self.priceRange = priceRange

            self.postOrder = postOrder

            self.platforms = platforms

            self.uses = uses

            self.payments = payments

            self.couponAllowed = couponAllowed

            self.userType = userType

            self.bulkBundle = bulkBundle

            self.userGroups = userGroups

            self.orderingStores = orderingStores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priceRange = try container.decode(PriceRangeSchema.self, forKey: .priceRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrder = try container.decode(PostOrderSchema.self, forKey: .postOrder)

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
                uses = try container.decode(UsesRestrictionSchema.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([String: PaymentModesSchema].self, forKey: .payments)

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
                userType = try container.decode(String.self, forKey: .userType)

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
                userGroups = try container.decode([Int].self, forKey: .userGroups)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceRange, forKey: .priceRange)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)
        }
    }
}
