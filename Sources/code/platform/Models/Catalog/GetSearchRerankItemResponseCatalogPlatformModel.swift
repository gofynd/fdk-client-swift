

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetSearchRerankItemResponse
        Used By: Catalog
    */

    class GetSearchRerankItemResponse: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var words: [String]?
        
        public var appId: String?
        
        public var modifiedBy: CreatedBy?
        
        public var ranking: RerankingBoostItems?
        
        public var createdBy: CreatedBy?
        
        public var isActive: Bool?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case words = "words"
            
            case appId = "app_id"
            
            case modifiedBy = "modified_by"
            
            case ranking = "ranking"
            
            case createdBy = "created_by"
            
            case isActive = "is_active"
            
            case id = "id"
            
        }

        public init(appId: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, ranking: RerankingBoostItems? = nil, words: [String]? = nil) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.words = words
            
            self.appId = appId
            
            self.modifiedBy = modifiedBy
            
            self.ranking = ranking
            
            self.createdBy = createdBy
            
            self.isActive = isActive
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(ranking, forKey: .ranking)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetSearchRerankItemResponse
        Used By: Catalog
    */

    class GetSearchRerankItemResponse: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var words: [String]?
        
        public var appId: String?
        
        public var modifiedBy: CreatedBy?
        
        public var ranking: RerankingBoostItems?
        
        public var createdBy: CreatedBy?
        
        public var isActive: Bool?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case words = "words"
            
            case appId = "app_id"
            
            case modifiedBy = "modified_by"
            
            case ranking = "ranking"
            
            case createdBy = "created_by"
            
            case isActive = "is_active"
            
            case id = "id"
            
        }

        public init(appId: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, id: String? = nil, isActive: Bool? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, ranking: RerankingBoostItems? = nil, words: [String]? = nil) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.words = words
            
            self.appId = appId
            
            self.modifiedBy = modifiedBy
            
            self.ranking = ranking
            
            self.createdBy = createdBy
            
            self.isActive = isActive
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(ranking, forKey: .ranking)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


