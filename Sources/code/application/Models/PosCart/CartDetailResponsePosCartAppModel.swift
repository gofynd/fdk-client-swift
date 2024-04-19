

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: CartDetailResponse
        Used By: PosCart
    */
    class CartDetailResponse: Codable {
        
        public var comment: String?
        
        public var couponText: String?
        
        public var lastModified: String?
        
        public var panConfig: [String: Any]?
        
        public var isValid: Bool?
        
        public var id: String?
        
        public var appliedPromoDetails: [AppliedPromotion]?
        
        public var checkoutMode: String?
        
        public var restrictCheckout: Bool?
        
        public var message: String?
        
        public var buyNow: Bool?
        
        public var breakupValues: CartBreakup?
        
        public var deliveryChargeInfo: String?
        
        public var paymentSelectionLock: PaymentSelectionLock?
        
        public var gstin: String?
        
        public var deliveryPromise: ShipmentPromise?
        
        public var panNo: String?
        
        public var items: [CartProductInfo]?
        
        public var currency: CartCurrency?
        

        public enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case couponText = "coupon_text"
            
            case lastModified = "last_modified"
            
            case panConfig = "pan_config"
            
            case isValid = "is_valid"
            
            case id = "id"
            
            case appliedPromoDetails = "applied_promo_details"
            
            case checkoutMode = "checkout_mode"
            
            case restrictCheckout = "restrict_checkout"
            
            case message = "message"
            
            case buyNow = "buy_now"
            
            case breakupValues = "breakup_values"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case paymentSelectionLock = "payment_selection_lock"
            
            case gstin = "gstin"
            
            case deliveryPromise = "delivery_promise"
            
            case panNo = "pan_no"
            
            case items = "items"
            
            case currency = "currency"
            
        }

        public init(appliedPromoDetails: [AppliedPromotion]? = nil, breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, panConfig: [String: Any]? = nil, panNo: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil) {
            
            self.comment = comment
            
            self.couponText = couponText
            
            self.lastModified = lastModified
            
            self.panConfig = panConfig
            
            self.isValid = isValid
            
            self.id = id
            
            self.appliedPromoDetails = appliedPromoDetails
            
            self.checkoutMode = checkoutMode
            
            self.restrictCheckout = restrictCheckout
            
            self.message = message
            
            self.buyNow = buyNow
            
            self.breakupValues = breakupValues
            
            self.deliveryChargeInfo = deliveryChargeInfo
            
            self.paymentSelectionLock = paymentSelectionLock
            
            self.gstin = gstin
            
            self.deliveryPromise = deliveryPromise
            
            self.panNo = panNo
            
            self.items = items
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                comment = try container.decode(String.self, forKey: .comment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponText = try container.decode(String.self, forKey: .couponText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                panConfig = try container.decode([String: Any].self, forKey: .panConfig)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                appliedPromoDetails = try container.decode([AppliedPromotion].self, forKey: .appliedPromoDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
            
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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstin = try container.decode(String.self, forKey: .gstin)
            
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
                panNo = try container.decode(String.self, forKey: .panNo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            
            
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            
            
            
            try? container.encodeIfPresent(panConfig, forKey: .panConfig)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(appliedPromoDetails, forKey: .appliedPromoDetails)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(buyNow, forKey: .buyNow)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            
            
            
            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}
