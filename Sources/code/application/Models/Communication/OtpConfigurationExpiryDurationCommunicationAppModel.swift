

import Foundation
public extension ApplicationClient.Communication {
    /*
        Model: OtpConfigurationExpiryDuration
        Used By: Communication
    */
    class OtpConfigurationExpiryDuration: Codable {
        
        public var time: Double
        
        public var denomination: String
        

        public enum CodingKeys: String, CodingKey {
            
            case time = "time"
            
            case denomination = "denomination"
            
        }

        public init(denomination: String, time: Double) {
            
            self.time = time
            
            self.denomination = denomination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            time = try container.decode(Double.self, forKey: .time)
            
            
            
            
            denomination = try container.decode(String.self, forKey: .denomination)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            try? container.encodeIfPresent(denomination, forKey: .denomination)
            
            
        }
        
    }
}
