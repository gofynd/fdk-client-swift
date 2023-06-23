

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionResponse
         Used By: Cart
     */

    class CartDynamicInjectionResponse: Codable {
        public var injectionId: String?

        public var message: String

        public var userType: String

        public var collection: Collecttion

        public var articleIds: [Article]

        public var articleLevelDistribution: Bool

        public var userId: String?

        public var meta: [String: Any]?

        public var cartId: String

        public var type: String

        public var allowedRefund: Bool?

        public var value: Double?

        public var applyExpiry: String?

        public enum CodingKeys: String, CodingKey {
            case injectionId = "injection_id"

            case message

            case userType = "user_type"

            case collection

            case articleIds = "article_ids"

            case articleLevelDistribution = "article_level_distribution"

            case userId = "user_id"

            case meta

            case cartId = "cart_id"

            case type

            case allowedRefund = "allowed_refund"

            case value

            case applyExpiry = "apply_expiry"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, injectionId: String? = nil, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.injectionId = injectionId

            self.message = message

            self.userType = userType

            self.collection = collection

            self.articleIds = articleIds

            self.articleLevelDistribution = articleLevelDistribution

            self.userId = userId

            self.meta = meta

            self.cartId = cartId

            self.type = type

            self.allowedRefund = allowedRefund

            self.value = value

            self.applyExpiry = applyExpiry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            userType = try container.decode(String.self, forKey: .userType)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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

            cartId = try container.decode(String.self, forKey: .cartId)

            type = try container.decode(String.self, forKey: .type)

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

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)
        }
    }
}
