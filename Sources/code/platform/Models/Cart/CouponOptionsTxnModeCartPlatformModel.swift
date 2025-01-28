

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionsTxnMode
        Used By: Cart
    */

    class CouponOptionsTxnMode: Codable {
        
        
        public var fyndCash: String?
        
        public var cash: String?
        
        public var coupon: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndCash = "fynd_cash"
            
            case cash = "cash"
            
            case coupon = "coupon"
            
        }

        public init(cash: String? = nil, coupon: String? = nil, fyndCash: String? = nil) {
            
            self.fyndCash = fyndCash
            
            self.cash = cash
            
            self.coupon = coupon
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndCash = try container.decode(String.self, forKey: .fyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cash = try container.decode(String.self, forKey: .cash)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            
            try? container.encodeIfPresent(cash, forKey: .cash)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
}


