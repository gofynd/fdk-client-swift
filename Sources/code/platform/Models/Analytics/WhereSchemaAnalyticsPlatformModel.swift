

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: WhereSchema
        Used By: Analytics
    */

    class WhereSchema: Codable {
        
        
        public var conditions: [ConditionsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
        }

        public init(conditions: [ConditionsSchema]? = nil) {
            
            self.conditions = conditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conditions = try container.decode([ConditionsSchema].self, forKey: .conditions)
                
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


