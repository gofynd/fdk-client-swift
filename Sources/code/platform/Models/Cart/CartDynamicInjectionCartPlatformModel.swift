

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var message: String

        public var allowedRefund: Bool?

        public var meta: [String: Any]?

        public var cartValue: Double

        public var collection: Collecttion

        public var isAuthenticated: Bool

        public var userId: String?

        public var value: Double

        public var type: String

        public var applyExpiry: String

        public var injectionId: String?

        public var cartId: String

        public var articleIds: [Article]

        public var articleLevelDistribution: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case allowedRefund = "allowed_refund"

            case meta

            case cartValue = "cart_value"

            case collection

            case isAuthenticated = "is_authenticated"

            case userId = "user_id"

            case value

            case type

            case applyExpiry = "apply_expiry"

            case injectionId = "injection_id"

            case cartId = "cart_id"

            case articleIds = "article_ids"

            case articleLevelDistribution = "article_level_distribution"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, injectionId: String? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.message = message

            self.allowedRefund = allowedRefund

            self.meta = meta

            self.cartValue = cartValue

            self.collection = collection

            self.isAuthenticated = isAuthenticated

            self.userId = userId

            self.value = value

            self.type = type

            self.applyExpiry = applyExpiry

            self.injectionId = injectionId

            self.cartId = cartId

            self.articleIds = articleIds

            self.articleLevelDistribution = articleLevelDistribution
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

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

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
        }
    }
}
