

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomField
        Used By: Content
    */

    class CustomField: Codable {
        
        
        public var value: [[String: Any]]?
        
        public var definitionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case definitionId = "definition_id"
            
        }

        public init(definitionId: String? = nil, value: [[String: Any]]? = nil) {
            
            self.value = value
            
            self.definitionId = definitionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode([[String: Any]].self, forKey: .value)
                
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
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomField
        Used By: Content
    */

    class CustomField: Codable {
        
        
        public var value: [[String: Any]]?
        
        public var definitionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case definitionId = "definition_id"
            
        }

        public init(definitionId: String? = nil, value: [[String: Any]]? = nil) {
            
            self.value = value
            
            self.definitionId = definitionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode([[String: Any]].self, forKey: .value)
                
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
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
        }
        
    }
}


