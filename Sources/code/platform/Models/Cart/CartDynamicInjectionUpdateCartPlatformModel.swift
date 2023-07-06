

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var applyExpiry: String?

        public var value: Double

        public var userId: String?

        public var collection: Collecttion

        public var meta: [String: Any]?

        public var cartId: String

        public var cartValue: Double

        public var allowedRefund: Bool?

        public var type: String

        public var isAuthenticated: Bool

        public var message: String

        public var articleIds: [Article]

        public var articleLevelDistribution: Bool

        public enum CodingKeys: String, CodingKey {
            case applyExpiry = "apply_expiry"

            case value

            case userId = "user_id"

            case collection

            case meta

            case cartId = "cart_id"

            case cartValue = "cart_value"

            case allowedRefund = "allowed_refund"

            case type

            case isAuthenticated = "is_authenticated"

            case message

            case articleIds = "article_ids"

            case articleLevelDistribution = "article_level_distribution"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.applyExpiry = applyExpiry

            self.value = value

            self.userId = userId

            self.collection = collection

            self.meta = meta

            self.cartId = cartId

            self.cartValue = cartValue

            self.allowedRefund = allowedRefund

            self.type = type

            self.isAuthenticated = isAuthenticated

            self.message = message

            self.articleIds = articleIds

            self.articleLevelDistribution = articleLevelDistribution
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            message = try container.decode(String.self, forKey: .message)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
        }
    }
}
