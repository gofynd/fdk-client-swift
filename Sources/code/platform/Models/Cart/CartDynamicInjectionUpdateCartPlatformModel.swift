

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionUpdate
         Used By: Cart
     */

    class CartDynamicInjectionUpdate: Codable {
        public var message: String?

        public var allowedRefund: Bool?

        public var type: String?

        public var applyExpiry: String?

        public var meta: Collecttion?

        public var amountValue: Double?

        public var userType: String

        public var articleIds: [Article]?

        public var collection: [String: Any]?

        public var userId: String?

        public var cartId: String

        public var articleLevelDistribution: Bool?

        public enum CodingKeys: String, CodingKey {
            case message

            case allowedRefund = "allowed_refund"

            case type

            case applyExpiry = "apply_expiry"

            case meta

            case amountValue = "amount_value"

            case userType = "user_type"

            case articleIds = "article_ids"

            case collection

            case userId = "user_id"

            case cartId = "cart_id"

            case articleLevelDistribution = "article_level_distribution"
        }

        public init(allowedRefund: Bool? = nil, amountValue: Double? = nil, applyExpiry: String? = nil, articleIds: [Article]? = nil, articleLevelDistribution: Bool? = nil, cartId: String, collection: [String: Any]? = nil, message: String? = nil, meta: Collecttion? = nil, type: String? = nil, userId: String? = nil, userType: String) {
            self.message = message

            self.allowedRefund = allowedRefund

            self.type = type

            self.applyExpiry = applyExpiry

            self.meta = meta

            self.amountValue = amountValue

            self.userType = userType

            self.articleIds = articleIds

            self.collection = collection

            self.userId = userId

            self.cartId = cartId

            self.articleLevelDistribution = articleLevelDistribution
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

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
                meta = try container.decode(Collecttion.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountValue = try container.decode(Double.self, forKey: .amountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userType = try container.decode(String.self, forKey: .userType)

            do {
                articleIds = try container.decode([Article].self, forKey: .articleIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collection = try container.decode([String: Any].self, forKey: .collection)

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

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(amountValue, forKey: .amountValue)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encode(collection, forKey: .collection)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
        }
    }
}
