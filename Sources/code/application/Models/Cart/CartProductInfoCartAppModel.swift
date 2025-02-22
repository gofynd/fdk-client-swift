

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartProductInfo
        Used By: Cart
    */
    class CartProductInfo: Codable {
        
        public var article: ProductArticle?
        
        public var moq: [String: Any]?
        
        public var maxQuantity: ProductMaxQuantityInfo?
        
        public var identifiers: CartProductIdentifer
        
        public var promoMeta: PromoMeta?
        
        public var price: ProductPriceInfo?
        
        public var quantity: Int?
        
        public var charges: [Charges]?
        
        public var discount: String?
        
        public var availability: ProductAvailability?
        
        public var deliveryPromise: ShipmentPromise?
        
        public var product: CartProduct?
        
        public var productEanId: String?
        
        public var bulkOffer: [String: Any]?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var coupon: CouponDetails?
        
        public var customOrder: [String: Any]?
        
        public var couponMessage: String?
        
        public var key: String?
        
        public var message: String?
        
        public var isSet: Bool?
        
        public var pricePerUnit: ProductPricePerUnitInfo?
        
        public var promotionsApplied: [AppliedPromotion]?
        

        public enum CodingKeys: String, CodingKey {
            
            case article = "article"
            
            case moq = "moq"
            
            case maxQuantity = "max_quantity"
            
            case identifiers = "identifiers"
            
            case promoMeta = "promo_meta"
            
            case price = "price"
            
            case quantity = "quantity"
            
            case charges = "charges"
            
            case discount = "discount"
            
            case availability = "availability"
            
            case deliveryPromise = "delivery_promise"
            
            case product = "product"
            
            case productEanId = "product_ean_id"
            
            case bulkOffer = "bulk_offer"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case coupon = "coupon"
            
            case customOrder = "custom_order"
            
            case couponMessage = "coupon_message"
            
            case key = "key"
            
            case message = "message"
            
            case isSet = "is_set"
            
            case pricePerUnit = "price_per_unit"
            
            case promotionsApplied = "promotions_applied"
            
        }

        public init(article: ProductArticle? = nil, availability: ProductAvailability? = nil, bulkOffer: [String: Any]? = nil, charges: [Charges]? = nil, coupon: CouponDetails? = nil, couponMessage: String? = nil, customOrder: [String: Any]? = nil, deliveryPromise: ShipmentPromise? = nil, discount: String? = nil, identifiers: CartProductIdentifer, isSet: Bool? = nil, key: String? = nil, maxQuantity: ProductMaxQuantityInfo? = nil, message: String? = nil, moq: [String: Any]? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ProductPriceInfo? = nil, pricePerUnit: ProductPricePerUnitInfo? = nil, product: CartProduct? = nil, productEanId: String? = nil, promotionsApplied: [AppliedPromotion]? = nil, promoMeta: PromoMeta? = nil, quantity: Int? = nil) {
            
            self.article = article
            
            self.moq = moq
            
            self.maxQuantity = maxQuantity
            
            self.identifiers = identifiers
            
            self.promoMeta = promoMeta
            
            self.price = price
            
            self.quantity = quantity
            
            self.charges = charges
            
            self.discount = discount
            
            self.availability = availability
            
            self.deliveryPromise = deliveryPromise
            
            self.product = product
            
            self.productEanId = productEanId
            
            self.bulkOffer = bulkOffer
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.coupon = coupon
            
            self.customOrder = customOrder
            
            self.couponMessage = couponMessage
            
            self.key = key
            
            self.message = message
            
            self.isSet = isSet
            
            self.pricePerUnit = pricePerUnit
            
            self.promotionsApplied = promotionsApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                article = try container.decode(ProductArticle.self, forKey: .article)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                moq = try container.decode([String: Any].self, forKey: .moq)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                maxQuantity = try container.decode(ProductMaxQuantityInfo.self, forKey: .maxQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
            
            
            
            
            do {
                promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(ProductPriceInfo.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                charges = try container.decode([Charges].self, forKey: .charges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(String.self, forKey: .discount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                product = try container.decode(CartProduct.self, forKey: .product)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productEanId = try container.decode(String.self, forKey: .productEanId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                coupon = try container.decode(CouponDetails.self, forKey: .coupon)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponMessage = try container.decode(String.self, forKey: .couponMessage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                key = try container.decode(String.self, forKey: .key)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pricePerUnit = try container.decode(ProductPricePerUnitInfo.self, forKey: .pricePerUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promotionsApplied = try container.decode([AppliedPromotion].self, forKey: .promotionsApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            try? container.encodeIfPresent(moq, forKey: .moq)
            
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            try? container.encodeIfPresent(productEanId, forKey: .productEanId)
            
            
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            try? container.encodeIfPresent(promotionsApplied, forKey: .promotionsApplied)
            
            
        }
        
    }
}
