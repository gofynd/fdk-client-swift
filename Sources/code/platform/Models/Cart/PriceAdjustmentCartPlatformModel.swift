

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PriceAdjustment
        Used By: Cart
    */

    class PriceAdjustment: Codable {
        
        
        public var value: Double
        
        public var message: String
        
        public var applyExpiry: String?
        
        public var restrictions: PriceAdjustmentRestrictions?
        
        public var articleLevelDistribution: Bool
        
        public var id: String?
        
        public var collection: Collection
        
        public var type: String
        
        public var allowedRefund: Bool?
        
        public var isAuthenticated: Bool
        
        public var articleIds: [Article]
        
        public var meta: [String: Any]?
        
        public var cartId: String
        
        public var removeArticles: Bool?
        
        public var autoRemove: Bool?
        
        public var isActive: Bool?
        
        public var createdBy: String?
        
        public var cartValue: Double?
        
        public var modifiedBy: String?
        
        public var distributionLogic: [String: Any]?
        
        public var expireAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case message = "message"
            
            case applyExpiry = "apply_expiry"
            
            case restrictions = "restrictions"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case id = "id"
            
            case collection = "collection"
            
            case type = "type"
            
            case allowedRefund = "allowed_refund"
            
            case isAuthenticated = "is_authenticated"
            
            case articleIds = "article_ids"
            
            case meta = "meta"
            
            case cartId = "cart_id"
            
            case removeArticles = "remove_articles"
            
            case autoRemove = "auto_remove"
            
            case isActive = "is_active"
            
            case createdBy = "created_by"
            
            case cartValue = "cart_value"
            
            case modifiedBy = "modified_by"
            
            case distributionLogic = "distribution_logic"
            
            case expireAt = "expire_at"
            
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, autoRemove: Bool? = nil, cartId: String, cartValue: Double? = nil, collection: Collection, createdBy: String? = nil, distributionLogic: [String: Any]? = nil, expireAt: String? = nil, id: String? = nil, isActive: Bool? = nil, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, modifiedBy: String? = nil, removeArticles: Bool? = nil, restrictions: PriceAdjustmentRestrictions? = nil, type: String, value: Double) {
            
            self.value = value
            
            self.message = message
            
            self.applyExpiry = applyExpiry
            
            self.restrictions = restrictions
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.id = id
            
            self.collection = collection
            
            self.type = type
            
            self.allowedRefund = allowedRefund
            
            self.isAuthenticated = isAuthenticated
            
            self.articleIds = articleIds
            
            self.meta = meta
            
            self.cartId = cartId
            
            self.removeArticles = removeArticles
            
            self.autoRemove = autoRemove
            
            self.isActive = isActive
            
            self.createdBy = createdBy
            
            self.cartValue = cartValue
            
            self.modifiedBy = modifiedBy
            
            self.distributionLogic = distributionLogic
            
            self.expireAt = expireAt
            
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
                
            
            
                articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                
            
            
                do {
                    cartValue = try container.decode(Double.self, forKey: .cartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    distributionLogic = try container.decode([String: Any].self, forKey: .distributionLogic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
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
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
            
            
            
            
            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)
            
            
            
            
            try? container.encodeIfPresent(articleIds, forKey: .articleIds)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(removeArticles, forKey: .removeArticles)
            
            
            
            
            try? container.encodeIfPresent(autoRemove, forKey: .autoRemove)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(distributionLogic, forKey: .distributionLogic)
            
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
        }
        
    }
}


