

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: RestrictionsSchema1
         Used By: Cart
     */

    class RestrictionsSchema1: Codable {
        public var platforms: [String]?

        public var payments: [PromotionPaymentModesSchema]?

        public var anonymousUsers: Bool?

        public var userRegistered: UserRegisteredSchema?

        public var uses: UsesRestrictionSchema1

        public var orderQuantity: Int?

        public var userGroups: [Int]?

        public var userId: [String]?

        public var postOrder: PostOrderSchema1?

        public enum CodingKeys: String, CodingKey {
            case platforms

            case payments

            case anonymousUsers = "anonymous_users"

            case userRegistered = "user_registered"

            case uses

            case orderQuantity = "order_quantity"

            case userGroups = "user_groups"

            case userId = "user_id"

            case postOrder = "post_order"
        }

        public init(anonymousUsers: Bool? = nil, orderQuantity: Int? = nil, payments: [PromotionPaymentModesSchema]? = nil, platforms: [String]? = nil, postOrder: PostOrderSchema1? = nil, userGroups: [Int]? = nil, userId: [String]? = nil, userRegistered: UserRegisteredSchema? = nil, uses: UsesRestrictionSchema1) {
            self.platforms = platforms

            self.payments = payments

            self.anonymousUsers = anonymousUsers

            self.userRegistered = userRegistered

            self.uses = uses

            self.orderQuantity = orderQuantity

            self.userGroups = userGroups

            self.userId = userId

            self.postOrder = postOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                platforms = try container.decode([String].self, forKey: .platforms)

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

            uses = try container.decode(UsesRestrictionSchema1.self, forKey: .uses)

            do {
                orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)

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

            do {
                postOrder = try container.decode(PostOrderSchema1.self, forKey: .postOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
        }
    }
}
