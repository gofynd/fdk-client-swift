

import Foundation
public extension ApplicationClient.Communication {
    /*
        Model: OtpConfigurationExpiry
        Used By: Communication
    */
    class OtpConfigurationExpiry: Codable {
        
        public var duration: OtpConfigurationExpiryDuration
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case type = "type"
            
        }

        public init(duration: OtpConfigurationExpiryDuration, type: String) {
            
            self.duration = duration
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            duration = try container.decode(OtpConfigurationExpiryDuration.self, forKey: .duration)
            
            
            
            
            type = try container.decode(String.self, forKey: .type)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
