

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var applyExpiry: String?

        public var collection: Collecttion

        public var userType: String

        public var userId: String?

        public var message: String

        public var articleLevelDistribution: Bool

        public var articleIds: [Article]

        public var value: Double?

        public var type: String

        public var meta: [String: Any]?

        public var allowedRefund: Bool?

        public var injectionId: String?

        public var cartId: String

        public enum CodingKeys: String, CodingKey {
            case applyExpiry = "apply_expiry"

            case collection

            case userType = "user_type"

            case userId = "user_id"

            case message

            case articleLevelDistribution = "article_level_distribution"

            case articleIds = "article_ids"

            case value

            case type

            case meta

            case allowedRefund = "allowed_refund"

            case injectionId = "injection_id"

            case cartId = "cart_id"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, injectionId: String? = nil, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.applyExpiry = applyExpiry

            self.collection = collection

            self.userType = userType

            self.userId = userId

            self.message = message

            self.articleLevelDistribution = articleLevelDistribution

            self.articleIds = articleIds

            self.value = value

            self.type = type

            self.meta = meta

            self.allowedRefund = allowedRefund

            self.injectionId = injectionId

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collection = try container.decode(Collecttion.self, forKey: .collection)

            userType = try container.decode(String.self, forKey: .userType)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

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

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
