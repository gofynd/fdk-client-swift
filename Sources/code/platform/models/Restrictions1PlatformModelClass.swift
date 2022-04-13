import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Restrictions1
         Used By: Cart
     */

    class Restrictions1: Codable {
        public var platforms: [String]?

        public var anonymousUsers: Bool?

        public var userId: [String]?

        public var userGroups: [Int]?

        public var uses: UsesRestriction1

        public var postOrder: PostOrder1?

        public var userRegistered: UserRegistered?

        public var orderQuantity: Int?

        public var payments: [PromotionPaymentModes]?

        public enum CodingKeys: String, CodingKey {
            case platforms

            case anonymousUsers = "anonymous_users"

            case userId = "user_id"

            case userGroups = "user_groups"

            case uses

            case postOrder = "post_order"

            case userRegistered = "user_registered"

            case orderQuantity = "order_quantity"

            case payments
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            self.platforms = platforms

            self.anonymousUsers = anonymousUsers

            self.userId = userId

            self.userGroups = userGroups

            self.uses = uses

            self.postOrder = postOrder

            self.userRegistered = userRegistered

            self.orderQuantity = orderQuantity

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
                userId = try container.decode([String].self, forKey: .userId)

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
                payments = try container.decode([PromotionPaymentModes].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(payments, forKey: .payments)
        }
    }
}
