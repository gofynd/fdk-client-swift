

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymCreateRequestSchema
        Used By: Catalog
    */

    class SynonymCreateRequestSchema: Codable {
        
        
        public var type: String?
        
        public var key: String?
        
        public var synonyms: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case key = "key"
            
            case synonyms = "synonyms"
            
        }

        public init(key: String? = nil, synonyms: [String]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.key = key
            
            self.synonyms = synonyms
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymCreateRequestSchema
        Used By: Catalog
    */

    class SynonymCreateRequestSchema: Codable {
        
        
        public var type: String?
        
        public var key: String?
        
        public var synonyms: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case key = "key"
            
            case synonyms = "synonyms"
            
        }

        public init(key: String? = nil, synonyms: [String]? = nil, type: String? = nil) {
            
            self.type = type
            
            self.key = key
            
            self.synonyms = synonyms
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
        }
        
    }
}


