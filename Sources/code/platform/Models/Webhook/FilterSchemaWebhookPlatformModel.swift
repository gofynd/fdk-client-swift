

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: FilterSchema
        Used By: Webhook
    */

    class FilterSchema: Codable {
        
        
        public var query: String?
        
        public var condition: String?
        
        public var logic: String?
        
        public var conditions: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case condition = "condition"
            
            case logic = "logic"
            
            case conditions = "conditions"
            
        }

        public init(condition: String? = nil, conditions: [[String: Any]]? = nil, logic: String? = nil, query: String? = nil) {
            
            self.query = query
            
            self.condition = condition
            
            self.logic = logic
            
            self.conditions = conditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(String.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    condition = try container.decode(String.self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logic = try container.decode(String.self, forKey: .logic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conditions = try container.decode([[String: Any]].self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(logic, forKey: .logic)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
        }
        
    }
}




