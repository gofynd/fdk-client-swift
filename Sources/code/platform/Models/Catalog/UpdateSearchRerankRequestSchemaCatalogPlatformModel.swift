

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateSearchRerankRequestSchema
        Used By: Catalog
    */

    class UpdateSearchRerankRequestSchema: Codable {
        
        
        public var words: [String]?
        
        public var isActive: Bool?
        
        public var applicationId: String?
        
        public var ranking: RerankingBoostItems?
        

        public enum CodingKeys: String, CodingKey {
            
            case words = "words"
            
            case isActive = "is_active"
            
            case applicationId = "application_id"
            
            case ranking = "ranking"
            
        }

        public init(applicationId: String? = nil, isActive: Bool? = nil, ranking: RerankingBoostItems? = nil, words: [String]? = nil) {
            
            self.words = words
            
            self.isActive = isActive
            
            self.applicationId = applicationId
            
            self.ranking = ranking
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ranking = try container.decode(RerankingBoostItems.self, forKey: .ranking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(ranking, forKey: .ranking)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateSearchRerankRequestSchema
        Used By: Catalog
    */

    class UpdateSearchRerankRequestSchema: Codable {
        
        
        public var words: [String]?
        
        public var isActive: Bool?
        
        public var applicationId: String?
        
        public var ranking: RerankingBoostItems?
        

        public enum CodingKeys: String, CodingKey {
            
            case words = "words"
            
            case isActive = "is_active"
            
            case applicationId = "application_id"
            
            case ranking = "ranking"
            
        }

        public init(applicationId: String? = nil, isActive: Bool? = nil, ranking: RerankingBoostItems? = nil, words: [String]? = nil) {
            
            self.words = words
            
            self.isActive = isActive
            
            self.applicationId = applicationId
            
            self.ranking = ranking
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ranking = try container.decode(RerankingBoostItems.self, forKey: .ranking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(ranking, forKey: .ranking)
            
            
        }
        
    }
}


