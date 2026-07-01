

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityRequestBody
        Used By: Serviceability
    */

    class StorePolygonServiceabilityRequestBody: Codable {
        
        
        public var data: StorePolygonServiceabilityRequestData
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: StorePolygonServiceabilityRequestData) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(StorePolygonServiceabilityRequestData.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityRequestBody
        Used By: Serviceability
    */

    class StorePolygonServiceabilityRequestBody: Codable {
        
        
        public var data: StorePolygonServiceabilityRequestData
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: StorePolygonServiceabilityRequestData) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(StorePolygonServiceabilityRequestData.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


