

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var meta: [String: Any]?

        public var applyExpiry: String

        public var articleLevelDistribution: Bool

        public var cartId: String

        public var articleIds: [Article]

        public var type: String

        public var value: Double

        public var userId: String?

        public var injectionId: String?

        public var allowedRefund: Bool?

        public var message: String

        public var isAuthenticated: Bool

        public var collection: Collecttion

        public var cartValue: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case applyExpiry = "apply_expiry"

            case articleLevelDistribution = "article_level_distribution"

            case cartId = "cart_id"

            case articleIds = "article_ids"

            case type

            case value

            case userId = "user_id"

            case injectionId = "injection_id"

            case allowedRefund = "allowed_refund"

            case message

            case isAuthenticated = "is_authenticated"

            case collection

            case cartValue = "cart_value"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, injectionId: String? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.meta = meta

            self.applyExpiry = applyExpiry

            self.articleLevelDistribution = articleLevelDistribution

            self.cartId = cartId

            self.articleIds = articleIds

            self.type = type

            self.value = value

            self.userId = userId

            self.injectionId = injectionId

            self.allowedRefund = allowedRefund

            self.message = message

            self.isAuthenticated = isAuthenticated

            self.collection = collection

            self.cartValue = cartValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            cartId = try container.decode(String.self, forKey: .cartId)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(Double.self, forKey: .value)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

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

            message = try container.decode(String.self, forKey: .message)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            cartValue = try container.decode(Double.self, forKey: .cartValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
        }
    }
}
