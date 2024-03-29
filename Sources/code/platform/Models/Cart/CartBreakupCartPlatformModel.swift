

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartBreakup
        Used By: Cart
    */

    class CartBreakup: Codable {
        
        
        public var coupon: CouponBreakup?
        
        public var display: [DisplayBreakup]?
        
        public var loyaltyPoints: LoyaltyPoints?
        
        public var raw: RawBreakup?
        

        public enum CodingKeys: String, CodingKey {
            
            case coupon = "coupon"
            
            case display = "display"
            
            case loyaltyPoints = "loyalty_points"
            
            case raw = "raw"
            
        }

        public init(coupon: CouponBreakup? = nil, display: [DisplayBreakup]? = nil, loyaltyPoints: LoyaltyPoints? = nil, raw: RawBreakup? = nil) {
            
            self.coupon = coupon
            
            self.display = display
            
            self.loyaltyPoints = loyaltyPoints
            
            self.raw = raw
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    coupon = try container.decode(CouponBreakup.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
            
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            
        }
        
    }
}


