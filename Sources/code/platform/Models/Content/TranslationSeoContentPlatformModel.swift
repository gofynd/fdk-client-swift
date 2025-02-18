

import Foundation


public extension PlatformClient.Content {
    /*
        Model: TranslationSeo
        Used By: Content
    */

    class TranslationSeo: Codable {
        
        
        public var title: String?
        
        public var breadcrumbs: [String]?
        
        public var metaTags: [String]?
        
        public var canonicalUrl: String?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case breadcrumbs = "breadcrumbs"
            
            case metaTags = "meta_tags"
            
            case canonicalUrl = "canonical_url"
            
            case description = "description"
            
        }

        public init(breadcrumbs: [String]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [String]? = nil, title: String? = nil) {
            
            self.title = title
            
            self.breadcrumbs = breadcrumbs
            
            self.metaTags = metaTags
            
            self.canonicalUrl = canonicalUrl
            
            self.description = description
            
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
                    breadcrumbs = try container.decode([String].self, forKey: .breadcrumbs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaTags = try container.decode([String].self, forKey: .metaTags)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: TranslationSeo
        Used By: Content
    */

    class TranslationSeo: Codable {
        
        
        public var title: String?
        
        public var breadcrumbs: [String]?
        
        public var metaTags: [String]?
        
        public var canonicalUrl: String?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case breadcrumbs = "breadcrumbs"
            
            case metaTags = "meta_tags"
            
            case canonicalUrl = "canonical_url"
            
            case description = "description"
            
        }

        public init(breadcrumbs: [String]? = nil, canonicalUrl: String? = nil, description: String? = nil, metaTags: [String]? = nil, title: String? = nil) {
            
            self.title = title
            
            self.breadcrumbs = breadcrumbs
            
            self.metaTags = metaTags
            
            self.canonicalUrl = canonicalUrl
            
            self.description = description
            
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
                    breadcrumbs = try container.decode([String].self, forKey: .breadcrumbs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaTags = try container.decode([String].self, forKey: .metaTags)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(breadcrumbs, forKey: .breadcrumbs)
            
            
            
            
            try? container.encodeIfPresent(metaTags, forKey: .metaTags)
            
            
            
            
            try? container.encodeIfPresent(canonicalUrl, forKey: .canonicalUrl)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}


