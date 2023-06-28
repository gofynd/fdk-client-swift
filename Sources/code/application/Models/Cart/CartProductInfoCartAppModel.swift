

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartProductInfo
         Used By: Cart
     */
    class CartProductInfo: Codable {
        public var availability: ProductAvailability?

        public var isSet: Bool?

        public var promotionsApplied: [AppliedPromotion]?

        public var identifiers: CartProductIdentifer

        public var product: CartProduct?

        public var promoMeta: PromoMeta?

        public var customOrder: [String: Any]?

        public var bulkOffer: [String: Any]?

        public var key: String?

        public var price: ProductPriceInfo?

        public var quantity: Int?

        public var discount: String?

        public var moq: [String: Any]?

        public var parentItemIdentifiers: [String: Any]?

        public var article: ProductArticle?

        public var coupon: CouponDetails?

        public var couponMessage: String?

        public var message: String?

        public var pricePerUnit: ProductPriceInfo?

        public var deliveryPromise: ShipmentPromise?

        public enum CodingKeys: String, CodingKey {
            case availability

            case isSet = "is_set"

            case promotionsApplied = "promotions_applied"

            case identifiers

            case product

            case promoMeta = "promo_meta"

            case customOrder = "custom_order"

            case bulkOffer = "bulk_offer"

            case key

            case price

            case quantity

            case discount

            case moq

            case parentItemIdentifiers = "parent_item_identifiers"

            case article

            case coupon

            case couponMessage = "coupon_message"

            case message

            case pricePerUnit = "price_per_unit"

            case deliveryPromise = "delivery_promise"
        }

        public init(article: ProductArticle? = nil, availability: ProductAvailability? = nil, bulkOffer: [String: Any]? = nil, coupon: CouponDetails? = nil, couponMessage: String? = nil, customOrder: [String: Any]? = nil, deliveryPromise: ShipmentPromise? = nil, discount: String? = nil, identifiers: CartProductIdentifer, isSet: Bool? = nil, key: String? = nil, message: String? = nil, moq: [String: Any]? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ProductPriceInfo? = nil, pricePerUnit: ProductPriceInfo? = nil, product: CartProduct? = nil, promotionsApplied: [AppliedPromotion]? = nil, promoMeta: PromoMeta? = nil, quantity: Int? = nil) {
            self.availability = availability

            self.isSet = isSet

            self.promotionsApplied = promotionsApplied

            self.identifiers = identifiers

            self.product = product

            self.promoMeta = promoMeta

            self.customOrder = customOrder

            self.bulkOffer = bulkOffer

            self.key = key

            self.price = price

            self.quantity = quantity

            self.discount = discount

            self.moq = moq

            self.parentItemIdentifiers = parentItemIdentifiers

            self.article = article

            self.coupon = coupon

            self.couponMessage = couponMessage

            self.message = message

            self.pricePerUnit = pricePerUnit

            self.deliveryPromise = deliveryPromise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

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

            do {
                promotionsApplied = try container.decode([AppliedPromotion].self, forKey: .promotionsApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                product = try container.decode(CartProduct.self, forKey: .product)

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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)

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
                key = try container.decode(String.self, forKey: .key)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode([String: Any].self, forKey: .moq)

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
                article = try container.decode(ProductArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(CouponDetails.self, forKey: .coupon)

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

            do {
                message = try container.decode(String.self, forKey: .message)

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
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availability, forKey: .availability)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(promotionsApplied, forKey: .promotionsApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
        }
    }
}
