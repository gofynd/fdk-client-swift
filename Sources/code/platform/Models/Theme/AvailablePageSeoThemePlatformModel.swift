

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: AvailablePageSeo
        Used By: Theme
    */

    class AvailablePageSeo: Codable {
        
        
        public var title: String?
        
        public var description: String?
        
        public var metaTags: [SEOMetaItem]?
        
        public var sitemap: SEOSitemap?
        
        public var breadcrumbs: [SEObreadcrumb]?
        
        public var id: String?
        
        public var canonicalUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case metaTags = "meta_tags"
            
            case sitemap = "sitemap"
            
            case breadcrumbs = "breadcrumbs"
            
            case id = "_id"
            
            case canonicalUrl = "canonical_url"
            
        }

        public init(breadcrumbs: [SEObreadcrumb]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [SEOMetaItem]? = nil, sitemap: SEOSitemap? = nil, title: String? = nil, id: String? = nil) {
            
            self.title = title
            
            self.description = description
            
            self.metaTags = metaTags
            
            self.sitemap = sitemap
            
            self.breadcrumbs = breadcrumbs
            
            self.id = id
            
            self.canonicalUrl = canonicalUrl
            
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
                    breadcrumbs = try container.decode([SEObreadcrumb].self, forKey: .breadcrumbs)
                
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
                    canonicalUrl = try container.decode(String.self, forKey: .canonicalUrl)
                
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
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: AvailablePageSeo
        Used By: Theme
    */

    class AvailablePageSeo: Codable {
        
        
        public var title: String?
        
        public var description: String?
        
        public var metaTags: [SEOMetaItem]?
        
        public var sitemap: SEOSitemap?
        
        public var breadcrumbs: [SEObreadcrumb]?
        
        public var id: String?
        
        public var canonicalUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case metaTags = "meta_tags"
            
            case sitemap = "sitemap"
            
            case breadcrumbs = "breadcrumbs"
            
            case id = "_id"
            
            case canonicalUrl = "canonical_url"
            
        }

        public init(breadcrumbs: [SEObreadcrumb]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [SEOMetaItem]? = nil, sitemap: SEOSitemap? = nil, title: String? = nil, id: String? = nil) {
            
            self.title = title
            
            self.description = description
            
            self.metaTags = metaTags
            
            self.sitemap = sitemap
            
            self.breadcrumbs = breadcrumbs
            
            self.id = id
            
            self.canonicalUrl = canonicalUrl
            
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
                    breadcrumbs = try container.decode([SEObreadcrumb].self, forKey: .breadcrumbs)
                
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
                    canonicalUrl = try container.decode(String.self, forKey: .canonicalUrl)
                
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
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
        }
        
    }
}


