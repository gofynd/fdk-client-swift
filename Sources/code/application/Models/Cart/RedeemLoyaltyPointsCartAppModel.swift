

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: RedeemLoyaltyPoints
        Used By: Cart
    */
    class RedeemLoyaltyPoints: Codable {
        
        public var redeemPoints: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case redeemPoints = "redeem_points"
            
        }

        public init(redeemPoints: Bool) {
            
            self.redeemPoints = redeemPoints
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            redeemPoints = try container.decode(Bool.self, forKey: .redeemPoints)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(redeemPoints, forKey: .redeemPoints)
            
            
        }
        
    }
}
