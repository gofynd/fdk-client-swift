

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var allowedRefund: Bool?

        public var message: String

        public var collection: Collecttion

        public var userId: String?

        public var meta: [String: Any]?

        public var articleIds: [Article]

        public var applyExpiry: String?

        public var type: String

        public var cartId: String

        public var articleLevelDistribution: Bool

        public var value: Double?

        public var userType: String

        public enum CodingKeys: String, CodingKey {
            case allowedRefund = "allowed_refund"

            case message

            case collection

            case userId = "user_id"

            case meta

            case articleIds = "article_ids"

            case applyExpiry = "apply_expiry"

            case type

            case cartId = "cart_id"

            case articleLevelDistribution = "article_level_distribution"

            case value

            case userType = "user_type"
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, collection: Collecttion, message: String, meta: [String: Any]? = nil, type: String, userId: String? = nil, userType: String, value: Double? = nil) {
            self.allowedRefund = allowedRefund

            self.message = message

            self.collection = collection

            self.userId = userId

            self.meta = meta

            self.articleIds = articleIds

            self.applyExpiry = applyExpiry

            self.type = type

            self.cartId = cartId

            self.articleLevelDistribution = articleLevelDistribution

            self.value = value

            self.userType = userType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            collection = try container.decode(Collecttion.self, forKey: .collection)

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

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            cartId = try container.decode(String.self, forKey: .cartId)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userType = try container.decode(String.self, forKey: .userType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(collection, forKey: .collection)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(userType, forKey: .userType)
        }
    }
}
