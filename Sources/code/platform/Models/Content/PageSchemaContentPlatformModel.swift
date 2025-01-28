

import Foundation


public extension PlatformClient.Content {
    /*
        Model: PageSchema
        Used By: Content
    */

    class PageSchema: Codable {
        
        
        public var id: String?
        
        public var application: String?
        
        public var platform: String?
        
        public var title: String?
        
        public var slug: String?
        
        public var type: String?
        
        public var tags: [String]?
        
        public var contentPath: String?
        
        public var orientation: String?
        
        public var description: String?
        
        public var published: Bool?
        
        public var createdBy: CreatedBySchema?
        
        public var dateMeta: DateMeta?
        
        public var featureImage: Asset?
        
        public var schedule: ScheduleSchema?
        
        public var pageMeta: [PageMeta]?
        
        public var seo: SEO?
        
        public var componentIds: [String]?
        
        public var archived: Bool?
        
        public var v: Int?
        
        public var content: [PageContent]?
        
        public var sanitizedContent: [SanitizedContent]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case platform = "platform"
            
            case title = "title"
            
            case slug = "slug"
            
            case type = "type"
            
            case tags = "tags"
            
            case contentPath = "content_path"
            
            case orientation = "orientation"
            
            case description = "description"
            
            case published = "published"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case featureImage = "feature_image"
            
            case schedule = "_schedule"
            
            case pageMeta = "page_meta"
            
            case seo = "seo"
            
            case componentIds = "component_ids"
            
            case archived = "archived"
            
            case v = "__v"
            
            case content = "content"
            
            case sanitizedContent = "sanitized_content"
            
        }

        public init(application: String? = nil, archived: Bool? = nil, componentIds: [String]? = nil, content: [PageContent]? = nil, contentPath: String? = nil, createdBy: CreatedBySchema? = nil, dateMeta: DateMeta? = nil, description: String? = nil, featureImage: Asset? = nil, orientation: String? = nil, pageMeta: [PageMeta]? = nil, platform: String? = nil, published: Bool? = nil, sanitizedContent: [SanitizedContent]? = nil, seo: SEO? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, type: String? = nil, id: String? = nil, schedule: ScheduleSchema? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.application = application
            
            self.platform = platform
            
            self.title = title
            
            self.slug = slug
            
            self.type = type
            
            self.tags = tags
            
            self.contentPath = contentPath
            
            self.orientation = orientation
            
            self.description = description
            
            self.published = published
            
            self.createdBy = createdBy
            
            self.dateMeta = dateMeta
            
            self.featureImage = featureImage
            
            self.schedule = schedule
            
            self.pageMeta = pageMeta
            
            self.seo = seo
            
            self.componentIds = componentIds
            
            self.archived = archived
            
            self.v = v
            
            self.content = content
            
            self.sanitizedContent = sanitizedContent
            
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
                    application = try container.decode(String.self, forKey: .application)
                
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
                    title = try container.decode(String.self, forKey: .title)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    contentPath = try container.decode(String.self, forKey: .contentPath)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                    createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
                
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
                    schedule = try container.decode(ScheduleSchema.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageMeta = try container.decode([PageMeta].self, forKey: .pageMeta)
                
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
                    componentIds = try container.decode([String].self, forKey: .componentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archived = try container.decode(Bool.self, forKey: .archived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
                    sanitizedContent = try container.decode([SanitizedContent].self, forKey: .sanitizedContent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(contentPath, forKey: .contentPath)
            
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(featureImage, forKey: .featureImage)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(pageMeta, forKey: .pageMeta)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(componentIds, forKey: .componentIds)
            
            
            
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(sanitizedContent, forKey: .sanitizedContent)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: PageSchema
        Used By: Content
    */

    class PageSchema: Codable {
        
        
        public var id: String?
        
        public var application: String?
        
        public var platform: String?
        
        public var title: String?
        
        public var slug: String?
        
        public var type: String?
        
        public var tags: [String]?
        
        public var contentPath: String?
        
        public var orientation: String?
        
        public var description: String?
        
        public var published: Bool?
        
        public var createdBy: CreatedBySchema?
        
        public var dateMeta: DateMeta?
        
        public var featureImage: Asset?
        
        public var schedule: ScheduleSchema?
        
        public var pageMeta: [PageMeta]?
        
        public var seo: SEO?
        
        public var componentIds: [String]?
        
        public var archived: Bool?
        
        public var v: Int?
        
        public var content: [PageContent]?
        
        public var sanitizedContent: [SanitizedContent]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case application = "application"
            
            case platform = "platform"
            
            case title = "title"
            
            case slug = "slug"
            
            case type = "type"
            
            case tags = "tags"
            
            case contentPath = "content_path"
            
            case orientation = "orientation"
            
            case description = "description"
            
            case published = "published"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case featureImage = "feature_image"
            
            case schedule = "_schedule"
            
            case pageMeta = "page_meta"
            
            case seo = "seo"
            
            case componentIds = "component_ids"
            
            case archived = "archived"
            
            case v = "__v"
            
            case content = "content"
            
            case sanitizedContent = "sanitized_content"
            
        }

        public init(application: String? = nil, archived: Bool? = nil, componentIds: [String]? = nil, content: [PageContent]? = nil, contentPath: String? = nil, createdBy: CreatedBySchema? = nil, dateMeta: DateMeta? = nil, description: String? = nil, featureImage: Asset? = nil, orientation: String? = nil, pageMeta: [PageMeta]? = nil, platform: String? = nil, published: Bool? = nil, sanitizedContent: [SanitizedContent]? = nil, seo: SEO? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, type: String? = nil, id: String? = nil, schedule: ScheduleSchema? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.application = application
            
            self.platform = platform
            
            self.title = title
            
            self.slug = slug
            
            self.type = type
            
            self.tags = tags
            
            self.contentPath = contentPath
            
            self.orientation = orientation
            
            self.description = description
            
            self.published = published
            
            self.createdBy = createdBy
            
            self.dateMeta = dateMeta
            
            self.featureImage = featureImage
            
            self.schedule = schedule
            
            self.pageMeta = pageMeta
            
            self.seo = seo
            
            self.componentIds = componentIds
            
            self.archived = archived
            
            self.v = v
            
            self.content = content
            
            self.sanitizedContent = sanitizedContent
            
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
                    application = try container.decode(String.self, forKey: .application)
                
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
                    title = try container.decode(String.self, forKey: .title)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    contentPath = try container.decode(String.self, forKey: .contentPath)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                    createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
                
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
                    schedule = try container.decode(ScheduleSchema.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageMeta = try container.decode([PageMeta].self, forKey: .pageMeta)
                
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
                    componentIds = try container.decode([String].self, forKey: .componentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archived = try container.decode(Bool.self, forKey: .archived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
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
                    sanitizedContent = try container.decode([SanitizedContent].self, forKey: .sanitizedContent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(contentPath, forKey: .contentPath)
            
            
            
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(featureImage, forKey: .featureImage)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(pageMeta, forKey: .pageMeta)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(componentIds, forKey: .componentIds)
            
            
            
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(sanitizedContent, forKey: .sanitizedContent)
            
            
        }
        
    }
}


