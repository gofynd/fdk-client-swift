

import Foundation
public extension ApplicationClient {
    /*
        Model: ProductCompareResponse
        Used By: Catalog
    */
    class ProductCompareResponse: Codable {
        
        public var subtitle: String?
        
        public var title: String?
        
        public var attributesMetadata: [AttributeMetadata]?
        
        public var items: [ProductDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case title = "title"
            
            case attributesMetadata = "attributes_metadata"
            
            case items = "items"
            
        }

        public init(attributesMetadata: [AttributeMetadata]? = nil, items: [ProductDetail]? = nil, subtitle: String? = nil, title: String? = nil) {
            
            self.subtitle = subtitle
            
            self.title = title
            
            self.attributesMetadata = attributesMetadata
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)
            
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
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([ProductDetail].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
