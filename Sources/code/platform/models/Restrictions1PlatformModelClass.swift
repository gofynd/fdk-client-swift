

import Foundation
public extension PlatformClient {
    /*
         Model: Restrictions1
         Used By: Cart
     */

    class Restrictions1: Codable {
        public var userRegistered: UserRegistered?

        public var userId: [String]?

        public var anonymousUsers: Bool?

        public var platforms: [String]?

        public var payments: [PromotionPaymentModes]?

        public var userGroups: [Int]?

        public var uses: UsesRestriction1

        public var postOrder: PostOrder1?

        public var orderQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case userRegistered = "user_registered"

            case userId = "user_id"

            case anonymousUsers = "anonymous_users"

            case platforms

            case payments

            case userGroups = "user_groups"

            case uses

            case postOrder = "post_order"

            case orderQuantity = "order_quantity"
        }

        public init(anonymousUsers: Bool? = nil, orderQuantity: Int? = nil, payments: [PromotionPaymentModes]? = nil, platforms: [String]? = nil, postOrder: PostOrder1? = nil, userGroups: [Int]? = nil, userId: [String]? = nil, userRegistered: UserRegistered? = nil, uses: UsesRestriction1) {
            self.userRegistered = userRegistered

            self.userId = userId

            self.anonymousUsers = anonymousUsers

            self.platforms = platforms

            self.payments = payments

            self.userGroups = userGroups

            self.uses = uses

            self.postOrder = postOrder

            self.orderQuantity = orderQuantity
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
                userId = try container.decode([String].self, forKey: .userId)

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
                platforms = try container.decode([String].self, forKey: .platforms)

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

            do {
                userGroups = try container.decode([Int].self, forKey: .userGroups)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uses = try container.decode(UsesRestriction1.self, forKey: .uses)

            do {
                postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)
        }
    }
}
