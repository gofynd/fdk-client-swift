

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PriceAdjustmentAdd
         Used By: Cart
     */

    class PriceAdjustmentAdd: Codable {
        public var applyExpiry: String?

        public var cartId: String

        public var cartValue: Double?

        public var meta: [String: Any]?

        public var type: String

        public var createdBy: String?

        public var value: Double

        public var articleLevelDistribution: Bool

        public var articleIds: [Article]

        public var isAuthenticated: Bool

        public var allowedRefund: Bool?

        public var message: String

        public var collection: Collection

        public enum CodingKeys: String, CodingKey {
            case applyExpiry = "apply_expiry"

            case cartId = "cart_id"

            case cartValue = "cart_value"

            case meta

            case type

            case createdBy = "created_by"

            case value

            case articleLevelDistribution = "article_level_distribution"

            case articleIds = "article_ids"

            case isAuthenticated = "is_authenticated"

            case allowedRefund = "allowed_refund"

            case message

            case collection
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double? = nil, collection: Collection, createdBy: String? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, type: String, value: Double) {
            self.applyExpiry = applyExpiry

            self.cartId = cartId

            self.cartValue = cartValue

            self.meta = meta

            self.type = type

            self.createdBy = createdBy

            self.value = value

            self.articleLevelDistribution = articleLevelDistribution

            self.articleIds = articleIds

            self.isAuthenticated = isAuthenticated

            self.allowedRefund = allowedRefund

            self.message = message

            self.collection = collection
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applyExpiry = try container.decode(String.self, forKey: .applyExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(Double.self, forKey: .value)

            articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)

            articleIds = try container.decode([Article].self, forKey: .articleIds)

            isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)

            do {
                allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            collection = try container.decode(Collection.self, forKey: .collection)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)

            try? container.encodeIfPresent(articleIds, forKey: .articleIds)

            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)

            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(collection, forKey: .collection)
        }
    }
}