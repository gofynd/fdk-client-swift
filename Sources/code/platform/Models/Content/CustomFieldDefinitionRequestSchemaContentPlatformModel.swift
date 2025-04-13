

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomFieldDefinitionRequestSchema
        Used By: Content
    */

    class CustomFieldDefinitionRequestSchema: Codable {
        
        
        public var type: String?
        
        public var slug: String?
        
        public var namespace: String?
        
        public var multiValue: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var validations: [FieldValidations]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case slug = "slug"
            
            case namespace = "namespace"
            
            case multiValue = "multi_value"
            
            case name = "name"
            
            case description = "description"
            
            case validations = "validations"
            
        }

        public init(description: String? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, slug: String? = nil, type: String? = nil, validations: [FieldValidations]? = nil) {
            
            self.type = type
            
            self.slug = slug
            
            self.namespace = namespace
            
            self.multiValue = multiValue
            
            self.name = name
            
            self.description = description
            
            self.validations = validations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    namespace = try container.decode(String.self, forKey: .namespace)
                
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
                    validations = try container.decode([FieldValidations].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
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
        
        
        public var type: String?
        
        public var slug: String?
        
        public var namespace: String?
        
        public var multiValue: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var validations: [FieldValidations]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case slug = "slug"
            
            case namespace = "namespace"
            
            case multiValue = "multi_value"
            
            case name = "name"
            
            case description = "description"
            
            case validations = "validations"
            
        }

        public init(description: String? = nil, multiValue: Bool? = nil, name: String? = nil, namespace: String? = nil, slug: String? = nil, type: String? = nil, validations: [FieldValidations]? = nil) {
            
            self.type = type
            
            self.slug = slug
            
            self.namespace = namespace
            
            self.multiValue = multiValue
            
            self.name = name
            
            self.description = description
            
            self.validations = validations
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    namespace = try container.decode(String.self, forKey: .namespace)
                
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
                    validations = try container.decode([FieldValidations].self, forKey: .validations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            
            
            
            try? container.encodeIfPresent(multiValue, forKey: .multiValue)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            
        }
        
    }
}


