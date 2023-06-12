

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var collection: [String: Any]?

        public var articleLevelDistribution: Bool?

        public var allowedRefund: Bool?

        public var cartId: String

        public var userType: String

        public var amountValue: Double?

        public var type: String?

        public var applyExpiry: String?

        public var userId: String?

        public var articleIds: [Article]?

        public var message: String?

        public var meta: Collecttion?

        public enum CodingKeys: String, CodingKey {
            case collection

            case articleLevelDistribution = "article_level_distribution"

            case allowedRefund = "allowed_refund"

            case cartId = "cart_id"

            case userType = "user_type"

            case amountValue = "amount_value"

            case type

            case applyExpiry = "apply_expiry"

            case userId = "user_id"

            case articleIds = "article_ids"

            case message

            case meta
        }

        public init(allowedRefund: Bool? = nil, amountValue: Double? = nil, applyExpiry: String? = nil, articleIds: [Article]? = nil, articleLevelDistribution: Bool? = nil, cartId: String, collection: [String: Any]? = nil, message: String? = nil, meta: Collecttion? = nil, type: String? = nil, userId: String? = nil, userType: String) {
            self.collection = collection

            self.articleLevelDistribution = articleLevelDistribution

            self.allowedRefund = allowedRefund

            self.cartId = cartId

            self.userType = userType

            self.amountValue = amountValue

            self.type = type

            self.applyExpiry = applyExpiry

            self.userId = userId

            self.articleIds = articleIds

            self.message = message

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                collection = try container.decode([String: Any].self, forKey: .collection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

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

            userType = try container.decode(String.self, forKey: .userType)

            do {
                amountValue = try container.decode(Double.self, forKey: .amountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

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

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleIds = try container.decode([Article].self, forKey: .articleIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Collecttion.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(collection, forKey: .collection)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(amountValue, forKey: .amountValue)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encode(message, forKey: .message)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
