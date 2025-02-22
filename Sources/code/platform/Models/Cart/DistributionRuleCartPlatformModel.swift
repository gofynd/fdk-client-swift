

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DistributionRule
        Used By: Cart
    */

    class DistributionRule: Codable {
        
        
        public var conditions: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
        }

        public init(conditions: [String: Any]? = nil) {
            
            self.conditions = conditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conditions = try container.decode([String: Any].self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
        }
        
    }
}


