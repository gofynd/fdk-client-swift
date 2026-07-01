

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Visibility
        Used By: Cart
    */

    class Visibility: Codable {
        
        
        public var couponList: Bool?
        
        public var pdp: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponList = "coupon_list"
            
            case pdp = "pdp"
            
        }

        public init(couponList: Bool? = nil, pdp: Bool? = nil) {
            
            self.couponList = couponList
            
            self.pdp = pdp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    couponList = try container.decode(Bool.self, forKey: .couponList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pdp = try container.decode(Bool.self, forKey: .pdp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponList, forKey: .couponList)
            
            
            
            
            try? container.encodeIfPresent(pdp, forKey: .pdp)
            
            
        }
        
    }
}


