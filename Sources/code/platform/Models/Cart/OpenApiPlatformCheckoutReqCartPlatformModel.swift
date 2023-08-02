

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OpenApiPlatformCheckoutReq
        Used By: Cart
    */

    class OpenApiPlatformCheckoutReq: Codable {
        
        
        public var paymentMode: String?
        
        public var cartValue: Double
        
        public var cartItems: [OpenApiOrderItem]
        
        public var shippingAddress: ShippingAddress?
        
        public var loyaltyDiscount: Double?
        
        public var comment: String?
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        
        public var employeeDiscount: [String: Any]?
        
        public var coupon: String?
        
        public var cashbackApplied: Double
        
        public var gstin: String?
        
        public var billingAddress: ShippingAddress
        
        public var couponCode: String
        
        public var couponValue: Double
        
        public var deliveryCharges: Double
        
        public var affiliateOrderId: String?
        
        public var currencyCode: String?
        
        public var orderId: String?
        
        public var files: [OpenApiFiles]?
        
        public var codCharges: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMode = "payment_mode"
            
            case cartValue = "cart_value"
            
            case cartItems = "cart_items"
            
            case shippingAddress = "shipping_address"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case comment = "comment"
            
            case paymentMethods = "payment_methods"
            
            case employeeDiscount = "employee_discount"
            
            case coupon = "coupon"
            
            case cashbackApplied = "cashback_applied"
            
            case gstin = "gstin"
            
            case billingAddress = "billing_address"
            
            case couponCode = "coupon_code"
            
            case couponValue = "coupon_value"
            
            case deliveryCharges = "delivery_charges"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case currencyCode = "currency_code"
            
            case orderId = "order_id"
            
            case files = "files"
            
            case codCharges = "cod_charges"
            
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            
            self.paymentMode = paymentMode
            
            self.cartValue = cartValue
            
            self.cartItems = cartItems
            
            self.shippingAddress = shippingAddress
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.comment = comment
            
            self.paymentMethods = paymentMethods
            
            self.employeeDiscount = employeeDiscount
            
            self.coupon = coupon
            
            self.cashbackApplied = cashbackApplied
            
            self.gstin = gstin
            
            self.billingAddress = billingAddress
            
            self.couponCode = couponCode
            
            self.couponValue = couponValue
            
            self.deliveryCharges = deliveryCharges
            
            self.affiliateOrderId = affiliateOrderId
            
            self.currencyCode = currencyCode
            
            self.orderId = orderId
            
            self.files = files
            
            self.codCharges = codCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
                
            
            
            
                do {
                    shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
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
                
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)
                
            
            
            
                couponCode = try container.decode(String.self, forKey: .couponCode)
                
            
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
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
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encode(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encode(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
        }
        
    }
}


