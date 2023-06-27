

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var userType: String

        public var collection: Collecttion

        public var cartValue: Double

        public var userId: String?

        public var value: Double

        public var message: String

        public var cartId: String

        public var meta: [String: Any]?

        public var articleLevelDistribution: Bool

        public var articleIds: [Article]

        public var type: String

        public var injectionId: String?

        public var applyExpiry: String

        public var allowedRefund: Bool?

        public enum CodingKeys: String, CodingKey {
            case userType = "user_type"

            case collection

            case cartValue = "cart_value"

            case userId = "user_id"

            case value

            case message

            case cartId = "cart_id"

            case meta

            case articleLevelDistribution = "article_level_distribution"

            case articleIds = "article_ids"

            case type

            case injectionId = "injection_id"

            case applyExpiry = "apply_expiry"

            case allowedRefund = "allowed_refund"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, injectionId: String? = nil, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double) {
            self.userType = userType

            self.collection = collection

            self.cartValue = cartValue

            self.userId = userId

            self.value = value

            self.message = message

            self.cartId = cartId

            self.meta = meta

            self.articleLevelDistribution = articleLevelDistribution

            self.articleIds = articleIds

            self.type = type

            self.injectionId = injectionId

            self.applyExpiry = applyExpiry

            self.allowedRefund = allowedRefund
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userType = try container.decode(String.self, forKey: .userType)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            message = try container.decode(String.self, forKey: .message)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            type = try container.decode(String.self, forKey: .type)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
        }
    }
}
