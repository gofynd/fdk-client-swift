

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAutocompleteWordsResponseSchema
        Used By: Catalog
    */

    class CreateAutocompleteWordsResponseSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var appId: String?
        
        public var results: [[String: Any]]?
        
        public var words: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case appId = "app_id"
            
            case results = "results"
            
            case words = "words"
            
        }

        public init(appId: String? = nil, results: [[String: Any]]? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.appId = appId
            
            self.results = results
            
            self.words = words
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    results = try container.decode([[String: Any]].self, forKey: .results)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    words = try container.decode([String].self, forKey: .words)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAutocompleteWordsResponseSchema
        Used By: Catalog
    */

    class CreateAutocompleteWordsResponseSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var appId: String?
        
        public var results: [[String: Any]]?
        
        public var words: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case appId = "app_id"
            
            case results = "results"
            
            case words = "words"
            
        }

        public init(appId: String? = nil, results: [[String: Any]]? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.appId = appId
            
            self.results = results
            
            self.words = words
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    results = try container.decode([[String: Any]].self, forKey: .results)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    words = try container.decode([String].self, forKey: .words)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
        }
        
    }
}


