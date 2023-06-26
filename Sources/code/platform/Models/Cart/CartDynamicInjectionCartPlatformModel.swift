

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var collection: Collecttion

        public var allowedRefund: Bool?

        public var applyExpiry: String

        public var cartValue: Double

        public var type: String

        public var userType: String

        public var value: Double

        public var meta: [String: Any]?

        public var articleLevelDistribution: Bool

        public var message: String

        public var userId: String?

        public var articleIds: [Article]

        public var cartId: String

        public var injectionId: String?

        public enum CodingKeys: String, CodingKey {
            case collection

            case allowedRefund = "allowed_refund"

            case applyExpiry = "apply_expiry"

            case cartValue = "cart_value"

            case type

            case userType = "user_type"

            case value

            case meta

            case articleLevelDistribution = "article_level_distribution"

            case message

            case userId = "user_id"

            case articleIds = "article_ids"

            case cartId = "cart_id"

            case injectionId = "injection_id"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, injectionId: String? = nil, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double) {
            self.collection = collection

            self.allowedRefund = allowedRefund

            self.applyExpiry = applyExpiry

            self.cartValue = cartValue

            self.type = type

            self.userType = userType

            self.value = value

            self.meta = meta

            self.articleLevelDistribution = articleLevelDistribution

            self.message = message

            self.userId = userId

            self.articleIds = articleIds

            self.cartId = cartId

            self.injectionId = injectionId
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

            applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            type = try container.decode(String.self, forKey: .type)

            userType = try container.decode(String.self, forKey: .userType)

            value = try container.decode(Double.self, forKey: .value)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            message = try container.decode(String.self, forKey: .message)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)
        }
    }
}
