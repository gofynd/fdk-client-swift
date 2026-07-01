

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferCouponConfiguration
        Used By: Cart
    */

    class OfferCouponConfiguration: Codable {
        
        
        public var couponCount: Int?
        
        public var couponPrefix: String?
        
        public var couponType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case couponCount = "coupon_count"
            
            case couponPrefix = "coupon_prefix"
            
            case couponType = "coupon_type"
            
        }

        public init(couponCount: Int? = nil, couponPrefix: String? = nil, couponType: String) {
            
            self.couponCount = couponCount
            
            self.couponPrefix = couponPrefix
            
            self.couponType = couponType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    couponCount = try container.decode(Int.self, forKey: .couponCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponPrefix = try container.decode(String.self, forKey: .couponPrefix)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                couponType = try container.decode(String.self, forKey: .couponType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponCount, forKey: .couponCount)
            
            
            
            
            try? container.encodeIfPresent(couponPrefix, forKey: .couponPrefix)
            
            
            
            
            try? container.encodeIfPresent(couponType, forKey: .couponType)
            
            
        }
        
    }
}


