

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ResourceTranslations
        Used By: Content
    */
    class ResourceTranslations: Codable {
        
        public var resourceId: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case resourceId = "resource_id"
            
            case value = "value"
            
        }

        public init(resourceId: String? = nil, value: [String: Any]? = nil) {
            
            self.resourceId = resourceId
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                resourceId = try container.decode(String.self, forKey: .resourceId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                value = try container.decode([String: Any].self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(resourceId, forKey: .resourceId)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}
