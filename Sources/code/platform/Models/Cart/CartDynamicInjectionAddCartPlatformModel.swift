

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var applyExpiry: String?

        public var userId: String?

        public var value: Double

        public var collection: Collecttion

        public var articleIds: [Article]

        public var allowedRefund: Bool?

        public var type: String

        public var articleLevelDistribution: Bool

        public var cartValue: Double

        public var message: String

        public var cartId: String

        public var userType: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case applyExpiry = "apply_expiry"

            case userId = "user_id"

            case value

            case collection

            case articleIds = "article_ids"

            case allowedRefund = "allowed_refund"

            case type

            case articleLevelDistribution = "article_level_distribution"

            case cartValue = "cart_value"

            case message

            case cartId = "cart_id"

            case userType = "user_type"

            case meta
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double) {
            self.applyExpiry = applyExpiry

            self.userId = userId

            self.value = value

            self.collection = collection

            self.articleIds = articleIds

            self.allowedRefund = allowedRefund

            self.type = type

            self.articleLevelDistribution = articleLevelDistribution

            self.cartValue = cartValue

            self.message = message

            self.cartId = cartId

            self.userType = userType

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

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

            value = try container.decode(Double.self, forKey: .value)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            message = try container.decode(String.self, forKey: .message)

            cartId = try container.decode(String.self, forKey: .cartId)

            userType = try container.decode(String.self, forKey: .userType)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
