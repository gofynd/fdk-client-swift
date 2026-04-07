

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityAttributes
        Used By: Serviceability
    */

    class StorePolygonServiceabilityAttributes: Codable {
        
        
        public var contourType: String?
        
        public var travelDistance: Double?
        
        public var referenceCoordinates: StorePolygonServiceabilityReferenceCoordinates?
        

        public enum CodingKeys: String, CodingKey {
            
            case contourType = "contour_type"
            
            case travelDistance = "travel_distance"
            
            case referenceCoordinates = "reference_coordinates"
            
        }

        public init(contourType: String? = nil, referenceCoordinates: StorePolygonServiceabilityReferenceCoordinates? = nil, travelDistance: Double? = nil) {
            
            self.contourType = contourType
            
            self.travelDistance = travelDistance
            
            self.referenceCoordinates = referenceCoordinates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    contourType = try container.decode(String.self, forKey: .contourType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    travelDistance = try container.decode(Double.self, forKey: .travelDistance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    referenceCoordinates = try container.decode(StorePolygonServiceabilityReferenceCoordinates.self, forKey: .referenceCoordinates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(contourType, forKey: .contourType)
            
            
            
            
            try? container.encodeIfPresent(travelDistance, forKey: .travelDistance)
            
            
            
            
            try? container.encodeIfPresent(referenceCoordinates, forKey: .referenceCoordinates)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityAttributes
        Used By: Serviceability
    */

    class StorePolygonServiceabilityAttributes: Codable {
        
        
        public var contourType: String?
        
        public var travelDistance: Double?
        
        public var referenceCoordinates: StorePolygonServiceabilityReferenceCoordinates?
        

        public enum CodingKeys: String, CodingKey {
            
            case contourType = "contour_type"
            
            case travelDistance = "travel_distance"
            
            case referenceCoordinates = "reference_coordinates"
            
        }

        public init(contourType: String? = nil, referenceCoordinates: StorePolygonServiceabilityReferenceCoordinates? = nil, travelDistance: Double? = nil) {
            
            self.contourType = contourType
            
            self.travelDistance = travelDistance
            
            self.referenceCoordinates = referenceCoordinates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    contourType = try container.decode(String.self, forKey: .contourType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    travelDistance = try container.decode(Double.self, forKey: .travelDistance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    referenceCoordinates = try container.decode(StorePolygonServiceabilityReferenceCoordinates.self, forKey: .referenceCoordinates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(contourType, forKey: .contourType)
            
            
            
            
            try? container.encodeIfPresent(travelDistance, forKey: .travelDistance)
            
            
            
            
            try? container.encodeIfPresent(referenceCoordinates, forKey: .referenceCoordinates)
            
            
        }
        
    }
}


