

import Foundation
public extension PlatformClient {
    /*
        Model: OpenApiPlatformCheckoutReq
        Used By: Cart
    */

    class OpenApiPlatformCheckoutReq: Codable {
        
        
        public var cartItems: [OpenApiOrderItem]
        
        public var couponValue: Double
        
        public var orderId: String?
        
        public var couponCode: String
        
        public var comment: String?
        
        public var affiliateOrderId: String?
        
        public var files: [OpenApiFiles]?
        
        public var employeeDiscount: [String: Any]?
        
        public var cashbackApplied: Double
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        
        public var codCharges: Double
        
        public var loyaltyDiscount: Double?
        
        public var deliveryCharges: Double
        
        public var cartValue: Double
        
        public var paymentMode: String?
        
        public var coupon: String?
        
        public var gstin: String?
        
        public var billingAddress: ShippingAddress
        
        public var currencyCode: String?
        
        public var shippingAddress: ShippingAddress?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
            case couponValue = "coupon_value"
            
            case orderId = "order_id"
            
            case couponCode = "coupon_code"
            
            case comment = "comment"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case files = "files"
            
            case employeeDiscount = "employee_discount"
            
            case cashbackApplied = "cashback_applied"
            
            case paymentMethods = "payment_methods"
            
            case codCharges = "cod_charges"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case deliveryCharges = "delivery_charges"
            
            case cartValue = "cart_value"
            
            case paymentMode = "payment_mode"
            
            case coupon = "coupon"
            
            case gstin = "gstin"
            
            case billingAddress = "billing_address"
            
            case currencyCode = "currency_code"
            
            case shippingAddress = "shipping_address"
            
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            
            self.cartItems = cartItems
            
            self.couponValue = couponValue
            
            self.orderId = orderId
            
            self.couponCode = couponCode
            
            self.comment = comment
            
            self.affiliateOrderId = affiliateOrderId
            
            self.files = files
            
            self.employeeDiscount = employeeDiscount
            
            self.cashbackApplied = cashbackApplied
            
            self.paymentMethods = paymentMethods
            
            self.codCharges = codCharges
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.deliveryCharges = deliveryCharges
            
            self.cartValue = cartValue
            
            self.paymentMode = paymentMode
            
            self.coupon = coupon
            
            self.gstin = gstin
            
            self.billingAddress = billingAddress
            
            self.currencyCode = currencyCode
            
            self.shippingAddress = shippingAddress
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
                
            
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                couponCode = try container.decode(String.self, forKey: .couponCode)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
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
                
            
            
                do {
                    employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
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
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)
                
            
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encode(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encode(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
        }
        
    }
}
