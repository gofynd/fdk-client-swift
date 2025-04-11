

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventSubscriptionsBulkUpdateRes
        Used By: Communication
    */

    class EventSubscriptionsBulkUpdateRes: Codable {
        
        
        public var template: EventSubscriptionTemplate?
        
        public var id: String?
        
        public var application: String?
        
        public var event: String?
        
        public var slug: String?
        
        public var category: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case template = "template"
            
            case id = "_id"
            
            case application = "application"
            
            case event = "event"
            
            case slug = "slug"
            
            case category = "category"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, category: String? = nil, createdAt: String? = nil, event: String? = nil, slug: String? = nil, template: EventSubscriptionTemplate? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            
            self.template = template
            
            self.id = id
            
            self.application = application
            
            self.event = event
            
            self.slug = slug
            
            self.category = category
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    template = try container.decode(EventSubscriptionTemplate.self, forKey: .template)
                
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
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode(String.self, forKey: .event)
                
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
                    category = try container.decode(String.self, forKey: .category)
                
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
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventSubscriptionsBulkUpdateRes
        Used By: Communication
    */

    class EventSubscriptionsBulkUpdateRes: Codable {
        
        
        public var template: EventSubscriptionTemplate?
        
        public var id: String?
        
        public var application: String?
        
        public var event: String?
        
        public var slug: String?
        
        public var category: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case template = "template"
            
            case id = "_id"
            
            case application = "application"
            
            case event = "event"
            
            case slug = "slug"
            
            case category = "category"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, category: String? = nil, createdAt: String? = nil, event: String? = nil, slug: String? = nil, template: EventSubscriptionTemplate? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            
            self.template = template
            
            self.id = id
            
            self.application = application
            
            self.event = event
            
            self.slug = slug
            
            self.category = category
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    template = try container.decode(EventSubscriptionTemplate.self, forKey: .template)
                
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
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode(String.self, forKey: .event)
                
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
                    category = try container.decode(String.self, forKey: .category)
                
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
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


