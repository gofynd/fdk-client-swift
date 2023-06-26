

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjection
         Used By: Cart
     */

    class CartDynamicInjection: Codable {
        public var allowedRefund: Bool?

        public var value: Double?

        public var cartId: String

        public var collection: Collecttion

        public var articleLevelDistribution: Bool

        public var userType: String

        public var type: String

        public var applyExpiry: String?

        public var userId: String?

        public var message: String

        public var meta: [String: Any]?

        public var articleIds: [Article]

        public var injectionId: String?

        public enum CodingKeys: String, CodingKey {
            case allowedRefund = "allowed_refund"

            case value

            case cartId = "cart_id"

            case collection

            case articleLevelDistribution = "article_level_distribution"

            case userType = "user_type"

            case type

            case applyExpiry = "apply_expiry"

            case userId = "user_id"

            case message

            case meta

            case articleIds = "article_ids"

            case injectionId = "injection_id"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, injectionId: String? = nil, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.allowedRefund = allowedRefund

            self.value = value

            self.cartId = cartId

            self.collection = collection

            self.articleLevelDistribution = articleLevelDistribution

            self.userType = userType

            self.type = type

            self.applyExpiry = applyExpiry

            self.userId = userId

            self.message = message

            self.meta = meta

            self.articleIds = articleIds

            self.injectionId = injectionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            userType = try container.decode(String.self, forKey: .userType)

            type = try container.decode(String.self, forKey: .type)

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

            message = try container.decode(String.self, forKey: .message)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(message, forKey: .message)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)
        }
    }
}
