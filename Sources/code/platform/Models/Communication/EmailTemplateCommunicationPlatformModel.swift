

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EmailTemplate
        Used By: Communication
    */

    class EmailTemplate: Codable {
        
        
        public var application: String?
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var editorType: String?
        
        public var editorMeta: String?
        
        public var staticTo: [String]?
        
        public var staticCc: [String]?
        
        public var staticBcc: [String]?
        
        public var replyTo: String?
        
        public var tags: [String]?
        
        public var subject: TemplateAndType?
        
        public var html: TemplateAndType?
        
        public var urlShorten: EnabledObj?
        
        public var priority: String?
        
        public var templateVariables: [String: Any]?
        
        public var published: Bool?
        
        public var category: String?
        
        public var id: String?
        
        public var headers: [EmailTemplateHeaders]?
        
        public var attachments: [Int]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        
        public var fromName: String?
        
        public var text: TemplateAndType?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case name = "name"
            
            case description = "description"
            
            case editorType = "editor_type"
            
            case editorMeta = "editor_meta"
            
            case staticTo = "static_to"
            
            case staticCc = "static_cc"
            
            case staticBcc = "static_bcc"
            
            case replyTo = "reply_to"
            
            case tags = "tags"
            
            case subject = "subject"
            
            case html = "html"
            
            case urlShorten = "url_shorten"
            
            case priority = "priority"
            
            case templateVariables = "template_variables"
            
            case published = "published"
            
            case category = "category"
            
            case id = "_id"
            
            case headers = "headers"
            
            case attachments = "attachments"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
            case fromName = "from_name"
            
            case text = "text"
            
        }

        public init(application: String? = nil, attachments: [Int]? = nil, category: String? = nil, createdAt: String? = nil, description: String? = nil, editorMeta: String? = nil, editorType: String? = nil, fromName: String? = nil, headers: [EmailTemplateHeaders]? = nil, html: TemplateAndType? = nil, isInternal: Bool? = nil, isSystem: Bool? = nil, name: String? = nil, priority: String? = nil, published: Bool? = nil, replyTo: String? = nil, slug: String? = nil, staticBcc: [String]? = nil, staticCc: [String]? = nil, staticTo: [String]? = nil, subject: TemplateAndType? = nil, tags: [String]? = nil, templateVariables: [String: Any]? = nil, text: TemplateAndType? = nil, updatedAt: String? = nil, urlShorten: EnabledObj? = nil, id: String? = nil, v: Int? = nil) {
            
            self.application = application
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.name = name
            
            self.description = description
            
            self.editorType = editorType
            
            self.editorMeta = editorMeta
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.replyTo = replyTo
            
            self.tags = tags
            
            self.subject = subject
            
            self.html = html
            
            self.urlShorten = urlShorten
            
            self.priority = priority
            
            self.templateVariables = templateVariables
            
            self.published = published
            
            self.category = category
            
            self.id = id
            
            self.headers = headers
            
            self.attachments = attachments
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
            self.fromName = fromName
            
            self.text = text
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSystem = try container.decode(Bool.self, forKey: .isSystem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInternal = try container.decode(Bool.self, forKey: .isInternal)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    editorType = try container.decode(String.self, forKey: .editorType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    editorMeta = try container.decode(String.self, forKey: .editorMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staticTo = try container.decode([String].self, forKey: .staticTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staticCc = try container.decode([String].self, forKey: .staticCc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staticBcc = try container.decode([String].self, forKey: .staticBcc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    replyTo = try container.decode(String.self, forKey: .replyTo)
                
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
                    subject = try container.decode(TemplateAndType.self, forKey: .subject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    html = try container.decode(TemplateAndType.self, forKey: .html)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    urlShorten = try container.decode(EnabledObj.self, forKey: .urlShorten)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(String.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateVariables = try container.decode([String: Any].self, forKey: .templateVariables)
                
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
                    category = try container.decode(String.self, forKey: .category)
                
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
                    headers = try container.decode([EmailTemplateHeaders].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attachments = try container.decode([Int].self, forKey: .attachments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromName = try container.decode(String.self, forKey: .fromName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(TemplateAndType.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            
            
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(editorType, forKey: .editorType)
            
            
            
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            
            
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            
            
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            
            
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            
            
            
            try? container.encodeIfPresent(replyTo, forKey: .replyTo)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            
            
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            
            
            
            try? container.encodeIfPresent(urlShorten, forKey: .urlShorten)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(fromName, forKey: .fromName)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EmailTemplate
        Used By: Communication
    */

    class EmailTemplate: Codable {
        
        
        public var application: String?
        
        public var isSystem: Bool?
        
        public var isInternal: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var editorType: String?
        
        public var editorMeta: String?
        
        public var staticTo: [String]?
        
        public var staticCc: [String]?
        
        public var staticBcc: [String]?
        
        public var replyTo: String?
        
        public var tags: [String]?
        
        public var subject: TemplateAndType?
        
        public var html: TemplateAndType?
        
        public var urlShorten: EnabledObj?
        
        public var priority: String?
        
        public var templateVariables: [String: Any]?
        
        public var published: Bool?
        
        public var category: String?
        
        public var id: String?
        
        public var headers: [EmailTemplateHeaders]?
        
        public var attachments: [Int]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        
        public var fromName: String?
        
        public var text: TemplateAndType?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case isSystem = "is_system"
            
            case isInternal = "is_internal"
            
            case name = "name"
            
            case description = "description"
            
            case editorType = "editor_type"
            
            case editorMeta = "editor_meta"
            
            case staticTo = "static_to"
            
            case staticCc = "static_cc"
            
            case staticBcc = "static_bcc"
            
            case replyTo = "reply_to"
            
            case tags = "tags"
            
            case subject = "subject"
            
            case html = "html"
            
            case urlShorten = "url_shorten"
            
            case priority = "priority"
            
            case templateVariables = "template_variables"
            
            case published = "published"
            
            case category = "category"
            
            case id = "_id"
            
            case headers = "headers"
            
            case attachments = "attachments"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
            case fromName = "from_name"
            
            case text = "text"
            
        }

        public init(application: String? = nil, attachments: [Int]? = nil, category: String? = nil, createdAt: String? = nil, description: String? = nil, editorMeta: String? = nil, editorType: String? = nil, fromName: String? = nil, headers: [EmailTemplateHeaders]? = nil, html: TemplateAndType? = nil, isInternal: Bool? = nil, isSystem: Bool? = nil, name: String? = nil, priority: String? = nil, published: Bool? = nil, replyTo: String? = nil, slug: String? = nil, staticBcc: [String]? = nil, staticCc: [String]? = nil, staticTo: [String]? = nil, subject: TemplateAndType? = nil, tags: [String]? = nil, templateVariables: [String: Any]? = nil, text: TemplateAndType? = nil, updatedAt: String? = nil, urlShorten: EnabledObj? = nil, id: String? = nil, v: Int? = nil) {
            
            self.application = application
            
            self.isSystem = isSystem
            
            self.isInternal = isInternal
            
            self.name = name
            
            self.description = description
            
            self.editorType = editorType
            
            self.editorMeta = editorMeta
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.replyTo = replyTo
            
            self.tags = tags
            
            self.subject = subject
            
            self.html = html
            
            self.urlShorten = urlShorten
            
            self.priority = priority
            
            self.templateVariables = templateVariables
            
            self.published = published
            
            self.category = category
            
            self.id = id
            
            self.headers = headers
            
            self.attachments = attachments
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
            self.fromName = fromName
            
            self.text = text
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSystem = try container.decode(Bool.self, forKey: .isSystem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isInternal = try container.decode(Bool.self, forKey: .isInternal)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    editorType = try container.decode(String.self, forKey: .editorType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    editorMeta = try container.decode(String.self, forKey: .editorMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staticTo = try container.decode([String].self, forKey: .staticTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staticCc = try container.decode([String].self, forKey: .staticCc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staticBcc = try container.decode([String].self, forKey: .staticBcc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    replyTo = try container.decode(String.self, forKey: .replyTo)
                
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
                    subject = try container.decode(TemplateAndType.self, forKey: .subject)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    html = try container.decode(TemplateAndType.self, forKey: .html)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    urlShorten = try container.decode(EnabledObj.self, forKey: .urlShorten)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(String.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateVariables = try container.decode([String: Any].self, forKey: .templateVariables)
                
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
                    category = try container.decode(String.self, forKey: .category)
                
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
                    headers = try container.decode([EmailTemplateHeaders].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attachments = try container.decode([Int].self, forKey: .attachments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromName = try container.decode(String.self, forKey: .fromName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(TemplateAndType.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(isSystem, forKey: .isSystem)
            
            
            
            
            try? container.encodeIfPresent(isInternal, forKey: .isInternal)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(editorType, forKey: .editorType)
            
            
            
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            
            
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            
            
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            
            
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            
            
            
            try? container.encodeIfPresent(replyTo, forKey: .replyTo)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            
            
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            
            
            
            try? container.encodeIfPresent(urlShorten, forKey: .urlShorten)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(fromName, forKey: .fromName)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
        }
        
    }
}


