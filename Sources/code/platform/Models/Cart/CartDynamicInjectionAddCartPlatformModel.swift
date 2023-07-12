

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var cartValue: Double

        public var articleIds: [Article]

        public var meta: [String: Any]?

        public var userId: String?

        public var value: Double

        public var type: String

        public var applyExpiry: String?

        public var isAuthenticated: Bool

        public var articleLevelDistribution: Bool

        public var cartId: String

        public var message: String

        public var collection: Collecttion

        public var allowedRefund: Bool?

        public enum CodingKeys: String, CodingKey {
            case cartValue = "cart_value"

            case articleIds = "article_ids"

            case meta

            case userId = "user_id"

            case value

            case type

            case applyExpiry = "apply_expiry"

            case isAuthenticated = "is_authenticated"

            case articleLevelDistribution = "article_level_distribution"

            case cartId = "cart_id"

            case message

            case collection

            case allowedRefund = "allowed_refund"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.cartValue = cartValue

            self.articleIds = articleIds

            self.meta = meta

            self.userId = userId

            self.value = value

            self.type = type

            self.applyExpiry = applyExpiry

            self.isAuthenticated = isAuthenticated

            self.articleLevelDistribution = articleLevelDistribution

            self.cartId = cartId

            self.message = message

            self.collection = collection

            self.allowedRefund = allowedRefund
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            cartId = try container.decode(String.self, forKey: .cartId)

            message = try container.decode(String.self, forKey: .message)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
        }
    }
}
