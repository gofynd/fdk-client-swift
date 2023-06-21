

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var value: Double?

        public var articleLevelDistribution: Bool

        public var message: String

        public var cartId: String

        public var applyExpiry: String?

        public var collection: Collecttion

        public var articleIds: [Article]

        public var type: String

        public var allowedRefund: Bool?

        public var userId: String?

        public var meta: [String: Any]?

        public var userType: String

        public enum CodingKeys: String, CodingKey {
            case value

            case articleLevelDistribution = "article_level_distribution"

            case message

            case cartId = "cart_id"

            case applyExpiry = "apply_expiry"

            case collection

            case articleIds = "article_ids"

            case type

            case allowedRefund = "allowed_refund"

            case userId = "user_id"

            case meta

            case userType = "user_type"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.value = value

            self.articleLevelDistribution = articleLevelDistribution

            self.message = message

            self.cartId = cartId

            self.applyExpiry = applyExpiry

            self.collection = collection

            self.articleIds = articleIds

            self.type = type

            self.allowedRefund = allowedRefund

            self.userId = userId

            self.meta = meta

            self.userType = userType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            message = try container.decode(String.self, forKey: .message)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collection = try container.decode(Collecttion.self, forKey: .collection)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            type = try container.decode(String.self, forKey: .type)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userType = try container.decode(String.self, forKey: .userType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(userType, forKey: .userType)
        }
    }
}
