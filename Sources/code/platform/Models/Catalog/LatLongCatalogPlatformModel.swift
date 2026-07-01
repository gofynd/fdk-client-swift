

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LatLong
        Used By: Catalog
    */

    class LatLong: Codable {
        
        
        public var type: String
        
        public var coordinates: [Double]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case coordinates = "coordinates"
            
        }

        public init(coordinates: [Double], type: String) {
            
            self.type = type
            
            self.coordinates = coordinates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                coordinates = try container.decode([Double].self, forKey: .coordinates)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LatLong
        Used By: Catalog
    */

    class LatLong: Codable {
        
        
        public var type: String
        
        public var coordinates: [Double]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case coordinates = "coordinates"
            
        }

        public init(coordinates: [Double], type: String) {
            
            self.type = type
            
            self.coordinates = coordinates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                coordinates = try container.decode([Double].self, forKey: .coordinates)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
            
            
        }
        
    }
}


