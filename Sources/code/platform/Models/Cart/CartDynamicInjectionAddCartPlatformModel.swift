

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var meta: [String: Any]?

        public var isAuthenticated: Bool

        public var userId: String?

        public var message: String

        public var collection: Collecttion

        public var articleIds: [Article]

        public var articleLevelDistribution: Bool

        public var type: String

        public var cartId: String

        public var cartValue: Double

        public var applyExpiry: String?

        public var allowedRefund: Bool?

        public var value: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case isAuthenticated = "is_authenticated"

            case userId = "user_id"

            case message

            case collection

            case articleIds = "article_ids"

            case articleLevelDistribution = "article_level_distribution"

            case type

            case cartId = "cart_id"

            case cartValue = "cart_value"

            case applyExpiry = "apply_expiry"

            case allowedRefund = "allowed_refund"

            case value
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.meta = meta

            self.isAuthenticated = isAuthenticated

            self.userId = userId

            self.message = message

            self.collection = collection

            self.articleIds = articleIds

            self.articleLevelDistribution = articleLevelDistribution

            self.type = type

            self.cartId = cartId

            self.cartValue = cartValue

            self.applyExpiry = applyExpiry

            self.allowedRefund = allowedRefund

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            type = try container.decode(String.self, forKey: .type)

            cartId = try container.decode(String.self, forKey: .cartId)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

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

            value = try container.decode(Double.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
