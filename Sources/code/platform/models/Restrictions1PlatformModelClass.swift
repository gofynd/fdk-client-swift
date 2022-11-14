

import Foundation
public extension PlatformClient {
    /*
         Model: Restrictions1
         Used By: Cart
     */

    class Restrictions1: Codable {
        public var anonymousUsers: Bool?

        public var userRegistered: UserRegistered?

        public var payments: [PromotionPaymentModes]?

        public var userId: [String]?

        public var postOrder: PostOrder1?

        public var platforms: [String]?

        public var userGroups: [Int]?

        public var orderQuantity: Int?

        public var uses: UsesRestriction1

        public enum CodingKeys: String, CodingKey {
            case anonymousUsers = "anonymous_users"

            case userRegistered = "user_registered"

            case payments

            case userId = "user_id"

            case postOrder = "post_order"

            case platforms

            case userGroups = "user_groups"

            case orderQuantity = "order_quantity"

            case uses
        }

        public init(anonymousUsers: Bool? = nil, orderQuantity: Int? = nil, payments: [PromotionPaymentModes]? = nil, platforms: [String]? = nil, postOrder: PostOrder1? = nil, userGroups: [Int]? = nil, userId: [String]? = nil, userRegistered: UserRegistered? = nil, uses: UsesRestriction1) {
            self.anonymousUsers = anonymousUsers

            self.userRegistered = userRegistered

            self.payments = payments

            self.userId = userId

            self.postOrder = postOrder

            self.platforms = platforms

            self.userGroups = userGroups

            self.orderQuantity = orderQuantity

            self.uses = uses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userRegistered = try container.decode(UserRegistered.self, forKey: .userRegistered)

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
                platforms = try container.decode([String].self, forKey: .platforms)

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
                orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uses = try container.decode(UsesRestriction1.self, forKey: .uses)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(uses, forKey: .uses)
        }
    }
}
