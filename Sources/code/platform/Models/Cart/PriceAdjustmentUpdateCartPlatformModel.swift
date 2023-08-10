

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PriceAdjustmentUpdate
        Used By: Cart
    */

    class PriceAdjustmentUpdate: Codable {
        
        
        public var applyExpiry: String?
        
        public var cartId: String
        
        public var cartValue: Double?
        
        public var meta: [String: Any]?
        
        public var type: String
        
        public var value: Double
        
        public var articleLevelDistribution: Bool
        
        public var articleIds: [Article]
        
        public var modifiedBy: String?
        
        public var isAuthenticated: Bool
        
        public var allowedRefund: Bool?
        
        public var message: String
        
        public var collection: Collection
        

        public enum CodingKeys: String, CodingKey {
            
            case applyExpiry = "apply_expiry"
            
            case cartId = "cart_id"
            
            case cartValue = "cart_value"
            
            case meta = "meta"
            
            case type = "type"
            
            case value = "value"
            
            case articleLevelDistribution = "article_level_distribution"
            
            case articleIds = "article_ids"
            
            case modifiedBy = "modified_by"
            
            case isAuthenticated = "is_authenticated"
            
            case allowedRefund = "allowed_refund"
            
            case message = "message"
            
            case collection = "collection"
            
        }

        public init(allowedRefund: Bool? = nil, applyExpiry: String? = nil, articleIds: [Article], articleLevelDistribution: Bool, cartId: String, cartValue: Double? = nil, collection: Collection, isAuthenticated: Bool, message: String, meta: [String: Any]? = nil, modifiedBy: String? = nil, type: String, value: Double) {
            
            self.applyExpiry = applyExpiry
            
            self.cartId = cartId
            
            self.cartValue = cartValue
            
            self.meta = meta
            
            self.type = type
            
            self.value = value
            
            self.articleLevelDistribution = articleLevelDistribution
            
            self.articleIds = articleIds
            
            self.modifiedBy = modifiedBy
            
            self.isAuthenticated = isAuthenticated
            
            self.allowedRefund = allowedRefund
            
            self.message = message
            
            self.collection = collection
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applyExpiry = try container.decode(String.self, forKey: .applyExpiry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartId = try container.decode(String.self, forKey: .cartId)
                
            
            
            
                do {
                    cartValue = try container.decode(Double.self, forKey: .cartValue)
                
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
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                articleLevelDistribution = try container.decode(Bool.self, forKey: .articleLevelDistribution)
                
            
            
            
                articleIds = try container.decode([Article].self, forKey: .articleIds)
                
            
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)
                
            
            
            
                do {
                    allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                collection = try container.decode(Collection.self, forKey: .collection)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applyExpiry, forKey: .applyExpiry)
            
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(articleLevelDistribution, forKey: .articleLevelDistribution)
            
            
            
            
            try? container.encodeIfPresent(articleIds, forKey: .articleIds)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)
            
            
            
            
            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(collection, forKey: .collection)
            
            
        }
        
    }
}


