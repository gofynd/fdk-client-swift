

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartMetaConfigListObject
        Used By: Cart
    */
    class CartMetaConfigListObject: Codable {
        
        public var id: String?
        
        public var slug: String?
        
        public var createdOn: String?
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var articleTags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case slug = "slug"
            
            case createdOn = "created_on"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case articleTags = "article_tags"
            
        }

        public init(articleTags: [String]? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool? = nil, name: String? = nil, slug: String? = nil) {
            
            self.id = id
            
            self.slug = slug
            
            self.createdOn = createdOn
            
            self.name = name
            
            self.isActive = isActive
            
            self.articleTags = articleTags
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleTags = try container.decode([String].self, forKey: .articleTags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(articleTags, forKey: .articleTags)
            
            
        }
        
    }
}
