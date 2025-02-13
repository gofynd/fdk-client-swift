

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionsPayableCategory
        Used By: Cart
    */

    class CouponOptionsPayableCategory: Codable {
        
        
        public var fynd: String?
        
        public var seller: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fynd = "fynd"
            
            case seller = "seller"
            
        }

        public init(fynd: String? = nil, seller: String? = nil) {
            
            self.fynd = fynd
            
            self.seller = seller
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fynd = try container.decode(String.self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seller = try container.decode(String.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
        }
        
    }
}


