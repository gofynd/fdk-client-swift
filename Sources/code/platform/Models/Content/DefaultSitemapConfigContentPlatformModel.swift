

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DefaultSitemapConfig
        Used By: Content
    */

    class DefaultSitemapConfig: Codable {
        
        
        public var root: DefaultSitemapIndividualConfig?
        
        public var brand: DefaultSitemapIndividualConfig?
        
        public var collections: DefaultSitemapIndividualConfig?
        
        public var categoryL1: DefaultSitemapIndividualConfig?
        
        public var categoryL2: DefaultSitemapIndividualConfig?
        
        public var categoryL3: DefaultSitemapIndividualConfig?
        
        public var pages: DefaultSitemapIndividualConfig?
        
        public var blog: DefaultSitemapIndividualConfig?
        
        public var section: DefaultSitemapIndividualConfig?
        
        public var faq: DefaultSitemapIndividualConfig?
        
        public var sitemap: DefaultSitemapIndividualConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case root = "root"
            
            case brand = "brand"
            
            case collections = "collections"
            
            case categoryL1 = "category_l1"
            
            case categoryL2 = "category_l2"
            
            case categoryL3 = "category_l3"
            
            case pages = "pages"
            
            case blog = "blog"
            
            case section = "section"
            
            case faq = "faq"
            
            case sitemap = "sitemap"
            
        }

        public init(blog: DefaultSitemapIndividualConfig? = nil, brand: DefaultSitemapIndividualConfig? = nil, categoryL1: DefaultSitemapIndividualConfig? = nil, categoryL2: DefaultSitemapIndividualConfig? = nil, categoryL3: DefaultSitemapIndividualConfig? = nil, collections: DefaultSitemapIndividualConfig? = nil, faq: DefaultSitemapIndividualConfig? = nil, pages: DefaultSitemapIndividualConfig? = nil, root: DefaultSitemapIndividualConfig? = nil, section: DefaultSitemapIndividualConfig? = nil, sitemap: DefaultSitemapIndividualConfig? = nil) {
            
            self.root = root
            
            self.brand = brand
            
            self.collections = collections
            
            self.categoryL1 = categoryL1
            
            self.categoryL2 = categoryL2
            
            self.categoryL3 = categoryL3
            
            self.pages = pages
            
            self.blog = blog
            
            self.section = section
            
            self.faq = faq
            
            self.sitemap = sitemap
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    root = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .root)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collections = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .collections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL1 = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .categoryL1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL2 = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .categoryL2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL3 = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .categoryL3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    blog = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .blog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    section = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .section)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    faq = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .faq)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sitemap = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .sitemap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(root, forKey: .root)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(collections, forKey: .collections)
            
            
            
            
            try? container.encodeIfPresent(categoryL1, forKey: .categoryL1)
            
            
            
            
            try? container.encodeIfPresent(categoryL2, forKey: .categoryL2)
            
            
            
            
            try? container.encodeIfPresent(categoryL3, forKey: .categoryL3)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(blog, forKey: .blog)
            
            
            
            
            try? container.encodeIfPresent(section, forKey: .section)
            
            
            
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DefaultSitemapConfig
        Used By: Content
    */

    class DefaultSitemapConfig: Codable {
        
        
        public var root: DefaultSitemapIndividualConfig?
        
        public var brand: DefaultSitemapIndividualConfig?
        
        public var collections: DefaultSitemapIndividualConfig?
        
        public var categoryL1: DefaultSitemapIndividualConfig?
        
        public var categoryL2: DefaultSitemapIndividualConfig?
        
        public var categoryL3: DefaultSitemapIndividualConfig?
        
        public var pages: DefaultSitemapIndividualConfig?
        
        public var blog: DefaultSitemapIndividualConfig?
        
        public var section: DefaultSitemapIndividualConfig?
        
        public var faq: DefaultSitemapIndividualConfig?
        
        public var sitemap: DefaultSitemapIndividualConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case root = "root"
            
            case brand = "brand"
            
            case collections = "collections"
            
            case categoryL1 = "category_l1"
            
            case categoryL2 = "category_l2"
            
            case categoryL3 = "category_l3"
            
            case pages = "pages"
            
            case blog = "blog"
            
            case section = "section"
            
            case faq = "faq"
            
            case sitemap = "sitemap"
            
        }

        public init(blog: DefaultSitemapIndividualConfig? = nil, brand: DefaultSitemapIndividualConfig? = nil, categoryL1: DefaultSitemapIndividualConfig? = nil, categoryL2: DefaultSitemapIndividualConfig? = nil, categoryL3: DefaultSitemapIndividualConfig? = nil, collections: DefaultSitemapIndividualConfig? = nil, faq: DefaultSitemapIndividualConfig? = nil, pages: DefaultSitemapIndividualConfig? = nil, root: DefaultSitemapIndividualConfig? = nil, section: DefaultSitemapIndividualConfig? = nil, sitemap: DefaultSitemapIndividualConfig? = nil) {
            
            self.root = root
            
            self.brand = brand
            
            self.collections = collections
            
            self.categoryL1 = categoryL1
            
            self.categoryL2 = categoryL2
            
            self.categoryL3 = categoryL3
            
            self.pages = pages
            
            self.blog = blog
            
            self.section = section
            
            self.faq = faq
            
            self.sitemap = sitemap
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    root = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .root)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collections = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .collections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL1 = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .categoryL1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL2 = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .categoryL2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryL3 = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .categoryL3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    blog = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .blog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    section = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .section)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    faq = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .faq)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sitemap = try container.decode(DefaultSitemapIndividualConfig.self, forKey: .sitemap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(root, forKey: .root)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(collections, forKey: .collections)
            
            
            
            
            try? container.encodeIfPresent(categoryL1, forKey: .categoryL1)
            
            
            
            
            try? container.encodeIfPresent(categoryL2, forKey: .categoryL2)
            
            
            
            
            try? container.encodeIfPresent(categoryL3, forKey: .categoryL3)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(blog, forKey: .blog)
            
            
            
            
            try? container.encodeIfPresent(section, forKey: .section)
            
            
            
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
        }
        
    }
}


