

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: RestrictionsSchema1
         Used By: Cart
     */

    class RestrictionsSchema1: Codable {
        public var uses: UsesRestrictionSchema1

        public var userGroups: [Int]?

        public var payments: [PromotionPaymentModesSchema]?

        public var postOrder: PostOrderSchema1?

        public var orderQuantity: Int?

        public var userId: [String]?

        public var platforms: [String]?

        public var anonymousUsers: Bool?

        public var userRegistered: UserRegisteredSchema?

        public enum CodingKeys: String, CodingKey {
            case uses

            case userGroups = "user_groups"

            case payments

            case postOrder = "post_order"

            case orderQuantity = "order_quantity"

            case userId = "user_id"

            case platforms

            case anonymousUsers = "anonymous_users"

            case userRegistered = "user_registered"
        }

        public init(anonymousUsers: Bool? = nil, orderQuantity: Int? = nil, payments: [PromotionPaymentModesSchema]? = nil, platforms: [String]? = nil, postOrder: PostOrderSchema1? = nil, userGroups: [Int]? = nil, userId: [String]? = nil, userRegistered: UserRegisteredSchema? = nil, uses: UsesRestrictionSchema1) {
            self.uses = uses

            self.userGroups = userGroups

            self.payments = payments

            self.postOrder = postOrder

            self.orderQuantity = orderQuantity

            self.userId = userId

            self.platforms = platforms

            self.anonymousUsers = anonymousUsers

            self.userRegistered = userRegistered
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uses = try container.decode(UsesRestrictionSchema1.self, forKey: .uses)

            do {
                userGroups = try container.decode([Int].self, forKey: .userGroups)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([PromotionPaymentModesSchema].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrder = try container.decode(PostOrderSchema1.self, forKey: .postOrder)

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
                userId = try container.decode([String].self, forKey: .userId)

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
                anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userRegistered = try container.decode(UserRegisteredSchema.self, forKey: .userRegistered)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encode(userRegistered, forKey: .userRegistered)
        }
    }
}
