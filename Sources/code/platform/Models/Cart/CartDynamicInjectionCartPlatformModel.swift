

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var isAuthenticated: Bool

        public var applyExpiry: String

        public var userId: String?

        public var meta: [String: Any]?

        public var value: Double

        public var collection: Collecttion

        public var articleLevelDistribution: Bool

        public var articleIds: [Article]

        public var cartId: String

        public var type: String

        public var allowedRefund: Bool?

        public var message: String

        public var injectionId: String?

        public var cartValue: Double

        public enum CodingKeys: String, CodingKey {
            case isAuthenticated = "is_authenticated"

            case applyExpiry = "apply_expiry"

            case userId = "user_id"

            case meta

            case value

            case collection

            case articleLevelDistribution = "article_level_distribution"

            case articleIds = "article_ids"

            case cartId = "cart_id"

            case type

            case allowedRefund = "allowed_refund"

            case message

            case injectionId = "injection_id"

            case cartValue = "cart_value"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, injectionId: String? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.isAuthenticated = isAuthenticated

            self.applyExpiry = applyExpiry

            self.userId = userId

            self.meta = meta

            self.value = value

            self.collection = collection

            self.articleLevelDistribution = articleLevelDistribution

            self.articleIds = articleIds

            self.cartId = cartId

            self.type = type

            self.allowedRefund = allowedRefund

            self.message = message

            self.injectionId = injectionId

            self.cartValue = cartValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            cartId = try container.decode(String.self, forKey: .cartId)

            type = try container.decode(String.self, forKey: .type)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
        }
    }
}
