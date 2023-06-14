

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartDynamicInjectionResponse
         Used By: Cart
     */

    class CartDynamicInjectionResponse: Codable {
        public var amountValue: Double?

        public var injectionId: String?

        public var allowedRefund: Bool?

        public var meta: [String: Any]?

        public var userType: String

        public var userId: String?

        public var message: String?

        public var applyExpiry: String?

        public var articleLevelDistribution: Bool?

        public var type: String?

        public var collection: Collecttion?

        public var articleIds: [Article]?

        public var cartId: String

        public enum CodingKeys: String, CodingKey {
            case amountValue = "amount_value"

            case injectionId = "injection_id"

            case allowedRefund = "allowed_refund"

            case meta

            case userType = "user_type"

            case userId = "user_id"

            case message

            case applyExpiry = "apply_expiry"

            case articleLevelDistribution = "article_level_distribution"

            case type

            case collection

            case articleIds = "article_ids"

            case cartId = "cart_id"
        }

        public init(allowedRefund: Bool? = nil, amountValue: Double? = nil, applyExpiry: String? = nil, articleIds: [Article]? = nil, articleLevelDistribution: Bool? = nil, cartId: String, collection: Collecttion? = nil, injectionId: String? = nil, message: String? = nil, meta: [String: Any]? = nil, type: String? = nil, userId: String? = nil, userType: String) {
            self.amountValue = amountValue

            self.injectionId = injectionId

            self.allowedRefund = allowedRefund

            self.meta = meta

            self.userType = userType

            self.userId = userId

            self.message = message

            self.applyExpiry = applyExpiry

            self.articleLevelDistribution = articleLevelDistribution

            self.type = type

            self.collection = collection

            self.articleIds = articleIds

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountValue = try container.decode(Double.self, forKey: .amountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                injectionId = try container.decode(String.self, forKey: .injectionId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userType = try container.decode(String.self, forKey: .userType)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collection = try container.decode(Collecttion.self, forKey: .collection)

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

            cartId = try container.decode(String.self, forKey: .cartId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountValue, forKey: .amountValue)

            try? container.encodeIfPresent(injectionId, forKey: .injectionId)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(message, forKey: .message)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encode(type, forKey: .type)

            try? container.encode(collection, forKey: .collection)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
