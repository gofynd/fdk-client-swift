

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: CourierPartnersTat
        Used By: Logistic
    */
    class CourierPartnersTat: Codable {
        
        public var min: Int
        
        public var max: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: Int, min: Int) {
            
            self.min = min
            
            self.max = max
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            min = try container.decode(Int.self, forKey: .min)
            
            
            
            
            max = try container.decode(Int.self, forKey: .max)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
}
