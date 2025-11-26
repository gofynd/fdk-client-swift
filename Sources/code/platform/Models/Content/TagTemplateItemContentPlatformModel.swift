

import Foundation


public extension PlatformClient.Content {
    /*
        Model: TagTemplateItem
        Used By: Content
    */

    class TagTemplateItem: Codable {
        
        
        public var templateName: String?
        
        public var type: String?
        
        public var subType: String?
        
        public var position: String?
        
        public var pages: [String]?
        
        public var attributes: [String: Any]?
        
        public var compatibleEngines: [String]?
        
        public var fieldMappings: [String: Any]?
        
        public var layout: TemplateLayout?
        
        public var name: String?
        
        public var path: String?
        
        public var description: String?
        
        public var image: String?
        
        public var note: String?
        
        public var templateId: String?
        
        public var templateVersion: String?
        
        public var category: String?
        
        public var fields: [FieldDefinition]?
        
        public var script: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateName = "template_name"
            
            case type = "type"
            
            case subType = "sub_type"
            
            case position = "position"
            
            case pages = "pages"
            
            case attributes = "attributes"
            
            case compatibleEngines = "compatible_engines"
            
            case fieldMappings = "field_mappings"
            
            case layout = "layout"
            
            case name = "name"
            
            case path = "path"
            
            case description = "description"
            
            case image = "image"
            
            case note = "note"
            
            case templateId = "template_id"
            
            case templateVersion = "template_version"
            
            case category = "category"
            
            case fields = "fields"
            
            case script = "script"
            
        }

        public init(attributes: [String: Any]? = nil, category: String? = nil, compatibleEngines: [String]? = nil, description: String? = nil, fields: [FieldDefinition]? = nil, fieldMappings: [String: Any]? = nil, image: String? = nil, layout: TemplateLayout? = nil, name: String? = nil, note: String? = nil, pages: [String]? = nil, path: String? = nil, position: String? = nil, script: String? = nil, subType: String? = nil, templateId: String? = nil, templateName: String? = nil, templateVersion: String? = nil, type: String? = nil) {
            
            self.templateName = templateName
            
            self.type = type
            
            self.subType = subType
            
            self.position = position
            
            self.pages = pages
            
            self.attributes = attributes
            
            self.compatibleEngines = compatibleEngines
            
            self.fieldMappings = fieldMappings
            
            self.layout = layout
            
            self.name = name
            
            self.path = path
            
            self.description = description
            
            self.image = image
            
            self.note = note
            
            self.templateId = templateId
            
            self.templateVersion = templateVersion
            
            self.category = category
            
            self.fields = fields
            
            self.script = script
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateName = try container.decode(String.self, forKey: .templateName)
                
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
                    subType = try container.decode(String.self, forKey: .subType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    position = try container.decode(String.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode([String].self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    compatibleEngines = try container.decode([String].self, forKey: .compatibleEngines)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldMappings = try container.decode([String: Any].self, forKey: .fieldMappings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    layout = try container.decode(TemplateLayout.self, forKey: .layout)
                
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
                    path = try container.decode(String.self, forKey: .path)
                
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
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    note = try container.decode(String.self, forKey: .note)
                
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
                    templateVersion = try container.decode(String.self, forKey: .templateVersion)
                
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
                    fields = try container.decode([FieldDefinition].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    script = try container.decode(String.self, forKey: .script)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateName, forKey: .templateName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(compatibleEngines, forKey: .compatibleEngines)
            
            
            
            
            try? container.encodeIfPresent(fieldMappings, forKey: .fieldMappings)
            
            
            
            
            try? container.encodeIfPresent(layout, forKey: .layout)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(note, forKey: .note)
            
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(templateVersion, forKey: .templateVersion)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
            
            
            try? container.encodeIfPresent(script, forKey: .script)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: TagTemplateItem
        Used By: Content
    */

    class TagTemplateItem: Codable {
        
        
        public var templateName: String?
        
        public var type: String?
        
        public var subType: String?
        
        public var position: String?
        
        public var pages: [String]?
        
        public var attributes: [String: Any]?
        
        public var compatibleEngines: [String]?
        
        public var fieldMappings: [String: Any]?
        
        public var layout: TemplateLayout?
        
        public var name: String?
        
        public var path: String?
        
        public var description: String?
        
        public var image: String?
        
        public var note: String?
        
        public var templateId: String?
        
        public var templateVersion: String?
        
        public var category: String?
        
        public var fields: [FieldDefinition]?
        
        public var script: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateName = "template_name"
            
            case type = "type"
            
            case subType = "sub_type"
            
            case position = "position"
            
            case pages = "pages"
            
            case attributes = "attributes"
            
            case compatibleEngines = "compatible_engines"
            
            case fieldMappings = "field_mappings"
            
            case layout = "layout"
            
            case name = "name"
            
            case path = "path"
            
            case description = "description"
            
            case image = "image"
            
            case note = "note"
            
            case templateId = "template_id"
            
            case templateVersion = "template_version"
            
            case category = "category"
            
            case fields = "fields"
            
            case script = "script"
            
        }

        public init(attributes: [String: Any]? = nil, category: String? = nil, compatibleEngines: [String]? = nil, description: String? = nil, fields: [FieldDefinition]? = nil, fieldMappings: [String: Any]? = nil, image: String? = nil, layout: TemplateLayout? = nil, name: String? = nil, note: String? = nil, pages: [String]? = nil, path: String? = nil, position: String? = nil, script: String? = nil, subType: String? = nil, templateId: String? = nil, templateName: String? = nil, templateVersion: String? = nil, type: String? = nil) {
            
            self.templateName = templateName
            
            self.type = type
            
            self.subType = subType
            
            self.position = position
            
            self.pages = pages
            
            self.attributes = attributes
            
            self.compatibleEngines = compatibleEngines
            
            self.fieldMappings = fieldMappings
            
            self.layout = layout
            
            self.name = name
            
            self.path = path
            
            self.description = description
            
            self.image = image
            
            self.note = note
            
            self.templateId = templateId
            
            self.templateVersion = templateVersion
            
            self.category = category
            
            self.fields = fields
            
            self.script = script
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateName = try container.decode(String.self, forKey: .templateName)
                
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
                    subType = try container.decode(String.self, forKey: .subType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    position = try container.decode(String.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode([String].self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    compatibleEngines = try container.decode([String].self, forKey: .compatibleEngines)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fieldMappings = try container.decode([String: Any].self, forKey: .fieldMappings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    layout = try container.decode(TemplateLayout.self, forKey: .layout)
                
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
                    path = try container.decode(String.self, forKey: .path)
                
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
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    note = try container.decode(String.self, forKey: .note)
                
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
                    templateVersion = try container.decode(String.self, forKey: .templateVersion)
                
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
                    fields = try container.decode([FieldDefinition].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    script = try container.decode(String.self, forKey: .script)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateName, forKey: .templateName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(compatibleEngines, forKey: .compatibleEngines)
            
            
            
            
            try? container.encodeIfPresent(fieldMappings, forKey: .fieldMappings)
            
            
            
            
            try? container.encodeIfPresent(layout, forKey: .layout)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(note, forKey: .note)
            
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(templateVersion, forKey: .templateVersion)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
            
            
            try? container.encodeIfPresent(script, forKey: .script)
            
            
        }
        
    }
}


