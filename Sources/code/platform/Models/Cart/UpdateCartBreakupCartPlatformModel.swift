

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UpdateCartBreakup
        Used By: Cart
    */

    class UpdateCartBreakup: Codable {
        
        
        public var storeCredit: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCredit = "store_credit"
            
        }

        public init(storeCredit: Bool? = nil) {
            
            self.storeCredit = storeCredit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeCredit = try container.decode(Bool.self, forKey: .storeCredit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeCredit, forKey: .storeCredit)
            
            
        }
        
    }
}


