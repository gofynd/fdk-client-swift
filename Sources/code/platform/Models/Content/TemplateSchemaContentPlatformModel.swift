

import Foundation


public extension PlatformClient.Content {
    /*
        Model: TemplateSchema
        Used By: Content
    */

    class TemplateSchema: Codable {
        
        
        public var templateId: String?
        
        public var templateVersion: String?
        
        public var templateFields: [TemplateField]?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateId = "template_id"
            
            case templateVersion = "template_version"
            
            case templateFields = "template_fields"
            
        }

        public init(templateFields: [TemplateField]? = nil, templateId: String? = nil, templateVersion: String? = nil) {
            
            self.templateId = templateId
            
            self.templateVersion = templateVersion
            
            self.templateFields = templateFields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    templateFields = try container.decode([TemplateField].self, forKey: .templateFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(templateVersion, forKey: .templateVersion)
            
            
            
            
            try? container.encodeIfPresent(templateFields, forKey: .templateFields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: TemplateSchema
        Used By: Content
    */

    class TemplateSchema: Codable {
        
        
        public var templateId: String?
        
        public var templateVersion: String?
        
        public var templateFields: [TemplateField]?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateId = "template_id"
            
            case templateVersion = "template_version"
            
            case templateFields = "template_fields"
            
        }

        public init(templateFields: [TemplateField]? = nil, templateId: String? = nil, templateVersion: String? = nil) {
            
            self.templateId = templateId
            
            self.templateVersion = templateVersion
            
            self.templateFields = templateFields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    templateFields = try container.decode([TemplateField].self, forKey: .templateFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            
            
            
            try? container.encodeIfPresent(templateVersion, forKey: .templateVersion)
            
            
            
            
            try? container.encodeIfPresent(templateFields, forKey: .templateFields)
            
            
        }
        
    }
}


