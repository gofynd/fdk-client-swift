

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Distribution
        Used By: Cart
    */

    class Distribution: Codable {
        
        
        public var type: String?
        
        public var logic: String?
        
        public var rule: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case logic = "logic"
            
            case rule = "rule"
            
        }

        public init(logic: String? = nil, rule: [String: Any]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.logic = logic
            
            self.rule = rule
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    rule = try container.decode([String: Any].self, forKey: .rule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(logic, forKey: .logic)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
        }
        
    }
}


