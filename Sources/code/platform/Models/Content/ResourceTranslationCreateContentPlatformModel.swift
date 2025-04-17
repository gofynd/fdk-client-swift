

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceTranslationCreate
        Used By: Content
    */

    class ResourceTranslationCreate: Codable {
        
        
        public var type: String?
        
        public var resourceId: String?
        
        public var locale: String?
        
        public var value: TranslationValue?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case resourceId = "resource_id"
            
            case locale = "locale"
            
            case value = "value"
            
        }

        public init(locale: String? = nil, resourceId: String? = nil, type: String? = nil, value: TranslationValue? = nil) {
            
            self.type = type
            
            self.resourceId = resourceId
            
            self.locale = locale
            
            self.value = value
            
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
                    resourceId = try container.decode(String.self, forKey: .resourceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(TranslationValue.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(resourceId, forKey: .resourceId)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceTranslationCreate
        Used By: Content
    */

    class ResourceTranslationCreate: Codable {
        
        
        public var type: String?
        
        public var resourceId: String?
        
        public var locale: String?
        
        public var value: TranslationValue?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case resourceId = "resource_id"
            
            case locale = "locale"
            
            case value = "value"
            
        }

        public init(locale: String? = nil, resourceId: String? = nil, type: String? = nil, value: TranslationValue? = nil) {
            
            self.type = type
            
            self.resourceId = resourceId
            
            self.locale = locale
            
            self.value = value
            
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
                    resourceId = try container.decode(String.self, forKey: .resourceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(TranslationValue.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(resourceId, forKey: .resourceId)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


