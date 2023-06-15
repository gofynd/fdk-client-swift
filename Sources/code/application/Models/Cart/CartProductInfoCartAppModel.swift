

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartProductInfo
         Used By: Cart
     */
    class CartProductInfo: Codable {
        public var moq: [String: Any]?

        public var availability: ProductAvailability?

        public var promotionsApplied: [AppliedPromotion]?

        public var message: String?

        public var price: ProductPriceInfo?

        public var bulkOffer: [String: Any]?

        public var parentItemIdentifiers: [String: Any]?

        public var key: String?

        public var article: ProductArticle?

        public var pricePerUnit: ProductPriceInfo?

        public var promoMeta: PromoMeta?

        public var deliveryPromise: ShipmentPromise?

        public var isSet: Bool?

        public var identifiers: CartProductIdentifer

        public var discount: String?

        public var product: CartProduct?

        public var quantity: Int?

        public var couponMessage: String?

        public enum CodingKeys: String, CodingKey {
            case moq

            case availability

            case promotionsApplied = "promotions_applied"

            case message

            case price

            case bulkOffer = "bulk_offer"

            case parentItemIdentifiers = "parent_item_identifiers"

            case key

            case article

            case pricePerUnit = "price_per_unit"

            case promoMeta = "promo_meta"

            case deliveryPromise = "delivery_promise"

            case isSet = "is_set"

            case identifiers

            case discount

            case product

            case quantity

            case couponMessage = "coupon_message"
        }

        public init(article: ProductArticle? = nil, availability: ProductAvailability? = nil, bulkOffer: [String: Any]? = nil, couponMessage: String? = nil, deliveryPromise: ShipmentPromise? = nil, discount: String? = nil, identifiers: CartProductIdentifer, isSet: Bool? = nil, key: String? = nil, message: String? = nil, moq: [String: Any]? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ProductPriceInfo? = nil, pricePerUnit: ProductPriceInfo? = nil, product: CartProduct? = nil, promotionsApplied: [AppliedPromotion]? = nil, promoMeta: PromoMeta? = nil, quantity: Int? = nil) {
            self.moq = moq

            self.availability = availability

            self.promotionsApplied = promotionsApplied

            self.message = message

            self.price = price

            self.bulkOffer = bulkOffer

            self.parentItemIdentifiers = parentItemIdentifiers

            self.key = key

            self.article = article

            self.pricePerUnit = pricePerUnit

            self.promoMeta = promoMeta

            self.deliveryPromise = deliveryPromise

            self.isSet = isSet

            self.identifiers = identifiers

            self.discount = discount

            self.product = product

            self.quantity = quantity

            self.couponMessage = couponMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                moq = try container.decode([String: Any].self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionsApplied = try container.decode([AppliedPromotion].self, forKey: .promotionsApplied)

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
                price = try container.decode(ProductPriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(ProductArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(CartProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponMessage = try container.decode(String.self, forKey: .couponMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(availability, forKey: .availability)

            try? container.encodeIfPresent(promotionsApplied, forKey: .promotionsApplied)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
        }
    }
}
