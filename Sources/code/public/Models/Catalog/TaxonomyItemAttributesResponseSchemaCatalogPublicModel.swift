

import Foundation
public extension PublicClient.Catalog {
    /*
        Model: TaxonomyItemAttributesResponseSchema
        Used By: Catalog
    */

    class TaxonomyItemAttributesResponseSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var schema: TaxonomyItemAttributeSchemaObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case slug = "slug"
            
            case schema = "schema"
            
        }

        public init(id: String? = nil, name: String? = nil, schema: TaxonomyItemAttributeSchemaObject? = nil, slug: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.slug = slug
            
            self.schema = schema
            
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    schema = try container.decode(TaxonomyItemAttributeSchemaObject.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
        }
        
    }
}
