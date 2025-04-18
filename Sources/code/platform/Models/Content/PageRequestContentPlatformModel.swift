

import Foundation


public extension PlatformClient.Content {
    /*
        Model: PageRequest
        Used By: Content
    */

    class PageRequest: Codable {
        
        
        public var schedule: CronSchedule?
        
        public var application: String?
        
        public var author: Author?
        
        public var customJson: [String: Any]?
        
        public var orientation: String?
        
        public var content: [PageContent]?
        
        public var featureImage: Asset?
        
        public var published: Bool?
        
        public var readingTime: String?
        
        public var slug: String?
        
        public var tags: [String]?
        
        public var seo: SEO?
        
        public var title: String?
        
        public var platform: String?
        
        public var type: String?
        
        public var description: String?
        
        public var visibility: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "_schedule"
            
            case application = "application"
            
            case author = "author"
            
            case customJson = "_custom_json"
            
            case orientation = "orientation"
            
            case content = "content"
            
            case featureImage = "feature_image"
            
            case published = "published"
            
            case readingTime = "reading_time"
            
            case slug = "slug"
            
            case tags = "tags"
            
            case seo = "seo"
            
            case title = "title"
            
            case platform = "platform"
            
            case type = "type"
            
            case description = "description"
            
            case visibility = "visibility"
            
        }

        public init(application: String? = nil, author: Author? = nil, content: [PageContent]? = nil, description: String? = nil, featureImage: Asset? = nil, orientation: String? = nil, platform: String? = nil, published: Bool? = nil, readingTime: String? = nil, seo: SEO? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, type: String? = nil, visibility: [String: Any]? = nil, customJson: [String: Any]? = nil, schedule: CronSchedule? = nil) {
            
            self.schedule = schedule
            
            self.application = application
            
            self.author = author
            
            self.customJson = customJson
            
            self.orientation = orientation
            
            self.content = content
            
            self.featureImage = featureImage
            
            self.published = published
            
            self.readingTime = readingTime
            
            self.slug = slug
            
            self.tags = tags
            
            self.seo = seo
            
            self.title = title
            
            self.platform = platform
            
            self.type = type
            
            self.description = description
            
            self.visibility = visibility
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(CronSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(Author.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orientation = try container.decode(String.self, forKey: .orientation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    content = try container.decode([PageContent].self, forKey: .content)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    featureImage = try container.decode(Asset.self, forKey: .featureImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    published = try container.decode(Bool.self, forKey: .published)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    readingTime = try container.decode(String.self, forKey: .readingTime)
                
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
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(SEO.self, forKey: .seo)
                
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
                    platform = try container.decode(String.self, forKey: .platform)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibility = try container.decode([String: Any].self, forKey: .visibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(featureImage, forKey: .featureImage)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(readingTime, forKey: .readingTime)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: PageRequest
        Used By: Content
    */

    class PageRequest: Codable {
        
        
        public var schedule: CronSchedule?
        
        public var application: String?
        
        public var author: Author?
        
        public var customJson: [String: Any]?
        
        public var orientation: String?
        
        public var content: [PageContent]?
        
        public var featureImage: Asset?
        
        public var published: Bool?
        
        public var readingTime: String?
        
        public var slug: String?
        
        public var tags: [String]?
        
        public var seo: SEO?
        
        public var title: String?
        
        public var platform: String?
        
        public var type: String?
        
        public var description: String?
        
        public var visibility: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "_schedule"
            
            case application = "application"
            
            case author = "author"
            
            case customJson = "_custom_json"
            
            case orientation = "orientation"
            
            case content = "content"
            
            case featureImage = "feature_image"
            
            case published = "published"
            
            case readingTime = "reading_time"
            
            case slug = "slug"
            
            case tags = "tags"
            
            case seo = "seo"
            
            case title = "title"
            
            case platform = "platform"
            
            case type = "type"
            
            case description = "description"
            
            case visibility = "visibility"
            
        }

        public init(application: String? = nil, author: Author? = nil, content: [PageContent]? = nil, description: String? = nil, featureImage: Asset? = nil, orientation: String? = nil, platform: String? = nil, published: Bool? = nil, readingTime: String? = nil, seo: SEO? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, type: String? = nil, visibility: [String: Any]? = nil, customJson: [String: Any]? = nil, schedule: CronSchedule? = nil) {
            
            self.schedule = schedule
            
            self.application = application
            
            self.author = author
            
            self.customJson = customJson
            
            self.orientation = orientation
            
            self.content = content
            
            self.featureImage = featureImage
            
            self.published = published
            
            self.readingTime = readingTime
            
            self.slug = slug
            
            self.tags = tags
            
            self.seo = seo
            
            self.title = title
            
            self.platform = platform
            
            self.type = type
            
            self.description = description
            
            self.visibility = visibility
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(CronSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(Author.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orientation = try container.decode(String.self, forKey: .orientation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    content = try container.decode([PageContent].self, forKey: .content)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    featureImage = try container.decode(Asset.self, forKey: .featureImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    published = try container.decode(Bool.self, forKey: .published)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    readingTime = try container.decode(String.self, forKey: .readingTime)
                
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
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(SEO.self, forKey: .seo)
                
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
                    platform = try container.decode(String.self, forKey: .platform)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibility = try container.decode([String: Any].self, forKey: .visibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(featureImage, forKey: .featureImage)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(readingTime, forKey: .readingTime)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
        }
        
    }
}


