

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: AvailablePageSeo
        Used By: Theme
    */
    class AvailablePageSeo: Codable {
        
        public var title: String?
        
        public var description: String?
        
        public var canonicalUrl: String?
        
        public var metaTags: [SEOMetaItem]?
        
        public var sitemap: SEOSitemap?
        
        public var breadcrumb: [SEObreadcrumb]?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case canonicalUrl = "canonical_url"
            
            case metaTags = "meta_tags"
            
            case sitemap = "sitemap"
            
            case breadcrumb = "breadcrumb"
            
            case id = "_id"
            
        }

        public init(breadcrumb: [SEObreadcrumb]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [SEOMetaItem]? = nil, sitemap: SEOSitemap? = nil, title: String? = nil, id: String? = nil) {
            
            self.title = title
            
            self.description = description
            
            self.canonicalUrl = canonicalUrl
            
            self.metaTags = metaTags
            
            self.sitemap = sitemap
            
            self.breadcrumb = breadcrumb
            
            self.id = id
            
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
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                canonicalUrl = try container.decode(String.self, forKey: .canonicalUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                metaTags = try container.decode([SEOMetaItem].self, forKey: .metaTags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sitemap = try container.decode(SEOSitemap.self, forKey: .sitemap)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                breadcrumb = try container.decode([SEObreadcrumb].self, forKey: .breadcrumb)
            
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
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumb, forKey: .breadcrumb)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
