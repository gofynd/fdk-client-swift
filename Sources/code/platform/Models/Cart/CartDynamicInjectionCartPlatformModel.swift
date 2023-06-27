

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var allowedRefund: Bool?

        public var cartValue: Double

        public var value: Double

        public var type: String

        public var userId: String?

        public var articleIds: [Article]

        public var cartId: String

        public var collection: Collecttion

        public var articleLevelDistribution: Bool

        public var applyExpiry: String

        public var isAuthenticated: Bool

        public var meta: [String: Any]?

        public var message: String

        public var injectionId: String?

        public enum CodingKeys: String, CodingKey {
            case allowedRefund = "allowed_refund"

            case cartValue = "cart_value"

            case value

            case type

            case userId = "user_id"

            case articleIds = "article_ids"

            case cartId = "cart_id"

            case collection

            case articleLevelDistribution = "article_level_distribution"

            case applyExpiry = "apply_expiry"

            case isAuthenticated = "is_authenticated"

            case meta

            case message

            case injectionId = "injection_id"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, injectionId: String? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.allowedRefund = allowedRefund

            self.cartValue = cartValue

            self.value = value

            self.type = type

            self.userId = userId

            self.articleIds = articleIds

            self.cartId = cartId

            self.collection = collection

            self.articleLevelDistribution = articleLevelDistribution

            self.applyExpiry = applyExpiry

            self.isAuthenticated = isAuthenticated

            self.meta = meta

            self.message = message

            self.injectionId = injectionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            value = try container.decode(Double.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            cartId = try container.decode(String.self, forKey: .cartId)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)
        }
    }
}
