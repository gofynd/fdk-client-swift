

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SEOData
        Used By: Catalog
    */

    class SEOData: Codable {
        
        
        public var description: String?
        
        public var title: String?
        
        public var sitemap: Sitemap?
        
        public var breadcrumbs: [ApplicationItemSeoBreadcrumbs]?
        
        public var metaTags: [Metatags]?
        
        public var canonicalUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case title = "title"
            
            case sitemap = "sitemap"
            
            case breadcrumbs = "breadcrumbs"
            
            case metaTags = "meta_tags"
            
            case canonicalUrl = "canonical_url"
            
        }

        public init(breadcrumbs: [ApplicationItemSeoBreadcrumbs]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [Metatags]? = nil, sitemap: Sitemap? = nil, title: String? = nil) {
            
            self.description = description
            
            self.title = title
            
            self.sitemap = sitemap
            
            self.breadcrumbs = breadcrumbs
            
            self.metaTags = metaTags
            
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
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sitemap = try container.decode(Sitemap.self, forKey: .sitemap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breadcrumbs = try container.decode([ApplicationItemSeoBreadcrumbs].self, forKey: .breadcrumbs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaTags = try container.decode([Metatags].self, forKey: .metaTags)
                
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
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SEOData
        Used By: Catalog
    */

    class SEOData: Codable {
        
        
        public var description: String?
        
        public var title: String?
        
        public var sitemap: Sitemap?
        
        public var breadcrumbs: [ApplicationItemSeoBreadcrumbs]?
        
        public var metaTags: [Metatags]?
        
        public var canonicalUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case title = "title"
            
            case sitemap = "sitemap"
            
            case breadcrumbs = "breadcrumbs"
            
            case metaTags = "meta_tags"
            
            case canonicalUrl = "canonical_url"
            
        }

        public init(breadcrumbs: [ApplicationItemSeoBreadcrumbs]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [Metatags]? = nil, sitemap: Sitemap? = nil, title: String? = nil) {
            
            self.description = description
            
            self.title = title
            
            self.sitemap = sitemap
            
            self.breadcrumbs = breadcrumbs
            
            self.metaTags = metaTags
            
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
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sitemap = try container.decode(Sitemap.self, forKey: .sitemap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breadcrumbs = try container.decode([ApplicationItemSeoBreadcrumbs].self, forKey: .breadcrumbs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaTags = try container.decode([Metatags].self, forKey: .metaTags)
                
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
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
        }
        
    }
}


