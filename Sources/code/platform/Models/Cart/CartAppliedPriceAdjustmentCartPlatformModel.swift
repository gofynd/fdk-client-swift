

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartAppliedPriceAdjustment
        Used By: Cart
    */

    class CartAppliedPriceAdjustment: Codable {
        
        
        public var removeArticles: Bool?
        
        public var adjustedValue: [String: Any]?
        
        public var articleLevelDistribution: Bool?
        
        public var autoRemove: Bool?
        
        public var appliedArticlesIds: [String]?
        
        public var message: String?
        
        public var type: String?
        
        public var meta: [String: Any]?
        
        public var restrictions: [String: Any]?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case removeArticles = "remove_articles"
            
            case adjustedValue = "adjusted_value"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case autoRemove = "auto_remove"
            
            case appliedArticlesIds = "applied_articles_ids"
            
            case message = "message"
            
            case type = "_type"
            
            case meta = "meta"
            
            case restrictions = "restrictions"
            
            case id = "_id"
            
        }

        public init(adjustedValue: [String: Any]? = nil, appliedArticlesIds: [String]? = nil, articleLevelDistribution: Bool? = nil, autoRemove: Bool? = nil, message: String? = nil, meta: [String: Any]? = nil, removeArticles: Bool? = nil, restrictions: [String: Any]? = nil, id: String? = nil, type: String? = nil) {
            
            self.removeArticles = removeArticles
            
            self.adjustedValue = adjustedValue
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.autoRemove = autoRemove
            
            self.appliedArticlesIds = appliedArticlesIds
            
            self.message = message
            
            self.type = type
            
            self.meta = meta
            
            self.restrictions = restrictions
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    removeArticles = try container.decode(Bool.self, forKey: .removeArticles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    adjustedValue = try container.decode([String: Any].self, forKey: .adjustedValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoRemove = try container.decode(Bool.self, forKey: .autoRemove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedArticlesIds = try container.decode([String].self, forKey: .appliedArticlesIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode([String: Any].self, forKey: .restrictions)
                
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
            
            
            
            try? container.encodeIfPresent(removeArticles, forKey: .removeArticles)
            
            
            
            
            try? container.encodeIfPresent(adjustedValue, forKey: .adjustedValue)
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(autoRemove, forKey: .autoRemove)
            
            
            
            
            try? container.encodeIfPresent(appliedArticlesIds, forKey: .appliedArticlesIds)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


