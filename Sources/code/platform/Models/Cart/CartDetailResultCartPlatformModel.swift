

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartDetailResult
        Used By: Cart
    */

    class CartDetailResult: Codable {
        
        
        public var cartId: Int?
        
        public var uid: String?
        
        public var couponText: String?
        
        public var id: String?
        
        public var panConfig: [String: Any]?
        
        public var deliveryPromise: ShipmentPromise?
        
        public var comment: String?
        
        public var items: [CartProductInfo]?
        
        public var paymentSelectionLock: PaymentSelectionLock?
        
        public var deliveryChargeInfo: String?
        
        public var commonConfig: CartCommonConfig?
        
        public var coupon: CartDetailCoupon?
        
        public var restrictCheckout: Bool?
        
        public var message: String?
        
        public var notification: [String: Any]?
        
        public var staffUserId: String?
        
        public var success: Bool?
        
        public var breakupValues: CartBreakup?
        
        public var isValid: Bool?
        
        public var currency: CartCurrency?
        
        public var checkoutMode: String?
        
        public var lastModified: String?
        
        public var buyNow: Bool?
        
        public var gstin: String?
        
        public var appliedPromoDetails: [AppliedPromotion]?
        
        public var panNo: String?
        
        public var customCartMeta: [String: Any]?
        
        public var alternatePickupPerson: PlatformAlternatePickupPerson?
        
        public var freeGiftSelectionAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartId = "cart_id"
            
            case uid = "uid"
            
            case couponText = "coupon_text"
            
            case id = "id"
            
            case panConfig = "pan_config"
            
            case deliveryPromise = "delivery_promise"
            
            case comment = "comment"
            
            case items = "items"
            
            case paymentSelectionLock = "payment_selection_lock"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case commonConfig = "common_config"
            
            case coupon = "coupon"
            
            case restrictCheckout = "restrict_checkout"
            
            case message = "message"
            
            case notification = "notification"
            
            case staffUserId = "staff_user_id"
            
            case success = "success"
            
            case breakupValues = "breakup_values"
            
            case isValid = "is_valid"
            
            case currency = "currency"
            
            case checkoutMode = "checkout_mode"
            
            case lastModified = "last_modified"
            
            case buyNow = "buy_now"
            
            case gstin = "gstin"
            
            case appliedPromoDetails = "applied_promo_details"
            
            case panNo = "pan_no"
            
            case customCartMeta = "custom_cart_meta"
            
            case alternatePickupPerson = "alternate_pickup_person"
            
            case freeGiftSelectionAvailable = "free_gift_selection_available"
            
        }

        public init(alternatePickupPerson: PlatformAlternatePickupPerson? = nil, appliedPromoDetails: [AppliedPromotion]? = nil, breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, cartId: Int? = nil, checkoutMode: String? = nil, comment: String? = nil, commonConfig: CartCommonConfig? = nil, coupon: CartDetailCoupon? = nil, couponText: String? = nil, currency: CartCurrency? = nil, customCartMeta: [String: Any]? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, freeGiftSelectionAvailable: Bool? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, notification: [String: Any]? = nil, panConfig: [String: Any]? = nil, panNo: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, staffUserId: String? = nil, success: Bool? = nil, uid: String? = nil) {
            
            self.cartId = cartId
            
            self.uid = uid
            
            self.couponText = couponText
            
            self.id = id
            
            self.panConfig = panConfig
            
            self.deliveryPromise = deliveryPromise
            
            self.comment = comment
            
            self.items = items
            
            self.paymentSelectionLock = paymentSelectionLock
            
            self.deliveryChargeInfo = deliveryChargeInfo
            
            self.commonConfig = commonConfig
            
            self.coupon = coupon
            
            self.restrictCheckout = restrictCheckout
            
            self.message = message
            
            self.notification = notification
            
            self.staffUserId = staffUserId
            
            self.success = success
            
            self.breakupValues = breakupValues
            
            self.isValid = isValid
            
            self.currency = currency
            
            self.checkoutMode = checkoutMode
            
            self.lastModified = lastModified
            
            self.buyNow = buyNow
            
            self.gstin = gstin
            
            self.appliedPromoDetails = appliedPromoDetails
            
            self.panNo = panNo
            
            self.customCartMeta = customCartMeta
            
            self.alternatePickupPerson = alternatePickupPerson
            
            self.freeGiftSelectionAvailable = freeGiftSelectionAvailable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
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
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
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
                    commonConfig = try container.decode(CartCommonConfig.self, forKey: .commonConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(CartDetailCoupon.self, forKey: .coupon)
                
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
                    notification = try container.decode([String: Any].self, forKey: .notification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staffUserId = try container.decode(String.self, forKey: .staffUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
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
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
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
                
            
            
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
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
                    buyNow = try container.decode(Bool.self, forKey: .buyNow)
                
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
                    appliedPromoDetails = try container.decode([AppliedPromotion].self, forKey: .appliedPromoDetails)
                
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
                    customCartMeta = try container.decode([String: Any].self, forKey: .customCartMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternatePickupPerson = try container.decode(PlatformAlternatePickupPerson.self, forKey: .alternatePickupPerson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    freeGiftSelectionAvailable = try container.decode(Bool.self, forKey: .freeGiftSelectionAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(panConfig, forKey: .panConfig)
            
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            
            
            
            try? container.encodeIfPresent(commonConfig, forKey: .commonConfig)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(notification, forKey: .notification)
            
            
            
            
            try? container.encodeIfPresent(staffUserId, forKey: .staffUserId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            
            
            
            try? container.encodeIfPresent(buyNow, forKey: .buyNow)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(appliedPromoDetails, forKey: .appliedPromoDetails)
            
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(customCartMeta, forKey: .customCartMeta)
            
            
            
            
            try? container.encodeIfPresent(alternatePickupPerson, forKey: .alternatePickupPerson)
            
            
            
            
            try? container.encodeIfPresent(freeGiftSelectionAvailable, forKey: .freeGiftSelectionAvailable)
            
            
        }
        
    }
}


