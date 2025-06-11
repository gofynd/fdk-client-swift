

import Foundation


public extension PlatformClient.Content {
    /*
        Model: SEO
        Used By: Content
    */

    class SEO: Codable {
        
        
        public var description: String?
        
        public var image: SEOImage?
        
        public var title: String?
        
        public var metaTags: [SEOMetaItem]?
        
        public var sitemap: SEOSitemap?
        
        public var breadcrumbs: [SEObreadcrumb]?
        
        public var canonicalUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case image = "image"
            
            case title = "title"
            
            case metaTags = "meta_tags"
            
            case sitemap = "sitemap"
            
            case breadcrumbs = "breadcrumbs"
            
            case canonicalUrl = "canonical_url"
            
        }

        public init(breadcrumbs: [SEObreadcrumb]? = nil, canonicalUrl: String? = nil, description: String? = nil, image: SEOImage? = nil, metaTags: [SEOMetaItem]? = nil, sitemap: SEOSitemap? = nil, title: String? = nil) {
            
            self.description = description
            
            self.image = image
            
            self.title = title
            
            self.metaTags = metaTags
            
            self.sitemap = sitemap
            
            self.breadcrumbs = breadcrumbs
            
            self.canonicalUrl = canonicalUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(SEOImage.self, forKey: .image)
                
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
                    canonicalUrl = try container.decode(String.self, forKey: .canonicalUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: SEO
        Used By: Content
    */

    class SEO: Codable {
        
        
        public var description: String?
        
        public var image: SEOImage?
        
        public var title: String?
        
        public var metaTags: [SEOMetaItem]?
        
        public var sitemap: SEOSitemap?
        
        public var breadcrumbs: [SEObreadcrumb]?
        
        public var canonicalUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case image = "image"
            
            case title = "title"
            
            case metaTags = "meta_tags"
            
            case sitemap = "sitemap"
            
            case breadcrumbs = "breadcrumbs"
            
            case canonicalUrl = "canonical_url"
            
        }

        public init(breadcrumbs: [SEObreadcrumb]? = nil, canonicalUrl: String? = nil, description: String? = nil, image: SEOImage? = nil, metaTags: [SEOMetaItem]? = nil, sitemap: SEOSitemap? = nil, title: String? = nil) {
            
            self.description = description
            
            self.image = image
            
            self.title = title
            
            self.metaTags = metaTags
            
            self.sitemap = sitemap
            
            self.breadcrumbs = breadcrumbs
            
            self.canonicalUrl = canonicalUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(SEOImage.self, forKey: .image)
                
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
                    canonicalUrl = try container.decode(String.self, forKey: .canonicalUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
        }
        
    }
}


