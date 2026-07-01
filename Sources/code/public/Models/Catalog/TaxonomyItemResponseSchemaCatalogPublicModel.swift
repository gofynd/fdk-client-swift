

import Foundation
public extension PublicClient.Catalog {
    /*
        Model: TaxonomyItemResponseSchema
        Used By: Catalog
    */

    class TaxonomyItemResponseSchema: Codable {
        
        
        public var uid: Double
        
        public var name: String
        
        public var slug: String
        
        public var level: Int
        
        public var attributes: [TaxonomyItemAttributesResponseSchema]?
        
        public var productTemplateSlug: String?
        
        public var productTemplateName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
            case slug = "slug"
            
            case level = "level"
            
            case attributes = "attributes"
            
            case productTemplateSlug = "product_template_slug"
            
            case productTemplateName = "product_template_name"
            
        }

        public init(attributes: [TaxonomyItemAttributesResponseSchema]? = nil, level: Int, name: String, productTemplateName: String? = nil, productTemplateSlug: String? = nil, slug: String, uid: Double) {
            
            self.uid = uid
            
            self.name = name
            
            self.slug = slug
            
            self.level = level
            
            self.attributes = attributes
            
            self.productTemplateSlug = productTemplateSlug
            
            self.productTemplateName = productTemplateName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(Double.self, forKey: .uid)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                level = try container.decode(Int.self, forKey: .level)
                
            
            
            
                do {
                    attributes = try container.decode([TaxonomyItemAttributesResponseSchema].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTemplateSlug = try container.decode(String.self, forKey: .productTemplateSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productTemplateName = try container.decode(String.self, forKey: .productTemplateName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            try? container.encodeIfPresent(productTemplateSlug, forKey: .productTemplateSlug)
            
            
            
            try? container.encodeIfPresent(productTemplateName, forKey: .productTemplateName)
            
            
        }
        
    }
}
