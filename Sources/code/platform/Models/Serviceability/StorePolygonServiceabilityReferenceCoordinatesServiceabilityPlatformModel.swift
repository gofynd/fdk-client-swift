

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityReferenceCoordinates
        Used By: Serviceability
    */

    class StorePolygonServiceabilityReferenceCoordinates: Codable {
        
        
        public var lng: Double
        
        public var lat: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case lng = "lng"
            
            case lat = "lat"
            
        }

        public init(lat: Double, lng: Double) {
            
            self.lng = lng
            
            self.lat = lat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lng = try container.decode(Double.self, forKey: .lng)
                
            
            
            
                lat = try container.decode(Double.self, forKey: .lat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lng, forKey: .lng)
            
            
            
            
            try? container.encodeIfPresent(lat, forKey: .lat)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityReferenceCoordinates
        Used By: Serviceability
    */

    class StorePolygonServiceabilityReferenceCoordinates: Codable {
        
        
        public var lng: Double
        
        public var lat: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case lng = "lng"
            
            case lat = "lat"
            
        }

        public init(lat: Double, lng: Double) {
            
            self.lng = lng
            
            self.lat = lat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lng = try container.decode(Double.self, forKey: .lng)
                
            
            
            
                lat = try container.decode(Double.self, forKey: .lat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lng, forKey: .lng)
            
            
            
            
            try? container.encodeIfPresent(lat, forKey: .lat)
            
            
        }
        
    }
}


