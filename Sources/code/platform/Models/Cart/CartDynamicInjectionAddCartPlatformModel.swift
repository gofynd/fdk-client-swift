

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var articleLevelDistribution: Bool

        public var cartValue: Double

        public var userId: String?

        public var articleIds: [Article]

        public var value: Double

        public var meta: [String: Any]?

        public var collection: Collecttion

        public var allowedRefund: Bool?

        public var isAuthenticated: Bool

        public var type: String

        public var cartId: String

        public var message: String

        public var applyExpiry: String?

        public enum CodingKeys: String, CodingKey {
            case articleLevelDistribution = "article_level_distribution"

            case cartValue = "cart_value"

            case userId = "user_id"

            case articleIds = "article_ids"

            case value

            case meta

            case collection

            case allowedRefund = "allowed_refund"

            case isAuthenticated = "is_authenticated"

            case type

            case cartId = "cart_id"

            case message

            case applyExpiry = "apply_expiry"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.articleLevelDistribution = articleLevelDistribution

            self.cartValue = cartValue

            self.userId = userId

            self.articleIds = articleIds

            self.value = value

            self.meta = meta

            self.collection = collection

            self.allowedRefund = allowedRefund

            self.isAuthenticated = isAuthenticated

            self.type = type

            self.cartId = cartId

            self.message = message

            self.applyExpiry = applyExpiry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            value = try container.decode(Double.self, forKey: .value)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            type = try container.decode(String.self, forKey: .type)

            cartId = try container.decode(String.self, forKey: .cartId)

            message = try container.decode(String.self, forKey: .message)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)
        }
    }
}
