

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: Coupon
        Used By: Cart
    */
    class Coupon: Codable {
        
        public var couponValue: Double?
        
        public var title: String?
        
        public var minimumCartValue: Double?
        
        public var subTitle: String?
        
        public var expiresOn: String?
        
        public var message: String?
        
        public var couponType: String?
        
        public var maxDiscountValue: Double?
        
        public var couponCode: String?
        
        public var isApplicable: Bool?
        
        public var description: String?
        
        public var isApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponValue = "coupon_value"
            
            case title = "title"
            
            case minimumCartValue = "minimum_cart_value"
            
            case subTitle = "sub_title"
            
            case expiresOn = "expires_on"
            
            case message = "message"
            
            case couponType = "coupon_type"
            
            case maxDiscountValue = "max_discount_value"
            
            case couponCode = "coupon_code"
            
            case isApplicable = "is_applicable"
            
            case description = "description"
            
            case isApplied = "is_applied"
            
        }

        public init(couponCode: String? = nil, couponType: String? = nil, couponValue: Double? = nil, description: String? = nil, expiresOn: String? = nil, isApplicable: Bool? = nil, isApplied: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, subTitle: String? = nil, title: String? = nil) {
            
            self.couponValue = couponValue
            
            self.title = title
            
            self.minimumCartValue = minimumCartValue
            
            self.subTitle = subTitle
            
            self.expiresOn = expiresOn
            
            self.message = message
            
            self.couponType = couponType
            
            self.maxDiscountValue = maxDiscountValue
            
            self.couponCode = couponCode
            
            self.isApplicable = isApplicable
            
            self.description = description
            
            self.isApplied = isApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                title = try container.decode(String.self, forKey: .title)
            
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
                subTitle = try container.decode(String.self, forKey: .subTitle)
            
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
                message = try container.decode(String.self, forKey: .message)
            
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
                isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
            
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
                isApplied = try container.decode(Bool.self, forKey: .isApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            
            
            
            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
            
            
            
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encode(couponType, forKey: .couponType)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            
            
            
            try? container.encode(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
        }
        
    }
}
