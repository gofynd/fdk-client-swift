

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var applyExpiry: String?

        public var articleIds: [Article]

        public var collection: Collecttion

        public var isAuthenticated: Bool

        public var cartValue: Double

        public var meta: [String: Any]?

        public var allowedRefund: Bool?

        public var cartId: String

        public var type: String

        public var userId: String?

        public var value: Double

        public var articleLevelDistribution: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case applyExpiry = "apply_expiry"

            case articleIds = "article_ids"

            case collection

            case isAuthenticated = "is_authenticated"

            case cartValue = "cart_value"

            case meta

            case allowedRefund = "allowed_refund"

            case cartId = "cart_id"

            case type

            case userId = "user_id"

            case value

            case articleLevelDistribution = "article_level_distribution"

            case message
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.applyExpiry = applyExpiry

            self.articleIds = articleIds

            self.collection = collection

            self.isAuthenticated = isAuthenticated

            self.cartValue = cartValue

            self.meta = meta

            self.allowedRefund = allowedRefund

            self.cartId = cartId

            self.type = type

            self.userId = userId

            self.value = value

            self.articleLevelDistribution = articleLevelDistribution

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            cartId = try container.decode(String.self, forKey: .cartId)

            type = try container.decode(String.self, forKey: .type)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
