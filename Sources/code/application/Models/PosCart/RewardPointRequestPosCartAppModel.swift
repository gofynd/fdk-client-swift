

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: RewardPointRequest
        Used By: PosCart
    */
    class RewardPointRequest: Codable {
        
        public var points: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case points = "points"
            
        }

        public init(points: Bool) {
            
            self.points = points
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            points = try container.decode(Bool.self, forKey: .points)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            
        }
        
    }
}
