

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Coupon
        Used By: Cart
    */

    class Coupon: Codable {
        
        
        public var title: String?
        
        public var rule: [DiscountRules]?
        
        public var maxDiscountValue: Double?
        
        public var couponCode: String?
        
        public var isApplied: Bool?
        
        public var couponType: String?
        
        public var expiresOn: String?
        
        public var couponValue: Double?
        
        public var subTitle: String?
        
        public var minimumCartValue: Double?
        
        public var isApplicable: Bool?
        
        public var message: String?
        
        public var description: String?
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var couponApplicableMessage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case rule = "rule"
            
            case maxDiscountValue = "max_discount_value"
            
            case couponCode = "coupon_code"
            
            case isApplied = "is_applied"
            
            case couponType = "coupon_type"
            
            case expiresOn = "expires_on"
            
            case couponValue = "coupon_value"
            
            case subTitle = "sub_title"
            
            case minimumCartValue = "minimum_cart_value"
            
            case isApplicable = "is_applicable"
            
            case message = "message"
            
            case description = "description"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case couponApplicableMessage = "coupon_applicable_message"
            
        }

        public init(couponApplicableMessage: String? = nil, couponCode: String? = nil, couponType: String? = nil, couponValue: Double? = nil, description: String? = nil, endDate: String? = nil, expiresOn: String? = nil, isApplicable: Bool? = nil, isApplied: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, rule: [DiscountRules]? = nil, startDate: String? = nil, subTitle: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.rule = rule
            
            self.maxDiscountValue = maxDiscountValue
            
            self.couponCode = couponCode
            
            self.isApplied = isApplied
            
            self.couponType = couponType
            
            self.expiresOn = expiresOn
            
            self.couponValue = couponValue
            
            self.subTitle = subTitle
            
            self.minimumCartValue = minimumCartValue
            
            self.isApplicable = isApplicable
            
            self.message = message
            
            self.description = description
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.couponApplicableMessage = couponApplicableMessage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rule = try container.decode([DiscountRules].self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
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
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
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
                    expiresOn = try container.decode(String.self, forKey: .expiresOn)
                
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
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
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
                    isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponApplicableMessage = try container.decode(String.self, forKey: .couponApplicableMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(couponType, forKey: .couponType)
            
            
            
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
            
            
            
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            
            
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(couponApplicableMessage, forKey: .couponApplicableMessage)
            
            
        }
        
    }
}


