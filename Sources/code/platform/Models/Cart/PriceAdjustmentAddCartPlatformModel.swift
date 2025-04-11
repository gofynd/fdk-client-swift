

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PriceAdjustmentAdd
        Used By: Cart
    */

    class PriceAdjustmentAdd: Codable {
        
        
        public var value: Double
        
        public var message: String
        
        public var applyExpiry: String?
        
        public var restrictions: PriceAdjustmentRestrictions?
        
        public var createdBy: String?
        
        public var articleLevelDistribution: Bool
        
        public var collection: Collection
        
        public var type: String
        
        public var allowedRefund: Bool?
        
        public var isAuthenticated: Bool
        
        public var articleIds: [Article]
        
        public var meta: [String: Any]?
        
        public var cartId: String
        
        public var removeArticles: Bool?
        
        public var autoRemove: Bool?
        
        public var distributionLogic: DistributionLogic?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case message = "message"
            
            case applyExpiry = "apply_expiry"
            
            case restrictions = "restrictions"
            
            case createdBy = "created_by"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case collection = "collection"
            
            case type = "type"
            
            case allowedRefund = "allowed_refund"
            
            case isAuthenticated = "is_authenticated"
            
            case articleIds = "article_ids"
            
            case meta = "meta"
            
            case cartId = "cart_id"
            
            case removeArticles = "remove_articles"
            
            case autoRemove = "auto_remove"
            
            case distributionLogic = "distribution_logic"
            
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, autoRemove: Bool? = nil, cartId: String, collection: Collection, createdBy: String? = nil, distributionLogic: DistributionLogic? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, removeArticles: Bool? = nil, restrictions: PriceAdjustmentRestrictions? = nil, type: String, value: Double) {
            
            self.value = value
            
            self.message = message
            
            self.applyExpiry = applyExpiry
            
            self.restrictions = restrictions
            
            self.createdBy = createdBy
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.collection = collection
            
            self.type = type
            
            self.allowedRefund = allowedRefund
            
            self.isAuthenticated = isAuthenticated
            
            self.articleIds = articleIds
            
            self.meta = meta
            
            self.cartId = cartId
            
            self.removeArticles = removeArticles
            
            self.autoRemove = autoRemove
            
            self.distributionLogic = distributionLogic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    applyExpiry = try container.decode(String.self, forKey: .applyExpiry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(PriceAdjustmentRestrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
                
            
            
            
                collection = try container.decode(Collection.self, forKey: .collection)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)
                
            
            
            
                articleIds = try container.decode([Article].self, forKey: .articleIds)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartId = try container.decode(String.self, forKey: .cartId)
                
            
            
            
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
                    distributionLogic = try container.decode(DistributionLogic.self, forKey: .distributionLogic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
            
            
            
            
            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)
            
            
            
            
            try? container.encodeIfPresent(articleIds, forKey: .articleIds)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(removeArticles, forKey: .removeArticles)
            
            
            
            
            try? container.encodeIfPresent(autoRemove, forKey: .autoRemove)
            
            
            
            
            try? container.encodeIfPresent(distributionLogic, forKey: .distributionLogic)
            
            
        }
        
    }
}


