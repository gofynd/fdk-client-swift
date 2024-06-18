

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CheckCart
        Used By: Cart
    */
    class CheckCart: Codable {
        
        public var checkoutMode: String?
        
        public var userType: String?
        
        public var codMessage: String?
        
        public var cartId: Int?
        
        public var isValid: Bool?
        
        public var deliveryCharges: Double?
        
        public var id: String?
        
        public var paymentSelectionLock: PaymentSelectionLock?
        
        public var errorMessage: String?
        
        public var deliveryPromise: ShipmentPromise?
        
        public var comment: String?
        
        public var items: [CartProductInfo]?
        
        public var uid: String?
        
        public var deliveryChargeOrderValue: Int?
        
        public var deliveryChargeInfo: String?
        
        public var codAvailable: Bool?
        
        public var success: Bool?
        
        public var storeCode: String?
        
        public var message: String?
        
        public var gstin: String?
        
        public var restrictCheckout: Bool?
        
        public var lastModified: String?
        
        public var orderId: String?
        
        public var breakupValues: CartBreakup?
        
        public var currency: CartCurrency?
        
        public var storeEmps: [[String: Any]]?
        
        public var couponText: String?
        
        public var buyNow: Bool?
        
        public var codCharges: Double?
        
        public var customCartMeta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case checkoutMode = "checkout_mode"
            
            case userType = "user_type"
            
            case codMessage = "cod_message"
            
            case cartId = "cart_id"
            
            case isValid = "is_valid"
            
            case deliveryCharges = "delivery_charges"
            
            case id = "id"
            
            case paymentSelectionLock = "payment_selection_lock"
            
            case errorMessage = "error_message"
            
            case deliveryPromise = "delivery_promise"
            
            case comment = "comment"
            
            case items = "items"
            
            case uid = "uid"
            
            case deliveryChargeOrderValue = "delivery_charge_order_value"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case codAvailable = "cod_available"
            
            case success = "success"
            
            case storeCode = "store_code"
            
            case message = "message"
            
            case gstin = "gstin"
            
            case restrictCheckout = "restrict_checkout"
            
            case lastModified = "last_modified"
            
            case orderId = "order_id"
            
            case breakupValues = "breakup_values"
            
            case currency = "currency"
            
            case storeEmps = "store_emps"
            
            case couponText = "coupon_text"
            
            case buyNow = "buy_now"
            
            case codCharges = "cod_charges"
            
            case customCartMeta = "custom_cart_meta"
            
        }

        public init(breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, cartId: Int? = nil, checkoutMode: String? = nil, codAvailable: Bool? = nil, codCharges: Double? = nil, codMessage: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, customCartMeta: [String: Any]? = nil, deliveryCharges: Double? = nil, deliveryChargeInfo: String? = nil, deliveryChargeOrderValue: Int? = nil, deliveryPromise: ShipmentPromise? = nil, errorMessage: String? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, orderId: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, storeCode: String? = nil, storeEmps: [[String: Any]]? = nil, success: Bool? = nil, uid: String? = nil, userType: String? = nil) {
            
            self.checkoutMode = checkoutMode
            
            self.userType = userType
            
            self.codMessage = codMessage
            
            self.cartId = cartId
            
            self.isValid = isValid
            
            self.deliveryCharges = deliveryCharges
            
            self.id = id
            
            self.paymentSelectionLock = paymentSelectionLock
            
            self.errorMessage = errorMessage
            
            self.deliveryPromise = deliveryPromise
            
            self.comment = comment
            
            self.items = items
            
            self.uid = uid
            
            self.deliveryChargeOrderValue = deliveryChargeOrderValue
            
            self.deliveryChargeInfo = deliveryChargeInfo
            
            self.codAvailable = codAvailable
            
            self.success = success
            
            self.storeCode = storeCode
            
            self.message = message
            
            self.gstin = gstin
            
            self.restrictCheckout = restrictCheckout
            
            self.lastModified = lastModified
            
            self.orderId = orderId
            
            self.breakupValues = breakupValues
            
            self.currency = currency
            
            self.storeEmps = storeEmps
            
            self.couponText = couponText
            
            self.buyNow = buyNow
            
            self.codCharges = codCharges
            
            self.customCartMeta = customCartMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userType = try container.decode(String.self, forKey: .userType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codMessage = try container.decode(String.self, forKey: .codMessage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartId = try container.decode(Int.self, forKey: .cartId)
            
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
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
            
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
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                errorMessage = try container.decode(String.self, forKey: .errorMessage)
            
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
                uid = try container.decode(String.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)
            
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
                codAvailable = try container.decode(Bool.self, forKey: .codAvailable)
            
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
                storeCode = try container.decode(String.self, forKey: .storeCode)
            
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
                gstin = try container.decode(String.self, forKey: .gstin)
            
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
                lastModified = try container.decode(String.self, forKey: .lastModified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
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
                currency = try container.decode(CartCurrency.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)
            
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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            try? container.encodeIfPresent(codMessage, forKey: .codMessage)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
            
            
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
            
            
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            
            
            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
            
            
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            
            
            try? container.encodeIfPresent(buyNow, forKey: .buyNow)
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            try? container.encodeIfPresent(customCartMeta, forKey: .customCartMeta)
            
            
        }
        
    }
}
