

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Article
        Used By: Cart
    */

    class Article: Codable {
        
        
        public var value: Double?
        
        public var code: String?
        
        public var type: String?
        
        public var articleId: String
        
        public var quantity: Int?
        
        public var meta: [String: Any]?
        
        public var allowedRefund: Bool?
        
        public var minPriceThreshold: Double?
        
        public var articleIndex: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case code = "code"
            
            case type = "type"
            
            case articleId = "article_id"
            
            case quantity = "quantity"
            
            case meta = "meta"
            
            case allowedRefund = "allowed_refund"
            
            case minPriceThreshold = "min_price_threshold"
            
            case articleIndex = "article_index"
            
        }

        public init(allowedRefund: Bool? = nil, articleId: String, articleIndex: Int? = nil, code: String? = nil, meta: [String: Any]? = nil, minPriceThreshold: Double? = nil, quantity: Int? = nil, type: String? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.code = code
            
            self.type = type
            
            self.articleId = articleId
            
            self.quantity = quantity
            
            self.meta = meta
            
            self.allowedRefund = allowedRefund
            
            self.minPriceThreshold = minPriceThreshold
            
            self.articleIndex = articleIndex
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                
            
            
                articleId = try container.decode(String.self, forKey: .articleId)
                
            
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
                    allowedRefund = try container.decode(Bool.self, forKey: .allowedRefund)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minPriceThreshold = try container.decode(Double.self, forKey: .minPriceThreshold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleIndex = try container.decode(Int.self, forKey: .articleIndex)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(allowedRefund, forKey: .allowedRefund)
            
            
            
            
            try? container.encodeIfPresent(minPriceThreshold, forKey: .minPriceThreshold)
            
            
            
            
            try? container.encodeIfPresent(articleIndex, forKey: .articleIndex)
            
            
        }
        
    }
}


