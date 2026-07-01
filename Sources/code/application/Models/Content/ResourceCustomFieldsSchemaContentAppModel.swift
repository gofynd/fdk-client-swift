

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: ResourceCustomFieldsSchema
        Used By: Content
    */
    class ResourceCustomFieldsSchema: Codable {
        
        public var resourceId: String?
        
        public var resourceSlug: String?
        
        public var items: [CustomFieldItemSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case resourceId = "resource_id"
            
            case resourceSlug = "resource_slug"
            
            case items = "items"
            
        }

        public init(items: [CustomFieldItemSchema]? = nil, resourceId: String? = nil, resourceSlug: String? = nil) {
            
            self.resourceId = resourceId
            
            self.resourceSlug = resourceSlug
            
            self.items = items
            
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
                resourceSlug = try container.decode(String.self, forKey: .resourceSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([CustomFieldItemSchema].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(resourceId, forKey: .resourceId)
            
            
            
            try? container.encodeIfPresent(resourceSlug, forKey: .resourceSlug)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
