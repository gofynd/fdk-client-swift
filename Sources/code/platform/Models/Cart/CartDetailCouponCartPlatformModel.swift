

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartDetailCoupon
        Used By: Cart
    */

    class CartDetailCoupon: Codable {
        
        
        public var cashbackAmount: Double?
        
        public var cashbackMessagePrimary: String?
        
        public var cashbackMessageSecondary: String?
        
        public var couponCode: String?
        
        public var couponDescription: String?
        
        public var couponId: String?
        
        public var couponSubtitle: String?
        
        public var couponTitle: String?
        
        public var couponType: String?
        
        public var couponValue: Double?
        
        public var discount: Double?
        
        public var isApplied: Bool?
        
        public var isValid: Bool?
        
        public var maximumDiscountValue: Double?
        
        public var message: String?
        
        public var minimumCartValue: Double?
        
        public var medias: [CartCouponMedias]?
        
        public var mrpCoupon: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cashbackAmount = "cashback_amount"
            
            case cashbackMessagePrimary = "cashback_message_primary"
            
            case cashbackMessageSecondary = "cashback_message_secondary"
            
            case couponCode = "coupon_code"
            
            case couponDescription = "coupon_description"
            
            case couponId = "coupon_id"
            
            case couponSubtitle = "coupon_subtitle"
            
            case couponTitle = "coupon_title"
            
            case couponType = "coupon_type"
            
            case couponValue = "coupon_value"
            
            case discount = "discount"
            
            case isApplied = "is_applied"
            
            case isValid = "is_valid"
            
            case maximumDiscountValue = "maximum_discount_value"
            
            case message = "message"
            
            case minimumCartValue = "minimum_cart_value"
            
            case medias = "medias"
            
            case mrpCoupon = "mrp_coupon"
            
        }

        public init(cashbackAmount: Double? = nil, cashbackMessagePrimary: String? = nil, cashbackMessageSecondary: String? = nil, couponCode: String? = nil, couponDescription: String? = nil, couponId: String? = nil, couponSubtitle: String? = nil, couponTitle: String? = nil, couponType: String? = nil, couponValue: Double? = nil, discount: Double? = nil, isApplied: Bool? = nil, isValid: Bool? = nil, maximumDiscountValue: Double? = nil, medias: [CartCouponMedias]? = nil, message: String? = nil, minimumCartValue: Double? = nil, mrpCoupon: Bool? = nil) {
            
            self.cashbackAmount = cashbackAmount
            
            self.cashbackMessagePrimary = cashbackMessagePrimary
            
            self.cashbackMessageSecondary = cashbackMessageSecondary
            
            self.couponCode = couponCode
            
            self.couponDescription = couponDescription
            
            self.couponId = couponId
            
            self.couponSubtitle = couponSubtitle
            
            self.couponTitle = couponTitle
            
            self.couponType = couponType
            
            self.couponValue = couponValue
            
            self.discount = discount
            
            self.isApplied = isApplied
            
            self.isValid = isValid
            
            self.maximumDiscountValue = maximumDiscountValue
            
            self.message = message
            
            self.minimumCartValue = minimumCartValue
            
            self.medias = medias
            
            self.mrpCoupon = mrpCoupon
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cashbackAmount = try container.decode(Double.self, forKey: .cashbackAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackMessagePrimary = try container.decode(String.self, forKey: .cashbackMessagePrimary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackMessageSecondary = try container.decode(String.self, forKey: .cashbackMessageSecondary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponDescription = try container.decode(String.self, forKey: .couponDescription)
                
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
                    couponSubtitle = try container.decode(String.self, forKey: .couponSubtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponTitle = try container.decode(String.self, forKey: .couponTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
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
                    maximumDiscountValue = try container.decode(Double.self, forKey: .maximumDiscountValue)
                
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
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([CartCouponMedias].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpCoupon = try container.decode(Bool.self, forKey: .mrpCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cashbackAmount, forKey: .cashbackAmount)
            
            
            
            
            try? container.encodeIfPresent(cashbackMessagePrimary, forKey: .cashbackMessagePrimary)
            
            
            
            
            try? container.encodeIfPresent(cashbackMessageSecondary, forKey: .cashbackMessageSecondary)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(couponDescription, forKey: .couponDescription)
            
            
            
            
            try? container.encodeIfPresent(couponId, forKey: .couponId)
            
            
            
            
            try? container.encodeIfPresent(couponSubtitle, forKey: .couponSubtitle)
            
            
            
            
            try? container.encodeIfPresent(couponTitle, forKey: .couponTitle)
            
            
            
            
            try? container.encodeIfPresent(couponType, forKey: .couponType)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(maximumDiscountValue, forKey: .maximumDiscountValue)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(mrpCoupon, forKey: .mrpCoupon)
            
            
        }
        
    }
}


