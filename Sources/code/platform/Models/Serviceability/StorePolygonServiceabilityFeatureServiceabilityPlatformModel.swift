

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityFeature
        Used By: Serviceability
    */

    class StorePolygonServiceabilityFeature: Codable {
        
        
        public var type: String
        
        public var properties: [String: Any]?
        
        public var geometry: StorePolygonServiceabilityGeometry
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case properties = "properties"
            
            case geometry = "geometry"
            
        }

        public init(geometry: StorePolygonServiceabilityGeometry, properties: [String: Any]? = nil, type: String) {
            
            self.type = type
            
            self.properties = properties
            
            self.geometry = geometry
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    properties = try container.decode([String: Any].self, forKey: .properties)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                geometry = try container.decode(StorePolygonServiceabilityGeometry.self, forKey: .geometry)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            
            
            
            try? container.encodeIfPresent(geometry, forKey: .geometry)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityFeature
        Used By: Serviceability
    */

    class StorePolygonServiceabilityFeature: Codable {
        
        
        public var type: String
        
        public var properties: [String: Any]?
        
        public var geometry: StorePolygonServiceabilityGeometry
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case properties = "properties"
            
            case geometry = "geometry"
            
        }

        public init(geometry: StorePolygonServiceabilityGeometry, properties: [String: Any]? = nil, type: String) {
            
            self.type = type
            
            self.properties = properties
            
            self.geometry = geometry
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    properties = try container.decode([String: Any].self, forKey: .properties)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                geometry = try container.decode(StorePolygonServiceabilityGeometry.self, forKey: .geometry)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            
            
            
            try? container.encodeIfPresent(geometry, forKey: .geometry)
            
            
        }
        
    }
}


