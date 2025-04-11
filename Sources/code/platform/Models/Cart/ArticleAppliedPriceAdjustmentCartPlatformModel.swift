

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ArticleAppliedPriceAdjustment
        Used By: Cart
    */

    class ArticleAppliedPriceAdjustment: Codable {
        
        
        public var adjustedValue: [String: Any]?
        
        public var articleLevelDistribution: Bool?
        
        public var articleId: String?
        
        public var appliedQuantity: Int?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case adjustedValue = "adjusted_value"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case articleId = "article_id"
            
            case appliedQuantity = "applied_quantity"
            
            case meta = "meta"
            
        }

        public init(adjustedValue: [String: Any]? = nil, appliedQuantity: Int? = nil, articleId: String? = nil, articleLevelDistribution: Bool? = nil, meta: [String: Any]? = nil) {
            
            self.adjustedValue = adjustedValue
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.articleId = articleId
            
            self.appliedQuantity = appliedQuantity
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedQuantity = try container.decode(Int.self, forKey: .appliedQuantity)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(adjustedValue, forKey: .adjustedValue)
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            
            try? container.encodeIfPresent(appliedQuantity, forKey: .appliedQuantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


