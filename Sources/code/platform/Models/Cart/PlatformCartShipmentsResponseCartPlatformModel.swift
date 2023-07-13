

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartShipmentsResponse
         Used By: Cart
     */

    class PlatformCartShipmentsResponse: Codable {
        public var couponText: String?

        public var id: String?

        public var panConfig: [String: Any]?

        public var deliveryPromise: ShipmentPromise?

        public var comment: String?

        public var items: [CartProductInfo]?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var deliveryChargeInfo: String?

        public var restrictCheckout: Bool?

        public var message: String?

        public var breakupValues: CartBreakup?

        public var staffUserId: String?

        public var isValid: Bool?

        public var shipments: [PlatformShipmentResponse]?

        public var currency: CartCurrency?

        public var checkoutMode: String?

        public var lastModified: String?

        public var buyNow: Bool?

        public var gstin: String?

        public var appliedPromoDetails: [AppliedPromotion]?

        public var error: Bool?

        public var panNo: String?

        public enum CodingKeys: String, CodingKey {
            case couponText = "coupon_text"

            case id

            case panConfig = "pan_config"

            case deliveryPromise = "delivery_promise"

            case comment

            case items

            case paymentSelectionLock = "payment_selection_lock"

            case deliveryChargeInfo = "delivery_charge_info"

            case restrictCheckout = "restrict_checkout"

            case message

            case breakupValues = "breakup_values"

            case staffUserId = "staff_user_id"

            case isValid = "is_valid"

            case shipments

            case currency

            case checkoutMode = "checkout_mode"

            case lastModified = "last_modified"

            case buyNow = "buy_now"

            case gstin

            case appliedPromoDetails = "applied_promo_details"

            case error

            case panNo = "pan_no"
        }

        public init(appliedPromoDetails: [AppliedPromotion]? = nil, breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, error: Bool? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, panConfig: [String: Any]? = nil, panNo: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, shipments: [PlatformShipmentResponse]? = nil, staffUserId: String? = nil) {
            self.couponText = couponText

            self.id = id

            self.panConfig = panConfig

            self.deliveryPromise = deliveryPromise

            self.comment = comment

            self.items = items

            self.paymentSelectionLock = paymentSelectionLock

            self.deliveryChargeInfo = deliveryChargeInfo

            self.restrictCheckout = restrictCheckout

            self.message = message

            self.breakupValues = breakupValues

            self.staffUserId = staffUserId

            self.isValid = isValid

            self.shipments = shipments

            self.currency = currency

            self.checkoutMode = checkoutMode

            self.lastModified = lastModified

            self.buyNow = buyNow

            self.gstin = gstin

            self.appliedPromoDetails = appliedPromoDetails

            self.error = error

            self.panNo = panNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

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
                panConfig = try container.decode([String: Any].self, forKey: .panConfig)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

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
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staffUserId = try container.decode(String.self, forKey: .staffUserId)

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
                shipments = try container.decode([PlatformShipmentResponse].self, forKey: .shipments)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

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
                appliedPromoDetails = try container.decode([AppliedPromotion].self, forKey: .appliedPromoDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(Bool.self, forKey: .error)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(panConfig, forKey: .panConfig)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encode(staffUserId, forKey: .staffUserId)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(appliedPromoDetails, forKey: .appliedPromoDetails)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(panNo, forKey: .panNo)
        }
    }
}
