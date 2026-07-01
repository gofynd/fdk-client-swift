

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityRequestData
        Used By: Serviceability
    */

    class StorePolygonServiceabilityRequestData: Codable {
        
        
        public var stores: [StorePolygonServiceabilityStore]
        

        public enum CodingKeys: String, CodingKey {
            
            case stores = "stores"
            
        }

        public init(stores: [StorePolygonServiceabilityStore]) {
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                stores = try container.decode([StorePolygonServiceabilityStore].self, forKey: .stores)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityRequestData
        Used By: Serviceability
    */

    class StorePolygonServiceabilityRequestData: Codable {
        
        
        public var stores: [StorePolygonServiceabilityStore]
        

        public enum CodingKeys: String, CodingKey {
            
            case stores = "stores"
            
        }

        public init(stores: [StorePolygonServiceabilityStore]) {
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                stores = try container.decode([StorePolygonServiceabilityStore].self, forKey: .stores)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}


