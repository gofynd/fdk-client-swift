

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: EventSubscriptionEvents
        Used By: Communication
    */

    class EventSubscriptionEvents: Codable {
        
        
        public var category: String?
        
        public var eventName: String?
        
        public var group: String?
        
        public var slug: String?
        
        public var template: EventTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
            case eventName = "event_name"
            
            case group = "group"
            
            case slug = "slug"
            
            case template = "template"
            
        }

        public init(category: String? = nil, eventName: String? = nil, group: String? = nil, slug: String? = nil, template: EventTemplate? = nil) {
            
            self.category = category
            
            self.eventName = eventName
            
            self.group = group
            
            self.slug = slug
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    group = try container.decode(String.self, forKey: .group)
                
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
                    template = try container.decode(EventTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(group, forKey: .group)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: EventSubscriptionEvents
        Used By: Communication
    */

    class EventSubscriptionEvents: Codable {
        
        
        public var category: String?
        
        public var eventName: String?
        
        public var group: String?
        
        public var slug: String?
        
        public var template: EventTemplate?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
            case eventName = "event_name"
            
            case group = "group"
            
            case slug = "slug"
            
            case template = "template"
            
        }

        public init(category: String? = nil, eventName: String? = nil, group: String? = nil, slug: String? = nil, template: EventTemplate? = nil) {
            
            self.category = category
            
            self.eventName = eventName
            
            self.group = group
            
            self.slug = slug
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    group = try container.decode(String.self, forKey: .group)
                
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
                    template = try container.decode(EventTemplate.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(group, forKey: .group)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}


