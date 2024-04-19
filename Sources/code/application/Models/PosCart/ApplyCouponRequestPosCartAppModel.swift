

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: ApplyCouponRequest
        Used By: PosCart
    */
    class ApplyCouponRequest: Codable {
        
        public var couponCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case couponCode = "coupon_code"
            
        }

        public init(couponCode: String) {
            
            self.couponCode = couponCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            couponCode = try container.decode(String.self, forKey: .couponCode)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
        }
        
    }
}
