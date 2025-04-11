

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CardReq
        Used By: Payment
    */
    class CardReq: Codable {
        
        public var cart: CartData?
        
        public var meta: [String: Any]?
        
        public var user: CartUser?
        
        public var coupon: [String: Any]?
        
        public var affiliate: Affiliate?
        
        public var billingAddress: Address?
        
        public var deliveryAddress: Address?
        
        public var redemptionRules: [String: Any]?
        
        public var paymentIdentifier: String?
        
        public var pickUpCustomerDetails: [String: Any]?
        
        public var paymentAutoConfirm: Bool?
        
        public var paymentMethods: [PaymentMethod]?
        
        public var couponId: String?
        
        public var aggregator: String?
        
        public var cartValue: Int?
        
        public var orderType: String?
        
        public var returnUrl: String?
        
        public var cashbackId: String?
        
        public var codCharges: Int?
        
        public var employeeId: String?
        
        public var paymentMode: String?
        
        public var cartId: Int?
        
        public var cashback: Int?
        
        public var merchantCode: String?
        
        public var orderingStore: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cart = "cart"
            
            case meta = "meta"
            
            case user = "user"
            
            case coupon = "coupon"
            
            case affiliate = "affiliate"
            
            case billingAddress = "billing_address"
            
            case deliveryAddress = "delivery_address"
            
            case redemptionRules = "redemption_rules"
            
            case paymentIdentifier = "payment_identifier"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case paymentMethods = "payment_methods"
            
            case couponId = "coupon_id"
            
            case aggregator = "aggregator"
            
            case cartValue = "cart_value"
            
            case orderType = "order_type"
            
            case returnUrl = "return_url"
            
            case cashbackId = "cashback_id"
            
            case codCharges = "cod_charges"
            
            case employeeId = "employee_id"
            
            case paymentMode = "payment_mode"
            
            case cartId = "cart_id"
            
            case cashback = "cashback"
            
            case merchantCode = "merchant_code"
            
            case orderingStore = "ordering_store"
            
        }

        public init(affiliate: Affiliate? = nil, aggregator: String? = nil, billingAddress: Address? = nil, cart: CartData? = nil, cartId: Int? = nil, cartValue: Int? = nil, cashback: Int? = nil, cashbackId: String? = nil, codCharges: Int? = nil, coupon: [String: Any]? = nil, couponId: String? = nil, deliveryAddress: Address? = nil, employeeId: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: String? = nil, orderType: String? = nil, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMethods: [PaymentMethod]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, redemptionRules: [String: Any]? = nil, returnUrl: String? = nil, user: CartUser? = nil) {
            
            self.cart = cart
            
            self.meta = meta
            
            self.user = user
            
            self.coupon = coupon
            
            self.affiliate = affiliate
            
            self.billingAddress = billingAddress
            
            self.deliveryAddress = deliveryAddress
            
            self.redemptionRules = redemptionRules
            
            self.paymentIdentifier = paymentIdentifier
            
            self.pickUpCustomerDetails = pickUpCustomerDetails
            
            self.paymentAutoConfirm = paymentAutoConfirm
            
            self.paymentMethods = paymentMethods
            
            self.couponId = couponId
            
            self.aggregator = aggregator
            
            self.cartValue = cartValue
            
            self.orderType = orderType
            
            self.returnUrl = returnUrl
            
            self.cashbackId = cashbackId
            
            self.codCharges = codCharges
            
            self.employeeId = employeeId
            
            self.paymentMode = paymentMode
            
            self.cartId = cartId
            
            self.cashback = cashback
            
            self.merchantCode = merchantCode
            
            self.orderingStore = orderingStore
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                cart = try container.decode(CartData.self, forKey: .cart)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode(CartUser.self, forKey: .user)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                affiliate = try container.decode(Affiliate.self, forKey: .affiliate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                billingAddress = try container.decode(Address.self, forKey: .billingAddress)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryAddress = try container.decode(Address.self, forKey: .deliveryAddress)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                redemptionRules = try container.decode([String: Any].self, forKey: .redemptionRules)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponId = try container.decode(String.self, forKey: .couponId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartValue = try container.decode(Int.self, forKey: .cartValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderType = try container.decode(String.self, forKey: .orderType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnUrl = try container.decode(String.self, forKey: .returnUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cashbackId = try container.decode(String.self, forKey: .cashbackId)
            
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
                employeeId = try container.decode(String.self, forKey: .employeeId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
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
                cashback = try container.decode(Int.self, forKey: .cashback)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderingStore = try container.decode(String.self, forKey: .orderingStore)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            try? container.encodeIfPresent(affiliate, forKey: .affiliate)
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            try? container.encodeIfPresent(redemptionRules, forKey: .redemptionRules)
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            try? container.encodeIfPresent(couponId, forKey: .couponId)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
            
            try? container.encodeIfPresent(cashbackId, forKey: .cashbackId)
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            try? container.encodeIfPresent(employeeId, forKey: .employeeId)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
        }
        
    }
}
