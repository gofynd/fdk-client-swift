

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetAutocompleteWordsData
        Used By: Catalog
    */

    class GetAutocompleteWordsData: Codable {
        
        
        public var results: [AutocompleteResult]?
        
        public var appId: String?
        
        public var words: [String]?
        
        public var isActive: Bool?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case results = "results"
            
            case appId = "app_id"
            
            case words = "words"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
        }

        public init(appId: String? = nil, isActive: Bool? = nil, results: [AutocompleteResult]? = nil, uid: String? = nil, words: [String]? = nil) {
            
            self.results = results
            
            self.appId = appId
            
            self.words = words
            
            self.isActive = isActive
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    results = try container.decode([AutocompleteResult].self, forKey: .results)
                
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
                    words = try container.decode([String].self, forKey: .words)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetAutocompleteWordsData
        Used By: Catalog
    */

    class GetAutocompleteWordsData: Codable {
        
        
        public var results: [AutocompleteResult]?
        
        public var appId: String?
        
        public var words: [String]?
        
        public var isActive: Bool?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case results = "results"
            
            case appId = "app_id"
            
            case words = "words"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
        }

        public init(appId: String? = nil, isActive: Bool? = nil, results: [AutocompleteResult]? = nil, uid: String? = nil, words: [String]? = nil) {
            
            self.results = results
            
            self.appId = appId
            
            self.words = words
            
            self.isActive = isActive
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    results = try container.decode([AutocompleteResult].self, forKey: .results)
                
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
                    words = try container.decode([String].self, forKey: .words)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


