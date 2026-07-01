

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityPolygon
        Used By: Serviceability
    */

    class StorePolygonServiceabilityPolygon: Codable {
        
        
        public var type: String
        
        public var features: [StorePolygonServiceabilityFeature]
        
        public var attributes: StorePolygonServiceabilityAttributes?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case features = "features"
            
            case attributes = "attributes"
            
        }

        public init(attributes: StorePolygonServiceabilityAttributes? = nil, features: [StorePolygonServiceabilityFeature], type: String) {
            
            self.type = type
            
            self.features = features
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                features = try container.decode([StorePolygonServiceabilityFeature].self, forKey: .features)
                
            
            
            
                do {
                    attributes = try container.decode(StorePolygonServiceabilityAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(features, forKey: .features)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityPolygon
        Used By: Serviceability
    */

    class StorePolygonServiceabilityPolygon: Codable {
        
        
        public var type: String
        
        public var features: [StorePolygonServiceabilityFeature]
        
        public var attributes: StorePolygonServiceabilityAttributes?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case features = "features"
            
            case attributes = "attributes"
            
        }

        public init(attributes: StorePolygonServiceabilityAttributes? = nil, features: [StorePolygonServiceabilityFeature], type: String) {
            
            self.type = type
            
            self.features = features
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                features = try container.decode([StorePolygonServiceabilityFeature].self, forKey: .features)
                
            
            
            
                do {
                    attributes = try container.decode(StorePolygonServiceabilityAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(features, forKey: .features)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}


