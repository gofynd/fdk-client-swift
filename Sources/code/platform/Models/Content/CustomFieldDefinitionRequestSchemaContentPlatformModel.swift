

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomFieldDefinitionRequestSchema
        Used By: Content
    */

    class CustomFieldDefinitionRequestSchema: Codable {
        
        
        public var resource: String?
        
        public var type: String?
        
        public var key: String?
        
        public var namespace: String?
        
        public var slug: String?
        
        public var multiValue: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var creator: String?
        
        public var validations: [FieldValidations]?
        

        public enum CodingKeys: String, CodingKey {
            
            case resource = "resource"
            
            case type = "type"
            
            case key = "key"
            
            case namespace = "namespace"
            
            case slug = "slug"
            
            case multiValue = "multi_value"
            
            case name = "name"
            
            case description = "description"
            
            case creator = "creator"
            
            case validations = "validations"
            
        }

        public init(creator: String? = nil, description: String? = nil, key: String? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, resource: String? = nil, slug: String? = nil, type: String? = nil, validations: [FieldValidations]? = nil) {
            
            self.resource = resource
            
            self.type = type
            
            self.key = key
            
            self.namespace = namespace
            
            self.slug = slug
            
            self.multiValue = multiValue
            
            self.name = name
            
            self.description = description
            
            self.creator = creator
            
            self.validations = validations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    resource = try container.decode(String.self, forKey: .resource)
                
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    namespace = try container.decode(String.self, forKey: .namespace)
                
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
                    multiValue = try container.decode(Bool.self, forKey: .multiValue)
                
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
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validations = try container.decode([FieldValidations].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomFieldDefinitionRequestSchema
        Used By: Content
    */

    class CustomFieldDefinitionRequestSchema: Codable {
        
        
        public var resource: String?
        
        public var type: String?
        
        public var key: String?
        
        public var namespace: String?
        
        public var slug: String?
        
        public var multiValue: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var creator: String?
        
        public var validations: [FieldValidations]?
        

        public enum CodingKeys: String, CodingKey {
            
            case resource = "resource"
            
            case type = "type"
            
            case key = "key"
            
            case namespace = "namespace"
            
            case slug = "slug"
            
            case multiValue = "multi_value"
            
            case name = "name"
            
            case description = "description"
            
            case creator = "creator"
            
            case validations = "validations"
            
        }

        public init(creator: String? = nil, description: String? = nil, key: String? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, resource: String? = nil, slug: String? = nil, type: String? = nil, validations: [FieldValidations]? = nil) {
            
            self.resource = resource
            
            self.type = type
            
            self.key = key
            
            self.namespace = namespace
            
            self.slug = slug
            
            self.multiValue = multiValue
            
            self.name = name
            
            self.description = description
            
            self.creator = creator
            
            self.validations = validations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    resource = try container.decode(String.self, forKey: .resource)
                
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    namespace = try container.decode(String.self, forKey: .namespace)
                
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
                    multiValue = try container.decode(Bool.self, forKey: .multiValue)
                
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
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validations = try container.decode([FieldValidations].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resource, forKey: .resource)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
        }
        
    }
}


