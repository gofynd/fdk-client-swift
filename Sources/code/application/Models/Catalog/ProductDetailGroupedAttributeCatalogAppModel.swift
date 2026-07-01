

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductDetailGroupedAttribute
        Used By: Catalog
    */
    class ProductDetailGroupedAttribute: Codable {
        
        public var title: String?
        
        public var id: String?
        
        public var details: [ProductDetailAttribute]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case id = "id"
            
            case details = "details"
            
        }

        public init(details: [ProductDetailAttribute]? = nil, id: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.id = id
            
            self.details = details
            
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
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                details = try container.decode([ProductDetailAttribute].self, forKey: .details)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
        }
        
    }
}
