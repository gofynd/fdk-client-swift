

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: SearchConfig
        Used By: Configuration
    */

    class SearchConfig: Codable {
        
        
        public var fstIdentification: FstIdentification?
        
        public var querySuggestions: QuerySuggestions?
        
        public var skgIdentification: SkgIdentification?
        

        public enum CodingKeys: String, CodingKey {
            
            case fstIdentification = "fst_identification"
            
            case querySuggestions = "query_suggestions"
            
            case skgIdentification = "skg_identification"
            
        }

        public init(fstIdentification: FstIdentification? = nil, querySuggestions: QuerySuggestions? = nil, skgIdentification: SkgIdentification? = nil) {
            
            self.fstIdentification = fstIdentification
            
            self.querySuggestions = querySuggestions
            
            self.skgIdentification = skgIdentification
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fstIdentification = try container.decode(FstIdentification.self, forKey: .fstIdentification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    querySuggestions = try container.decode(QuerySuggestions.self, forKey: .querySuggestions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skgIdentification = try container.decode(SkgIdentification.self, forKey: .skgIdentification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fstIdentification, forKey: .fstIdentification)
            
            
            
            
            try? container.encodeIfPresent(querySuggestions, forKey: .querySuggestions)
            
            
            
            
            try? container.encodeIfPresent(skgIdentification, forKey: .skgIdentification)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: SearchConfig
        Used By: Configuration
    */

    class SearchConfig: Codable {
        
        
        public var fstIdentification: FstIdentification?
        
        public var querySuggestions: QuerySuggestions?
        
        public var skgIdentification: SkgIdentification?
        

        public enum CodingKeys: String, CodingKey {
            
            case fstIdentification = "fst_identification"
            
            case querySuggestions = "query_suggestions"
            
            case skgIdentification = "skg_identification"
            
        }

        public init(fstIdentification: FstIdentification? = nil, querySuggestions: QuerySuggestions? = nil, skgIdentification: SkgIdentification? = nil) {
            
            self.fstIdentification = fstIdentification
            
            self.querySuggestions = querySuggestions
            
            self.skgIdentification = skgIdentification
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fstIdentification = try container.decode(FstIdentification.self, forKey: .fstIdentification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    querySuggestions = try container.decode(QuerySuggestions.self, forKey: .querySuggestions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    skgIdentification = try container.decode(SkgIdentification.self, forKey: .skgIdentification)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fstIdentification, forKey: .fstIdentification)
            
            
            
            
            try? container.encodeIfPresent(querySuggestions, forKey: .querySuggestions)
            
            
            
            
            try? container.encodeIfPresent(skgIdentification, forKey: .skgIdentification)
            
            
        }
        
    }
}


