

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ProductSchema
        Used By: Serviceability
    */

    class ProductSchema: Codable {
        
        
        public var type: String
        
        public var values: [[String: Any]]
        
        public var action: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
            case action = "action"
            
        }

        public init(action: String? = nil, type: String, values: [[String: Any]]) {
            
            self.type = type
            
            self.values = values
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                values = try container.decode([[String: Any]].self, forKey: .values)
                
            
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ProductSchema
        Used By: Serviceability
    */

    class ProductSchema: Codable {
        
        
        public var type: String
        
        public var values: [[String: Any]]
        
        public var action: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
            case action = "action"
            
        }

        public init(action: String? = nil, type: String, values: [[String: Any]]) {
            
            self.type = type
            
            self.values = values
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                values = try container.decode([[String: Any]].self, forKey: .values)
                
            
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}


