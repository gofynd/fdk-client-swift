

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var message: String

        public var value: Double

        public var cartId: String

        public var userId: String?

        public var articleLevelDistribution: Bool

        public var allowedRefund: Bool?

        public var articleIds: [Article]

        public var collection: Collecttion

        public var applyExpiry: String?

        public var type: String

        public var cartValue: Double

        public var isAuthenticated: Bool

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case value

            case cartId = "cart_id"

            case userId = "user_id"

            case articleLevelDistribution = "article_level_distribution"

            case allowedRefund = "allowed_refund"

            case articleIds = "article_ids"

            case collection

            case applyExpiry = "apply_expiry"

            case type

            case cartValue = "cart_value"

            case isAuthenticated = "is_authenticated"

            case meta
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.message = message

            self.value = value

            self.cartId = cartId

            self.userId = userId

            self.articleLevelDistribution = articleLevelDistribution

            self.allowedRefund = allowedRefund

            self.articleIds = articleIds

            self.collection = collection

            self.applyExpiry = applyExpiry

            self.type = type

            self.cartValue = cartValue

            self.isAuthenticated = isAuthenticated

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            value = try container.decode(Double.self, forKey: .value)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
