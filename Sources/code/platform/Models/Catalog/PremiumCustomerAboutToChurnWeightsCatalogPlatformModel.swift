

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PremiumCustomerAboutToChurnWeights
        Used By: Catalog
    */

    class PremiumCustomerAboutToChurnWeights: Codable {
        
        
        public var weights: SortWeights
        

        public enum CodingKeys: String, CodingKey {
            
            case weights = "weights"
            
        }

        public init(weights: SortWeights) {
            
            self.weights = weights
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                weights = try container.decode(SortWeights.self, forKey: .weights)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(weights, forKey: .weights)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PremiumCustomerAboutToChurnWeights
        Used By: Catalog
    */

    class PremiumCustomerAboutToChurnWeights: Codable {
        
        
        public var weights: SortWeights
        

        public enum CodingKeys: String, CodingKey {
            
            case weights = "weights"
            
        }

        public init(weights: SortWeights) {
            
            self.weights = weights
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                weights = try container.decode(SortWeights.self, forKey: .weights)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(weights, forKey: .weights)
            
            
        }
        
    }
}


