

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: FulfillmentOptionSchema
        Used By: Catalog
    */
    class FulfillmentOptionSchema: Codable {
        
        public var slug: String?
        
        public var description: String?
        
        public var isDefault: Bool?
        
        public var id: String?
        
        public var type: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case description = "description"
            
            case isDefault = "is_default"
            
            case id = "id"
            
            case type = "type"
            
            case name = "name"
            
        }

        public init(description: String? = nil, id: String? = nil, isDefault: Bool? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.slug = slug
            
            self.description = description
            
            self.isDefault = isDefault
            
            self.id = id
            
            self.type = type
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
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
                type = try container.decode(String.self, forKey: .type)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
