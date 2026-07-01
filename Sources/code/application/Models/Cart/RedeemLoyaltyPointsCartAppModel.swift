

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: RedeemLoyaltyPoints
        Used By: Cart
    */
    class RedeemLoyaltyPoints: Codable {
        
        public var redeemPoints: Bool
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case redeemPoints = "redeem_points"
            
            case meta = "meta"
            
        }

        public init(meta: [String: Any]? = nil, redeemPoints: Bool) {
            
            self.redeemPoints = redeemPoints
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            redeemPoints = try container.decode(Bool.self, forKey: .redeemPoints)
            
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(redeemPoints, forKey: .redeemPoints)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
