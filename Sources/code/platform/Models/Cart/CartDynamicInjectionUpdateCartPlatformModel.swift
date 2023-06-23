

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var cartId: String

        public var allowedRefund: Bool?

        public var type: String

        public var applyExpiry: String?

        public var collection: Collecttion

        public var userType: String

        public var meta: [String: Any]?

        public var articleLevelDistribution: Bool

        public var value: Double?

        public var userId: String?

        public var message: String

        public var articleIds: [Article]

        public enum CodingKeys: String, CodingKey {
            case cartId = "cart_id"

            case allowedRefund = "allowed_refund"

            case type

            case applyExpiry = "apply_expiry"

            case collection

            case userType = "user_type"

            case meta

            case articleLevelDistribution = "article_level_distribution"

            case value

            case userId = "user_id"

            case message

            case articleIds = "article_ids"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.cartId = cartId

            self.allowedRefund = allowedRefund

            self.type = type

            self.applyExpiry = applyExpiry

            self.collection = collection

            self.userType = userType

            self.meta = meta

            self.articleLevelDistribution = articleLevelDistribution

            self.value = value

            self.userId = userId

            self.message = message

            self.articleIds = articleIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collection = try container.decode(Collecttion.self, forKey: .collection)

            userType = try container.decode(String.self, forKey: .userType)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            do {
                value = try container.decode(Double.self, forKey: .value)

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

            articleIds = try container.decode([Article].self, forKey: .articleIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)
        }
    }
}
