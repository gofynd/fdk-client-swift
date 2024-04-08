

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ArticleAttributes
        Used By: Logistic
    */
    class ArticleAttributes: Codable {
        
        public var batteryOperated: String
        
        public var isFlammable: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batteryOperated = "battery_operated"
            
            case isFlammable = "is_flammable"
            
        }

        public init(batteryOperated: String, isFlammable: String) {
            
            self.batteryOperated = batteryOperated
            
            self.isFlammable = isFlammable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            batteryOperated = try container.decode(String.self, forKey: .batteryOperated)
            
            
            
            
            isFlammable = try container.decode(String.self, forKey: .isFlammable)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(batteryOperated, forKey: .batteryOperated)
            
            
            
            try? container.encodeIfPresent(isFlammable, forKey: .isFlammable)
            
            
        }
        
    }
}
