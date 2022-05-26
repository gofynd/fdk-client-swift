

import Foundation
public extension ApplicationClient {
    /*
         Model: SharedCart
         Used By: Cart
     */
    class SharedCart: Codable {
        public var breakupValues: CartBreakup?

        public var cartId: Int?

        public var restrictCheckout: Bool?

        public var lastModified: String?

        public var deliveryPromise: ShipmentPromise?

        public var message: String?

        public var currency: CartCurrency?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var items: [CartProductInfo]?

        public var sharedCartDetails: SharedCartDetails?

        public var isValid: Bool?

        public var couponText: String?

        public var uid: String?

        public var comment: String?

        public var gstin: String?

        public var deliveryChargeInfo: String?

        public var checkoutMode: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case breakupValues = "breakup_values"

            case cartId = "cart_id"

            case restrictCheckout = "restrict_checkout"

            case lastModified = "last_modified"

            case deliveryPromise = "delivery_promise"

            case message

            case currency

            case paymentSelectionLock = "payment_selection_lock"

            case items

            case sharedCartDetails = "shared_cart_details"

            case isValid = "is_valid"

            case couponText = "coupon_text"

            case uid

            case comment

            case gstin

            case deliveryChargeInfo = "delivery_charge_info"

            case checkoutMode = "checkout_mode"

            case id
        }

        public init(breakupValues: CartBreakup? = nil, cartId: Int? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, sharedCartDetails: SharedCartDetails? = nil, uid: String? = nil) {
            self.breakupValues = breakupValues

            self.cartId = cartId

            self.restrictCheckout = restrictCheckout

            self.lastModified = lastModified

            self.deliveryPromise = deliveryPromise

            self.message = message

            self.currency = currency

            self.paymentSelectionLock = paymentSelectionLock

            self.items = items

            self.sharedCartDetails = sharedCartDetails

            self.isValid = isValid

            self.couponText = couponText

            self.uid = uid

            self.comment = comment

            self.gstin = gstin

            self.deliveryChargeInfo = deliveryChargeInfo

            self.checkoutMode = checkoutMode

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
