

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var isAuthenticated: Bool

        public var value: Double

        public var meta: [String: Any]?

        public var userId: String?

        public var type: String

        public var collection: Collecttion

        public var message: String

        public var articleIds: [Article]

        public var cartValue: Double

        public var applyExpiry: String?

        public var cartId: String

        public var allowedRefund: Bool?

        public var articleLevelDistribution: Bool

        public enum CodingKeys: String, CodingKey {
            case isAuthenticated = "is_authenticated"

            case value

            case meta

            case userId = "user_id"

            case type

            case collection

            case message

            case articleIds = "article_ids"

            case cartValue = "cart_value"

            case applyExpiry = "apply_expiry"

            case cartId = "cart_id"

            case allowedRefund = "allowed_refund"

            case articleLevelDistribution = "article_level_distribution"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.isAuthenticated = isAuthenticated

            self.value = value

            self.meta = meta

            self.userId = userId

            self.type = type

            self.collection = collection

            self.message = message

            self.articleIds = articleIds

            self.cartValue = cartValue

            self.applyExpiry = applyExpiry

            self.cartId = cartId

            self.allowedRefund = allowedRefund

            self.articleLevelDistribution = articleLevelDistribution
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            value = try container.decode(Double.self, forKey: .value)

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

            type = try container.decode(String.self, forKey: .type)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            message = try container.decode(String.self, forKey: .message)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
        }
    }
}
