

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PriceAdjustmentApplied
        Used By: Cart
    */

    class PriceAdjustmentApplied: Codable {
        
        
        public var articleId: String?
        
        public var adjustedValue: [String: Any]?
        
        public var appliedQuantity: Double?
        
        public var meta: [String: Any]?
        
        public var articleLevelDistribution: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case articleId = "article_id"
            
            case adjustedValue = "adjusted_value"
            
            case appliedQuantity = "applied_quantity"
            
            case meta = "meta"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case type = "type"
            
        }

        public init(adjustedValue: [String: Any]? = nil, appliedQuantity: Double? = nil, articleId: String? = nil, articleLevelDistribution: Bool? = nil, meta: [String: Any]? = nil, type: String? = nil) {
            
            self.articleId = articleId
            
            self.adjustedValue = adjustedValue
            
            self.appliedQuantity = appliedQuantity
            
            self.meta = meta
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            
            try? container.encodeIfPresent(adjustedValue, forKey: .adjustedValue)
            
            
            
            
            try? container.encodeIfPresent(appliedQuantity, forKey: .appliedQuantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


