

import Foundation
public extension PublicClient.Content {
    /*
        Model: CredentialSchema
        Used By: Content
    */

    class CredentialSchema: Codable {
        
        
        public var configuration: [String: Any]?
        
        public var entityType: String?
        
        public var type: String?
        
        public var isEnable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case configuration = "configuration"
            
            case entityType = "entity_type"
            
            case type = "type"
            
            case isEnable = "is_enable"
            
        }

        public init(configuration: [String: Any]? = nil, entityType: String? = nil, isEnable: Bool? = nil, type: String? = nil) {
            
            self.configuration = configuration
            
            self.entityType = entityType
            
            self.type = type
            
            self.isEnable = isEnable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    configuration = try container.decode([String: Any].self, forKey: .configuration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
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
                    isEnable = try container.decode(Bool.self, forKey: .isEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isEnable, forKey: .isEnable)
            
            
        }
        
    }
}
