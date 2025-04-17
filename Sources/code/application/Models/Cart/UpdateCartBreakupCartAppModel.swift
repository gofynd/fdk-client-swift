

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: UpdateCartBreakup
        Used By: Cart
    */
    class UpdateCartBreakup: Codable {
        
        public var storeCredit: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case storeCredit = "store_credit"
            
        }

        public init(storeCredit: Bool) {
            
            self.storeCredit = storeCredit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            storeCredit = try container.decode(Bool.self, forKey: .storeCredit)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(storeCredit, forKey: .storeCredit)
            
            
        }
        
    }
}
