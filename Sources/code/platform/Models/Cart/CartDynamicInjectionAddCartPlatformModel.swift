

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionAdd
         Used By: Cart
     */

    class CartDynamicInjectionAdd: Codable {
        public var extensionId: String

        public var collection: Collecttion?

        public var articleLevelDistribution: Bool?

        public var amountValue: Double?

        public var cartId: String

        public var meta: [String: Any]?

        public var type: String?

        public var allowedRefund: Bool?

        public var message: String?

        public var userType: String

        public var applyExpiry: String?

        public var articleIds: [Article]?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case extensionId = "extension_id"

            case collection

            case articleLevelDistribution = "article_level_distribution"

            case amountValue = "amount_value"

            case cartId = "cart_id"

            case meta

            case type

            case allowedRefund = "allowed_refund"

            case message

            case userType = "user_type"

            case applyExpiry = "apply_expiry"

            case articleIds = "article_ids"

            case userId = "user_id"
        }

        public init(allowedRefund: Bool? = nil, amountValue: Double? = nil, applyExpiry: String? = nil, articleIds: [Article]? = nil, articleLevelDistribution: Bool? = nil, cartId: String, collection: Collecttion? = nil, extensionId: String, message: String? = nil, meta: [String: Any]? = nil, type: String? = nil, userId: String? = nil, userType: String) {
            self.extensionId = extensionId

            self.collection = collection

            self.articleLevelDistribution = articleLevelDistribution

            self.amountValue = amountValue

            self.cartId = cartId

            self.meta = meta

            self.type = type

            self.allowedRefund = allowedRefund

            self.message = message

            self.userType = userType

            self.applyExpiry = applyExpiry

            self.articleIds = articleIds

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            extensionId = try container.decode(String.self, forKey: .extensionId)

            do {
                collection = try container.decode(Collecttion.self, forKey: .collection)

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
                amountValue = try container.decode(Double.self, forKey: .amountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

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

            userType = try container.decode(String.self, forKey: .userType)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

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
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extensionId, forKey: .extensionId)

            try? container.encode(collection, forKey: .collection)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(amountValue, forKey: .amountValue)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
