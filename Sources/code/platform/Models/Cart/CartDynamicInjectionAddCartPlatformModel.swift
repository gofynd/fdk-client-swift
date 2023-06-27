

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var message: String

        public var allowedRefund: Bool?

        public var meta: [String: Any]?

        public var collection: Collecttion

        public var isAuthenticated: Bool

        public var userId: String?

        public var value: Double

        public var type: String

        public var applyExpiry: String?

        public var cartValue: Double

        public var cartId: String

        public var articleIds: [Article]

        public var articleLevelDistribution: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case allowedRefund = "allowed_refund"

            case meta

            case collection

            case isAuthenticated = "is_authenticated"

            case userId = "user_id"

            case value

            case type

            case applyExpiry = "apply_expiry"

            case cartValue = "cart_value"

            case cartId = "cart_id"

            case articleIds = "article_ids"

            case articleLevelDistribution = "article_level_distribution"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, value: Double) {
            self.message = message

            self.allowedRefund = allowedRefund

            self.meta = meta

            self.collection = collection

            self.isAuthenticated = isAuthenticated

            self.userId = userId

            self.value = value

            self.type = type

            self.applyExpiry = applyExpiry

            self.cartValue = cartValue

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

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            cartId = try container.decode(String.self, forKey: .cartId)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
        }
    }
}