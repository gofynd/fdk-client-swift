

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EmailTemplateReq
        Used By: Communication
    */

    class EmailTemplateReq: Codable {
        
        
        public var name: String
        
        public var description: String?
        
        public var fromName: String?
        
        public var staticTo: [String]?
        
        public var staticCc: [String]?
        
        public var staticBcc: [String]?
        
        public var replyTo: String?
        
        public var priority: String?
        
        public var tags: [String]?
        
        public var templateVariables: [String: Any]?
        
        public var published: Bool?
        
        public var subject: TemplateAndType?
        
        public var html: TemplateAndType?
        
        public var editorType: String?
        
        public var editorMeta: String?
        
        public var attachments: [Int]?
        
        public var headers: [EmailTemplateHeaders]?
        
        public var keys: EmailTemplateKeys?
        
        public var text: TemplateAndType?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case fromName = "from_name"
            
            case staticTo = "static_to"
            
            case staticCc = "static_cc"
            
            case staticBcc = "static_bcc"
            
            case replyTo = "reply_to"
            
            case priority = "priority"
            
            case tags = "tags"
            
            case templateVariables = "template_variables"
            
            case published = "published"
            
            case subject = "subject"
            
            case html = "html"
            
            case editorType = "editor_type"
            
            case editorMeta = "editor_meta"
            
            case attachments = "attachments"
            
            case headers = "headers"
            
            case keys = "keys"
            
            case text = "text"
            
        }

        public init(attachments: [Int]? = nil, description: String? = nil, editorMeta: String? = nil, editorType: String? = nil, fromName: String? = nil, headers: [EmailTemplateHeaders]? = nil, html: TemplateAndType? = nil, keys: EmailTemplateKeys? = nil, name: String, priority: String? = nil, published: Bool? = nil, replyTo: String? = nil, staticBcc: [String]? = nil, staticCc: [String]? = nil, staticTo: [String]? = nil, subject: TemplateAndType? = nil, tags: [String]? = nil, templateVariables: [String: Any]? = nil, text: TemplateAndType? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.fromName = fromName
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.replyTo = replyTo
            
            self.priority = priority
            
            self.tags = tags
            
            self.templateVariables = templateVariables
            
            self.published = published
            
            self.subject = subject
            
            self.html = html
            
            self.editorType = editorType
            
            self.editorMeta = editorMeta
            
            self.attachments = attachments
            
            self.headers = headers
            
            self.keys = keys
            
            self.text = text
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    priority = try container.decode(String.self, forKey: .priority)
                
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
                    attachments = try container.decode([Int].self, forKey: .attachments)
                
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
                    keys = try container.decode(EmailTemplateKeys.self, forKey: .keys)
                
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(fromName, forKey: .fromName)
            
            
            
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            
            
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            
            
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            
            
            
            try? container.encodeIfPresent(replyTo, forKey: .replyTo)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            
            
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            
            
            
            try? container.encodeIfPresent(editorType, forKey: .editorType)
            
            
            
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            
            
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(keys, forKey: .keys)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EmailTemplateReq
        Used By: Communication
    */

    class EmailTemplateReq: Codable {
        
        
        public var name: String
        
        public var description: String?
        
        public var fromName: String?
        
        public var staticTo: [String]?
        
        public var staticCc: [String]?
        
        public var staticBcc: [String]?
        
        public var replyTo: String?
        
        public var priority: String?
        
        public var tags: [String]?
        
        public var templateVariables: [String: Any]?
        
        public var published: Bool?
        
        public var subject: TemplateAndType?
        
        public var html: TemplateAndType?
        
        public var editorType: String?
        
        public var editorMeta: String?
        
        public var attachments: [Int]?
        
        public var headers: [EmailTemplateHeaders]?
        
        public var keys: EmailTemplateKeys?
        
        public var text: TemplateAndType?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case fromName = "from_name"
            
            case staticTo = "static_to"
            
            case staticCc = "static_cc"
            
            case staticBcc = "static_bcc"
            
            case replyTo = "reply_to"
            
            case priority = "priority"
            
            case tags = "tags"
            
            case templateVariables = "template_variables"
            
            case published = "published"
            
            case subject = "subject"
            
            case html = "html"
            
            case editorType = "editor_type"
            
            case editorMeta = "editor_meta"
            
            case attachments = "attachments"
            
            case headers = "headers"
            
            case keys = "keys"
            
            case text = "text"
            
        }

        public init(attachments: [Int]? = nil, description: String? = nil, editorMeta: String? = nil, editorType: String? = nil, fromName: String? = nil, headers: [EmailTemplateHeaders]? = nil, html: TemplateAndType? = nil, keys: EmailTemplateKeys? = nil, name: String, priority: String? = nil, published: Bool? = nil, replyTo: String? = nil, staticBcc: [String]? = nil, staticCc: [String]? = nil, staticTo: [String]? = nil, subject: TemplateAndType? = nil, tags: [String]? = nil, templateVariables: [String: Any]? = nil, text: TemplateAndType? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.fromName = fromName
            
            self.staticTo = staticTo
            
            self.staticCc = staticCc
            
            self.staticBcc = staticBcc
            
            self.replyTo = replyTo
            
            self.priority = priority
            
            self.tags = tags
            
            self.templateVariables = templateVariables
            
            self.published = published
            
            self.subject = subject
            
            self.html = html
            
            self.editorType = editorType
            
            self.editorMeta = editorMeta
            
            self.attachments = attachments
            
            self.headers = headers
            
            self.keys = keys
            
            self.text = text
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    priority = try container.decode(String.self, forKey: .priority)
                
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
                    attachments = try container.decode([Int].self, forKey: .attachments)
                
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
                    keys = try container.decode(EmailTemplateKeys.self, forKey: .keys)
                
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(fromName, forKey: .fromName)
            
            
            
            
            try? container.encodeIfPresent(staticTo, forKey: .staticTo)
            
            
            
            
            try? container.encodeIfPresent(staticCc, forKey: .staticCc)
            
            
            
            
            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)
            
            
            
            
            try? container.encodeIfPresent(replyTo, forKey: .replyTo)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(subject, forKey: .subject)
            
            
            
            
            try? container.encodeIfPresent(html, forKey: .html)
            
            
            
            
            try? container.encodeIfPresent(editorType, forKey: .editorType)
            
            
            
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            
            
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(keys, forKey: .keys)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
        }
        
    }
}


