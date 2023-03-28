

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UserCartMappingResponse
         Used By: Cart
     */

    class UserCartMappingResponse: Codable {
        public var deliveryPromise: ShipmentPromise?

        public var restrictCheckout: Bool?

        public var lastModified: String?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var isValid: Bool?

        public var items: [CartProductInfo]?

        public var breakupValues: CartBreakup?

        public var id: String?

        public var checkoutMode: String?

        public var user: UserInfo?

        public var panConfig: [String: Any]?

        public var gstin: String?

        public var comment: String?

        public var couponText: String?

        public var message: String?

        public var deliveryChargeInfo: String?

        public var buyNow: Bool?

        public var panNo: String?

        public var currency: CartCurrency?

        public enum CodingKeys: String, CodingKey {
            case deliveryPromise = "delivery_promise"

            case restrictCheckout = "restrict_checkout"

            case lastModified = "last_modified"

            case paymentSelectionLock = "payment_selection_lock"

            case isValid = "is_valid"

            case items

            case breakupValues = "breakup_values"

            case id

            case checkoutMode = "checkout_mode"

            case user

            case panConfig = "pan_config"

            case gstin

            case comment

            case couponText = "coupon_text"

            case message

            case deliveryChargeInfo = "delivery_charge_info"

            case buyNow = "buy_now"

            case panNo = "pan_no"

            case currency
        }

        public init(breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, panConfig: [String: Any]? = nil, panNo: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, user: UserInfo? = nil) {
            self.deliveryPromise = deliveryPromise

            self.restrictCheckout = restrictCheckout

            self.lastModified = lastModified

            self.paymentSelectionLock = paymentSelectionLock

            self.isValid = isValid

            self.items = items

            self.breakupValues = breakupValues

            self.id = id

            self.checkoutMode = checkoutMode

            self.user = user

            self.panConfig = panConfig

            self.gstin = gstin

            self.comment = comment

            self.couponText = couponText

            self.message = message

            self.deliveryChargeInfo = deliveryChargeInfo

            self.buyNow = buyNow

            self.panNo = panNo

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

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
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                panConfig = try container.decode([String: Any].self, forKey: .panConfig)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                message = try container.decode(String.self, forKey: .message)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                panNo = try container.decode(String.self, forKey: .panNo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(panConfig, forKey: .panConfig)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(panNo, forKey: .panNo)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
