

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var type: String

        public var cartId: String

        public var userId: String?

        public var userType: String

        public var value: Double?

        public var articleIds: [Article]

        public var articleLevelDistribution: Bool

        public var message: String

        public var meta: [String: Any]?

        public var allowedRefund: Bool?

        public var collection: Collecttion

        public var applyExpiry: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case cartId = "cart_id"

            case userId = "user_id"

            case userType = "user_type"

            case value

            case articleIds = "article_ids"

            case articleLevelDistribution = "article_level_distribution"

            case message

            case meta

            case allowedRefund = "allowed_refund"

            case collection

            case applyExpiry = "apply_expiry"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.type = type

            self.cartId = cartId

            self.userId = userId

            self.userType = userType

            self.value = value

            self.articleIds = articleIds

            self.articleLevelDistribution = articleLevelDistribution

            self.message = message

            self.meta = meta

            self.allowedRefund = allowedRefund

            self.collection = collection

            self.applyExpiry = applyExpiry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userType = try container.decode(String.self, forKey: .userType)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            message = try container.decode(String.self, forKey: .message)

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

            collection = try container.decode(Collecttion.self, forKey: .collection)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)
        }
    }
}
