

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: AttributeMetadata
        Used By: Catalog
    */
    class AttributeMetadata: Codable {
        
        public var id: String?
        
        public var title: String?
        
        public var details: [AttributeDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case title = "title"
            
            case details = "details"
            
        }

        public init(details: [AttributeDetail]? = nil, id: String? = nil, title: String? = nil) {
            
            self.id = id
            
            self.title = title
            
            self.details = details
            
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
                title = try container.decode(String.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                details = try container.decode([AttributeDetail].self, forKey: .details)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
        }
        
    }
}
