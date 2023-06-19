

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var allowedRefund: Bool?

        public var articleIds: [Article]

        public var userId: String?

        public var type: String

        public var applyExpiry: String?

        public var value: Double?

        public var userType: String

        public var cartId: String

        public var articleLevelDistribution: Bool

        public var message: String

        public var meta: [String: Any]?

        public var collection: Collecttion

        public enum CodingKeys: String, CodingKey {
            case allowedRefund = "allowed_refund"

            case articleIds = "article_ids"

            case userId = "user_id"

            case type

            case applyExpiry = "apply_expiry"

            case value

            case userType = "user_type"

            case cartId = "cart_id"

            case articleLevelDistribution = "article_level_distribution"

            case message

            case meta

            case collection
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.allowedRefund = allowedRefund

            self.articleIds = articleIds

            self.userId = userId

            self.type = type

            self.applyExpiry = applyExpiry

            self.value = value

            self.userType = userType

            self.cartId = cartId

            self.articleLevelDistribution = articleLevelDistribution

            self.message = message

            self.meta = meta

            self.collection = collection
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

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

            userType = try container.decode(String.self, forKey: .userType)

            cartId = try container.decode(String.self, forKey: .cartId)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            message = try container.decode(String.self, forKey: .message)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collection = try container.decode(Collecttion.self, forKey: .collection)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(collection, forKey: .collection)
        }
    }
}
