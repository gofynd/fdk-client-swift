

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectFieldSchema
        Used By: Content
    */

    class CustomObjectFieldSchema: Codable {
        
        
        public var id: String?
        
        public var key: String?
        
        public var value: [[String: Any]]?
        
        public var type: String?
        
        public var definitionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case key = "key"
            
            case value = "value"
            
            case type = "type"
            
            case definitionId = "definition_id"
            
        }

        public init(definitionId: String? = nil, key: String? = nil, type: String? = nil, value: [[String: Any]]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.key = key
            
            self.value = value
            
            self.type = type
            
            self.definitionId = definitionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode([[String: Any]].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectFieldSchema
        Used By: Content
    */

    class CustomObjectFieldSchema: Codable {
        
        
        public var id: String?
        
        public var key: String?
        
        public var value: [[String: Any]]?
        
        public var type: String?
        
        public var definitionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case key = "key"
            
            case value = "value"
            
            case type = "type"
            
            case definitionId = "definition_id"
            
        }

        public init(definitionId: String? = nil, key: String? = nil, type: String? = nil, value: [[String: Any]]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.key = key
            
            self.value = value
            
            self.type = type
            
            self.definitionId = definitionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode([[String: Any]].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
        }
        
    }
}


