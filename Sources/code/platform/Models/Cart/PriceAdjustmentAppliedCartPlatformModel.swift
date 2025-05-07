

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PriceAdjustmentApplied
        Used By: Cart
    */

    class PriceAdjustmentApplied: Codable {
        
        
        public var appliedArticlesIds: [[String: Any]]?
        
        public var adjustedValue: [String: Any]?
        
        public var appliedQuantity: Double?
        
        public var meta: [String: Any]?
        
        public var articleLevelDistribution: Bool?
        
        public var type: String?
        
        public var removeArticles: Bool?
        
        public var autoRemove: Bool?
        
        public var message: String?
        
        public var restrictions: [String: Any]?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appliedArticlesIds = "applied_articles_ids"
            
            case adjustedValue = "adjusted_value"
            
            case appliedQuantity = "applied_quantity"
            
            case meta = "meta"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case type = "type"
            
            case removeArticles = "remove_articles"
            
            case autoRemove = "auto_remove"
            
            case message = "message"
            
            case restrictions = "restrictions"
            
            case id = "_id"
            
        }

        public init(adjustedValue: [String: Any]? = nil, appliedArticlesIds: [[String: Any]]? = nil, appliedQuantity: Double? = nil, articleLevelDistribution: Bool? = nil, autoRemove: Bool? = nil, message: String? = nil, meta: [String: Any]? = nil, removeArticles: Bool? = nil, restrictions: [String: Any]? = nil, type: String? = nil, id: String? = nil) {
            
            self.appliedArticlesIds = appliedArticlesIds
            
            self.adjustedValue = adjustedValue
            
            self.appliedQuantity = appliedQuantity
            
            self.meta = meta
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.type = type
            
            self.removeArticles = removeArticles
            
            self.autoRemove = autoRemove
            
            self.message = message
            
            self.restrictions = restrictions
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appliedArticlesIds = try container.decode([[String: Any]].self, forKey: .appliedArticlesIds)
                
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
                    appliedQuantity = try container.decode(Double.self, forKey: .appliedQuantity)
                
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
                    articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
                
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
                    removeArticles = try container.decode(Bool.self, forKey: .removeArticles)
                
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
                    message = try container.decode(String.self, forKey: .message)
                
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
            
            
            
            try? container.encodeIfPresent(appliedArticlesIds, forKey: .appliedArticlesIds)
            
            
            
            
            try? container.encodeIfPresent(adjustedValue, forKey: .adjustedValue)
            
            
            
            
            try? container.encodeIfPresent(appliedQuantity, forKey: .appliedQuantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(removeArticles, forKey: .removeArticles)
            
            
            
            
            try? container.encodeIfPresent(autoRemove, forKey: .autoRemove)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


