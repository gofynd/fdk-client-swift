

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SEOMetaItem
        Used By: Theme
    */
    class SEOMetaItem: Codable {
        
        public var title: String?
        
        public var items: [SEOMetaItems]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
        }

        public init(items: [SEOMetaItems]? = nil, title: String? = nil) {
            
            self.title = title
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                title = try container.decode(String.self, forKey: .title)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([SEOMetaItems].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
