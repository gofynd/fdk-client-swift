

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var value: Double

        public var meta: [String: Any]?

        public var isAuthenticated: Bool

        public var userId: String?

        public var type: String

        public var allowedRefund: Bool?

        public var message: String

        public var cartId: String

        public var applyExpiry: String?

        public var articleLevelDistribution: Bool

        public var articleIds: [Article]

        public var collection: Collecttion

        public var cartValue: Double

        public enum CodingKeys: String, CodingKey {
            case value

            case meta

            case isAuthenticated = "is_authenticated"

            case userId = "user_id"

            case type

            case allowedRefund = "allowed_refund"

            case message

            case cartId = "cart_id"

            case applyExpiry = "apply_expiry"

            case articleLevelDistribution = "article_level_distribution"

            case articleIds = "article_ids"

            case collection

            case cartValue = "cart_value"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.value = value

            self.meta = meta

            self.isAuthenticated = isAuthenticated

            self.userId = userId

            self.type = type

            self.allowedRefund = allowedRefund

            self.message = message

            self.cartId = cartId

            self.applyExpiry = applyExpiry

            self.articleLevelDistribution = articleLevelDistribution

            self.articleIds = articleIds

            self.collection = collection

            self.cartValue = cartValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(Double.self, forKey: .value)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            cartValue = try container.decode(Double.self, forKey: .cartValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
        }
    }
}
