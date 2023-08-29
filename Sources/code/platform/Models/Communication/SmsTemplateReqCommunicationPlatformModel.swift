

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SmsTemplateReq
        Used By: Communication
    */

    class SmsTemplateReq: Codable {
        
        
        public var name: String
        
        public var description: String?
        
        public var priority: String?
        
        public var templateId: String?
        
        public var meta: metaObj?
        
        public var templateVariables: [String: Any]?
        
        public var published: Bool?
        
        public var message: SmsTemplateMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case priority = "priority"
            
            case templateId = "template_id"
            
            case meta = "meta"
            
            case templateVariables = "template_variables"
            
            case published = "published"
            
            case message = "message"
            
        }

        public init(description: String? = nil, message: SmsTemplateMessage? = nil, meta: metaObj? = nil, name: String, priority: String? = nil, published: Bool? = nil, templateId: String? = nil, templateVariables: [String: Any]? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.priority = priority
            
            self.templateId = templateId
            
            self.meta = meta
            
            self.templateVariables = templateVariables
            
            self.published = published
            
            self.message = message
            
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
                    priority = try container.decode(String.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateId = try container.decode(String.self, forKey: .templateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(metaObj.self, forKey: .meta)
                
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
                    message = try container.decode(SmsTemplateMessage.self, forKey: .message)
                
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
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SmsTemplateReq
        Used By: Communication
    */

    class SmsTemplateReq: Codable {
        
        
        public var name: String
        
        public var description: String?
        
        public var priority: String?
        
        public var templateId: String?
        
        public var meta: metaObj?
        
        public var templateVariables: [String: Any]?
        
        public var published: Bool?
        
        public var message: SmsTemplateMessage?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case priority = "priority"
            
            case templateId = "template_id"
            
            case meta = "meta"
            
            case templateVariables = "template_variables"
            
            case published = "published"
            
            case message = "message"
            
        }

        public init(description: String? = nil, message: SmsTemplateMessage? = nil, meta: metaObj? = nil, name: String, priority: String? = nil, published: Bool? = nil, templateId: String? = nil, templateVariables: [String: Any]? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.priority = priority
            
            self.templateId = templateId
            
            self.meta = meta
            
            self.templateVariables = templateVariables
            
            self.published = published
            
            self.message = message
            
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
                    priority = try container.decode(String.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    templateId = try container.decode(String.self, forKey: .templateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(metaObj.self, forKey: .meta)
                
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
                    message = try container.decode(SmsTemplateMessage.self, forKey: .message)
                
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
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


