

import Foundation
public extension PublicClient.Partner {
    /*
        Model: CategoryL2
        Used By: Partner
    */

    class CategoryL2: Codable {
        
        
        public var parent: String?
        
        public var slug: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case parent = "parent"
            
            case slug = "slug"
            
            case id = "_id"
            
        }

        public init(parent: String? = nil, slug: String? = nil, id: String? = nil) {
            
            self.parent = parent
            
            self.slug = slug
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    parent = try container.decode(String.self, forKey: .parent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(parent, forKey: .parent)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
