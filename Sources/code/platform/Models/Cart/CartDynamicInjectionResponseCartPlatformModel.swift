

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionResponse
         Used By: Cart
     */

    class CartDynamicInjectionResponse: Codable {
        public var applyExpiry: String?

        public var value: Double?

        public var meta: [String: Any]?

        public var message: String

        public var collection: Collecttion

        public var injectionId: String?

        public var articleLevelDistribution: Bool

        public var userId: String?

        public var allowedRefund: Bool?

        public var cartId: String

        public var articleIds: [Article]

        public var type: String

        public var userType: String

        public enum CodingKeys: String, CodingKey {
            case applyExpiry = "apply_expiry"

            case value

            case meta

            case message

            case collection

            case injectionId = "injection_id"

            case articleLevelDistribution = "article_level_distribution"

            case userId = "user_id"

            case allowedRefund = "allowed_refund"

            case cartId = "cart_id"

            case articleIds = "article_ids"

            case type

            case userType = "user_type"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, injectionId: String? = nil, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.applyExpiry = applyExpiry

            self.value = value

            self.meta = meta

            self.message = message

            self.collection = collection

            self.injectionId = injectionId

            self.articleLevelDistribution = articleLevelDistribution

            self.userId = userId

            self.allowedRefund = allowedRefund

            self.cartId = cartId

            self.articleIds = articleIds

            self.type = type

            self.userType = userType
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
                value = try container.decode(Double.self, forKey: .value)

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

            message = try container.decode(String.self, forKey: .message)

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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

            cartId = try container.decode(String.self, forKey: .cartId)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            type = try container.decode(String.self, forKey: .type)

            userType = try container.decode(String.self, forKey: .userType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(userType, forKey: .userType)
        }
    }
}
