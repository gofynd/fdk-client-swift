

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DefaultSEOSchemaMarkupTemplate
        Used By: Content
    */

    class DefaultSEOSchemaMarkupTemplate: Codable {
        
        
        public var pageType: String?
        
        public var schema: String?
        
        public var targetJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageType = "page_type"
            
            case schema = "schema"
            
            case targetJson = "target_json"
            
        }

        public init(pageType: String? = nil, schema: String? = nil, targetJson: [String: Any]? = nil) {
            
            self.pageType = pageType
            
            self.schema = schema
            
            self.targetJson = targetJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schema = try container.decode(String.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    targetJson = try container.decode([String: Any].self, forKey: .targetJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(targetJson, forKey: .targetJson)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DefaultSEOSchemaMarkupTemplate
        Used By: Content
    */

    class DefaultSEOSchemaMarkupTemplate: Codable {
        
        
        public var pageType: String?
        
        public var schema: String?
        
        public var targetJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageType = "page_type"
            
            case schema = "schema"
            
            case targetJson = "target_json"
            
        }

        public init(pageType: String? = nil, schema: String? = nil, targetJson: [String: Any]? = nil) {
            
            self.pageType = pageType
            
            self.schema = schema
            
            self.targetJson = targetJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schema = try container.decode(String.self, forKey: .schema)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    targetJson = try container.decode([String: Any].self, forKey: .targetJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
            
            
            try? container.encodeIfPresent(targetJson, forKey: .targetJson)
            
            
        }
        
    }
}


