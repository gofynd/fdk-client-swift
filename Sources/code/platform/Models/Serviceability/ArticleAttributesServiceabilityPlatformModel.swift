

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ArticleAttributes
        Used By: Serviceability
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



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ArticleAttributes
        Used By: Serviceability
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


