

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: BulkCustomFieldsResponseByResourceSchema
        Used By: Content
    */
    class BulkCustomFieldsResponseByResourceSchema: Codable {
        
        public var items: [ResourceCustomFieldsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(items: [ResourceCustomFieldsSchema]? = nil) {
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([ResourceCustomFieldsSchema].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
