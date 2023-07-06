

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var collection: Collecttion

        public var allowedRefund: Bool?

        public var value: Double

        public var isAuthenticated: Bool

        public var cartId: String

        public var type: String

        public var message: String

        public var articleIds: [Article]

        public var applyExpiry: String?

        public var articleLevelDistribution: Bool

        public var meta: [String: Any]?

        public var cartValue: Double

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case collection

            case allowedRefund = "allowed_refund"

            case value

            case isAuthenticated = "is_authenticated"

            case cartId = "cart_id"

            case type

            case message

            case articleIds = "article_ids"

            case applyExpiry = "apply_expiry"

            case articleLevelDistribution = "article_level_distribution"

            case meta

            case cartValue = "cart_value"

            case userId = "user_id"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.collection = collection

            self.allowedRefund = allowedRefund

            self.value = value

            self.isAuthenticated = isAuthenticated

            self.cartId = cartId

            self.type = type

            self.message = message

            self.articleIds = articleIds

            self.applyExpiry = applyExpiry

            self.articleLevelDistribution = articleLevelDistribution

            self.meta = meta

            self.cartValue = cartValue

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            cartId = try container.decode(String.self, forKey: .cartId)

            type = try container.decode(String.self, forKey: .type)

            message = try container.decode(String.self, forKey: .message)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
