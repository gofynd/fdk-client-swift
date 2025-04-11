

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ServiceabilityLocation
        Used By: Logistic
    */
    class ServiceabilityLocation: Codable {
        
        public var longitude: String
        
        public var latitude: String
        

        public enum CodingKeys: String, CodingKey {
            
            case longitude = "longitude"
            
            case latitude = "latitude"
            
        }

        public init(latitude: String, longitude: String) {
            
            self.longitude = longitude
            
            self.latitude = latitude
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            longitude = try container.decode(String.self, forKey: .longitude)
            
            
            
            
            latitude = try container.decode(String.self, forKey: .latitude)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
        }
        
    }
}
