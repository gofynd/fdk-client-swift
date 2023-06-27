

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var userType: String

        public var cartValue: Double

        public var userId: String?

        public var value: Double

        public var cartId: String

        public var message: String

        public var meta: [String: Any]?

        public var articleLevelDistribution: Bool

        public var articleIds: [Article]

        public var type: String

        public var collection: Collecttion

        public var applyExpiry: String?

        public var allowedRefund: Bool?

        public enum CodingKeys: String, CodingKey {
            case userType = "user_type"

            case cartValue = "cart_value"

            case userId = "user_id"

            case value

            case cartId = "cart_id"

            case message

            case meta

            case articleLevelDistribution = "article_level_distribution"

            case articleIds = "article_ids"

            case type

            case collection

            case applyExpiry = "apply_expiry"

            case allowedRefund = "allowed_refund"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double) {
            self.userType = userType

            self.cartValue = cartValue

            self.userId = userId

            self.value = value

            self.cartId = cartId

            self.message = message

            self.meta = meta

            self.articleLevelDistribution = articleLevelDistribution

            self.articleIds = articleIds

            self.type = type

            self.collection = collection

            self.applyExpiry = applyExpiry

            self.allowedRefund = allowedRefund
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userType = try container.decode(String.self, forKey: .userType)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            cartId = try container.decode(String.self, forKey: .cartId)

            message = try container.decode(String.self, forKey: .message)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            type = try container.decode(String.self, forKey: .type)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
        }
    }
}
