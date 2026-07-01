

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectEntryFieldSchemaWithoutID
        Used By: Content
    */

    class CustomObjectEntryFieldSchemaWithoutID: Codable {
        
        
        public var slug: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case value = "value"
            
        }

        public init(slug: String? = nil, value: [String: Any]? = nil) {
            
            self.slug = slug
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectEntryFieldSchemaWithoutID
        Used By: Content
    */

    class CustomObjectEntryFieldSchemaWithoutID: Codable {
        
        
        public var slug: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case value = "value"
            
        }

        public init(slug: String? = nil, value: [String: Any]? = nil) {
            
            self.slug = slug
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


