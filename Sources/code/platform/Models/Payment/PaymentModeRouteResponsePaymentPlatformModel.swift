

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentModeRouteResponse
        Used By: Payment
    */

    class PaymentModeRouteResponse: Codable {
        
        
        public var paymentOptions: PaymentOptionAndFlow
        
        public var success: Bool
        
        public var paymentBreakup: [String: Any]?
        
        public var advancePayment: [AdvancePaymentObject]?
        
        public var deliveryCharges: Double?
        
        public var storeCode: String?
        
        public var orderId: String?
        
        public var codMessage: String?
        
        public var deliverySlots: [DeliverySlot]?
        
        public var userType: String?
        
        public var codAvailable: Bool?
        
        public var codCharges: Int?
        
        public var maxCartValue: Int?
        
        public var minCartValue: Int?
        
        public var storeEmpList: [String]?
        
        public var deliveryChargeOrderValue: Int?
        
        public var codLimit: Int?
        
        public var remainingLimit: Double?
        
        public var codLimitPerOrder: Int?
        
        public var productCodData: [String: Any]?
        
        public var isProductCodAvailable: Bool?
        
        public var isPincodeCodAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
            case paymentBreakup = "payment_breakup"
            
            case advancePayment = "advance_payment"
            
            case deliveryCharges = "delivery_charges"
            
            case storeCode = "store_code"
            
            case orderId = "order_id"
            
            case codMessage = "cod_message"
            
            case deliverySlots = "delivery_slots"
            
            case userType = "user_type"
            
            case codAvailable = "cod_available"
            
            case codCharges = "cod_charges"
            
            case maxCartValue = "max_cart_value"
            
            case minCartValue = "min_cart_value"
            
            case storeEmpList = "store_emp_list"
            
            case deliveryChargeOrderValue = "delivery_charge_order_value"
            
            case codLimit = "cod_limit"
            
            case remainingLimit = "remaining_limit"
            
            case codLimitPerOrder = "cod_limit_per_order"
            
            case productCodData = "product_cod_data"
            
            case isProductCodAvailable = "is_product_cod_available"
            
            case isPincodeCodAvailable = "is_pincode_cod_available"
            
        }

        public init(advancePayment: [AdvancePaymentObject]? = nil, codAvailable: Bool? = nil, codCharges: Int? = nil, codLimit: Int? = nil, codLimitPerOrder: Int? = nil, codMessage: String? = nil, deliveryCharges: Double? = nil, deliveryChargeOrderValue: Int? = nil, deliverySlots: [DeliverySlot]? = nil, isPincodeCodAvailable: Bool? = nil, isProductCodAvailable: Bool? = nil, maxCartValue: Int? = nil, minCartValue: Int? = nil, orderId: String? = nil, paymentBreakup: [String: Any]? = nil, paymentOptions: PaymentOptionAndFlow, productCodData: [String: Any]? = nil, remainingLimit: Double? = nil, storeCode: String? = nil, storeEmpList: [String]? = nil, success: Bool, userType: String? = nil) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
            self.paymentBreakup = paymentBreakup
            
            self.advancePayment = advancePayment
            
            self.deliveryCharges = deliveryCharges
            
            self.storeCode = storeCode
            
            self.orderId = orderId
            
            self.codMessage = codMessage
            
            self.deliverySlots = deliverySlots
            
            self.userType = userType
            
            self.codAvailable = codAvailable
            
            self.codCharges = codCharges
            
            self.maxCartValue = maxCartValue
            
            self.minCartValue = minCartValue
            
            self.storeEmpList = storeEmpList
            
            self.deliveryChargeOrderValue = deliveryChargeOrderValue
            
            self.codLimit = codLimit
            
            self.remainingLimit = remainingLimit
            
            self.codLimitPerOrder = codLimitPerOrder
            
            self.productCodData = productCodData
            
            self.isProductCodAvailable = isProductCodAvailable
            
            self.isPincodeCodAvailable = isPincodeCodAvailable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentBreakup = try container.decode([String: Any].self, forKey: .paymentBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    advancePayment = try container.decode([AdvancePaymentObject].self, forKey: .advancePayment)
                
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
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
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
                    codMessage = try container.decode(String.self, forKey: .codMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlots = try container.decode([DeliverySlot].self, forKey: .deliverySlots)
                
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
                    codAvailable = try container.decode(Bool.self, forKey: .codAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Int.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxCartValue = try container.decode(Int.self, forKey: .maxCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minCartValue = try container.decode(Int.self, forKey: .minCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeEmpList = try container.decode([String].self, forKey: .storeEmpList)
                
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
                    codLimit = try container.decode(Int.self, forKey: .codLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codLimitPerOrder = try container.decode(Int.self, forKey: .codLimitPerOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productCodData = try container.decode([String: Any].self, forKey: .productCodData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isProductCodAvailable = try container.decode(Bool.self, forKey: .isProductCodAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPincodeCodAvailable = try container.decode(Bool.self, forKey: .isPincodeCodAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentBreakup, forKey: .paymentBreakup)
            
            
            
            
            try? container.encodeIfPresent(advancePayment, forKey: .advancePayment)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(codMessage, forKey: .codMessage)
            
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            
            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(maxCartValue, forKey: .maxCartValue)
            
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            
            try? container.encodeIfPresent(storeEmpList, forKey: .storeEmpList)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
            
            
            
            
            try? container.encodeIfPresent(codLimit, forKey: .codLimit)
            
            
            
            
            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
            
            
            
            
            try? container.encodeIfPresent(codLimitPerOrder, forKey: .codLimitPerOrder)
            
            
            
            
            try? container.encodeIfPresent(productCodData, forKey: .productCodData)
            
            
            
            
            try? container.encodeIfPresent(isProductCodAvailable, forKey: .isProductCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(isPincodeCodAvailable, forKey: .isPincodeCodAvailable)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentModeRouteResponse
        Used By: Payment
    */

    class PaymentModeRouteResponse: Codable {
        
        
        public var paymentOptions: PaymentOptionAndFlow
        
        public var success: Bool
        
        public var paymentBreakup: [String: Any]?
        
        public var advancePayment: [AdvancePaymentObject]?
        
        public var deliveryCharges: Double?
        
        public var storeCode: String?
        
        public var orderId: String?
        
        public var codMessage: String?
        
        public var deliverySlots: [DeliverySlot]?
        
        public var userType: String?
        
        public var codAvailable: Bool?
        
        public var codCharges: Int?
        
        public var maxCartValue: Int?
        
        public var minCartValue: Int?
        
        public var storeEmpList: [String]?
        
        public var deliveryChargeOrderValue: Int?
        
        public var codLimit: Int?
        
        public var remainingLimit: Double?
        
        public var codLimitPerOrder: Int?
        
        public var productCodData: [String: Any]?
        
        public var isProductCodAvailable: Bool?
        
        public var isPincodeCodAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
            case paymentBreakup = "payment_breakup"
            
            case advancePayment = "advance_payment"
            
            case deliveryCharges = "delivery_charges"
            
            case storeCode = "store_code"
            
            case orderId = "order_id"
            
            case codMessage = "cod_message"
            
            case deliverySlots = "delivery_slots"
            
            case userType = "user_type"
            
            case codAvailable = "cod_available"
            
            case codCharges = "cod_charges"
            
            case maxCartValue = "max_cart_value"
            
            case minCartValue = "min_cart_value"
            
            case storeEmpList = "store_emp_list"
            
            case deliveryChargeOrderValue = "delivery_charge_order_value"
            
            case codLimit = "cod_limit"
            
            case remainingLimit = "remaining_limit"
            
            case codLimitPerOrder = "cod_limit_per_order"
            
            case productCodData = "product_cod_data"
            
            case isProductCodAvailable = "is_product_cod_available"
            
            case isPincodeCodAvailable = "is_pincode_cod_available"
            
        }

        public init(advancePayment: [AdvancePaymentObject]? = nil, codAvailable: Bool? = nil, codCharges: Int? = nil, codLimit: Int? = nil, codLimitPerOrder: Int? = nil, codMessage: String? = nil, deliveryCharges: Double? = nil, deliveryChargeOrderValue: Int? = nil, deliverySlots: [DeliverySlot]? = nil, isPincodeCodAvailable: Bool? = nil, isProductCodAvailable: Bool? = nil, maxCartValue: Int? = nil, minCartValue: Int? = nil, orderId: String? = nil, paymentBreakup: [String: Any]? = nil, paymentOptions: PaymentOptionAndFlow, productCodData: [String: Any]? = nil, remainingLimit: Double? = nil, storeCode: String? = nil, storeEmpList: [String]? = nil, success: Bool, userType: String? = nil) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
            self.paymentBreakup = paymentBreakup
            
            self.advancePayment = advancePayment
            
            self.deliveryCharges = deliveryCharges
            
            self.storeCode = storeCode
            
            self.orderId = orderId
            
            self.codMessage = codMessage
            
            self.deliverySlots = deliverySlots
            
            self.userType = userType
            
            self.codAvailable = codAvailable
            
            self.codCharges = codCharges
            
            self.maxCartValue = maxCartValue
            
            self.minCartValue = minCartValue
            
            self.storeEmpList = storeEmpList
            
            self.deliveryChargeOrderValue = deliveryChargeOrderValue
            
            self.codLimit = codLimit
            
            self.remainingLimit = remainingLimit
            
            self.codLimitPerOrder = codLimitPerOrder
            
            self.productCodData = productCodData
            
            self.isProductCodAvailable = isProductCodAvailable
            
            self.isPincodeCodAvailable = isPincodeCodAvailable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentBreakup = try container.decode([String: Any].self, forKey: .paymentBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    advancePayment = try container.decode([AdvancePaymentObject].self, forKey: .advancePayment)
                
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
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
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
                    codMessage = try container.decode(String.self, forKey: .codMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlots = try container.decode([DeliverySlot].self, forKey: .deliverySlots)
                
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
                    codAvailable = try container.decode(Bool.self, forKey: .codAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Int.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxCartValue = try container.decode(Int.self, forKey: .maxCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minCartValue = try container.decode(Int.self, forKey: .minCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeEmpList = try container.decode([String].self, forKey: .storeEmpList)
                
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
                    codLimit = try container.decode(Int.self, forKey: .codLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codLimitPerOrder = try container.decode(Int.self, forKey: .codLimitPerOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productCodData = try container.decode([String: Any].self, forKey: .productCodData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isProductCodAvailable = try container.decode(Bool.self, forKey: .isProductCodAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPincodeCodAvailable = try container.decode(Bool.self, forKey: .isPincodeCodAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentBreakup, forKey: .paymentBreakup)
            
            
            
            
            try? container.encodeIfPresent(advancePayment, forKey: .advancePayment)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(codMessage, forKey: .codMessage)
            
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            
            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(maxCartValue, forKey: .maxCartValue)
            
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            
            try? container.encodeIfPresent(storeEmpList, forKey: .storeEmpList)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
            
            
            
            
            try? container.encodeIfPresent(codLimit, forKey: .codLimit)
            
            
            
            
            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
            
            
            
            
            try? container.encodeIfPresent(codLimitPerOrder, forKey: .codLimitPerOrder)
            
            
            
            
            try? container.encodeIfPresent(productCodData, forKey: .productCodData)
            
            
            
            
            try? container.encodeIfPresent(isProductCodAvailable, forKey: .isProductCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(isPincodeCodAvailable, forKey: .isPincodeCodAvailable)
            
            
        }
        
    }
}


