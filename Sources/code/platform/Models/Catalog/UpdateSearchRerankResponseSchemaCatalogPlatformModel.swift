

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateSearchRerankResponseSchema
        Used By: Catalog
    */

    class UpdateSearchRerankResponseSchema: Codable {
        
        
        public var words: [String]?
        
        public var appId: String?
        
        public var ranking: RerankingBoostItems?
        
        public var isActive: Bool?
        
        public var createdOn: String?
        
        public var createdBy: UserInfo?
        
        public var modifiedOn: String?
        
        public var modifiedBy: UserInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case words = "words"
            
            case appId = "app_id"
            
            case ranking = "ranking"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case modifiedOn = "modified_on"
            
            case modifiedBy = "modified_by"
            
        }

        public init(appId: String? = nil, createdBy: UserInfo? = nil, createdOn: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil, ranking: RerankingBoostItems? = nil, words: [String]? = nil) {
            
            self.words = words
            
            self.appId = appId
            
            self.ranking = ranking
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.modifiedOn = modifiedOn
            
            self.modifiedBy = modifiedBy
            
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
                    appId = try container.decode(String.self, forKey: .appId)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
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
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(ranking, forKey: .ranking)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateSearchRerankResponseSchema
        Used By: Catalog
    */

    class UpdateSearchRerankResponseSchema: Codable {
        
        
        public var words: [String]?
        
        public var appId: String?
        
        public var ranking: RerankingBoostItems?
        
        public var isActive: Bool?
        
        public var createdOn: String?
        
        public var createdBy: UserInfo?
        
        public var modifiedOn: String?
        
        public var modifiedBy: UserInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case words = "words"
            
            case appId = "app_id"
            
            case ranking = "ranking"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case modifiedOn = "modified_on"
            
            case modifiedBy = "modified_by"
            
        }

        public init(appId: String? = nil, createdBy: UserInfo? = nil, createdOn: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo? = nil, modifiedOn: String? = nil, ranking: RerankingBoostItems? = nil, words: [String]? = nil) {
            
            self.words = words
            
            self.appId = appId
            
            self.ranking = ranking
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.modifiedOn = modifiedOn
            
            self.modifiedBy = modifiedBy
            
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
                    appId = try container.decode(String.self, forKey: .appId)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
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
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(words, forKey: .words)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(ranking, forKey: .ranking)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}


