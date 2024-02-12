

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: OptimalLocationsResponse
        Used By: Serviceability
    */

    class OptimalLocationsResponse: Codable {
        
        
        public var assignedStores: [OptimalLocationAssignedStoresResponse]
        

        public enum CodingKeys: String, CodingKey {
            
            case assignedStores = "assigned_stores"
            
        }

        public init(assignedStores: [OptimalLocationAssignedStoresResponse]) {
            
            self.assignedStores = assignedStores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                assignedStores = try container.decode([OptimalLocationAssignedStoresResponse].self, forKey: .assignedStores)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: OptimalLocationsResponse
        Used By: Serviceability
    */

    class OptimalLocationsResponse: Codable {
        
        
        public var assignedStores: [OptimalLocationAssignedStoresResponse]
        

        public enum CodingKeys: String, CodingKey {
            
            case assignedStores = "assigned_stores"
            
        }

        public init(assignedStores: [OptimalLocationAssignedStoresResponse]) {
            
            self.assignedStores = assignedStores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                assignedStores = try container.decode([OptimalLocationAssignedStoresResponse].self, forKey: .assignedStores)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
            
            
        }
        
    }
}


