

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DistributionLogic
        Used By: Cart
    */

    class DistributionLogic: Codable {
        
        
        public var distributionLevel: String?
        
        public var distribution: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case distributionLevel = "distribution_level"
            
            case distribution = "distribution"
            
        }

        public init(distribution: [String: Any]? = nil, distributionLevel: String? = nil) {
            
            self.distributionLevel = distributionLevel
            
            self.distribution = distribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    distributionLevel = try container.decode(String.self, forKey: .distributionLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    distribution = try container.decode([String: Any].self, forKey: .distribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(distributionLevel, forKey: .distributionLevel)
            
            
            
            
            try? container.encodeIfPresent(distribution, forKey: .distribution)
            
            
        }
        
    }
}


