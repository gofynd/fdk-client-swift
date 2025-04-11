

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartItemCountResultV2
        Used By: Cart
    */
    class CartItemCountResultV2: Codable {
        
        public var userAllCartArticlesQuantityCount: Int?
        
        public var userAllCartArticleCount: Int?
        
        public var customCartCount: [String: Any]?
        
        public var customCartOrderedCount: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case userAllCartArticlesQuantityCount = "user_all_cart_articles_quantity_count"
            
            case userAllCartArticleCount = "user_all_cart_article_count"
            
            case customCartCount = "custom_cart_count"
            
            case customCartOrderedCount = "custom_cart_ordered_count"
            
        }

        public init(customCartCount: [String: Any]? = nil, customCartOrderedCount: [[String: Any]]? = nil, userAllCartArticlesQuantityCount: Int? = nil, userAllCartArticleCount: Int? = nil) {
            
            self.userAllCartArticlesQuantityCount = userAllCartArticlesQuantityCount
            
            self.userAllCartArticleCount = userAllCartArticleCount
            
            self.customCartCount = customCartCount
            
            self.customCartOrderedCount = customCartOrderedCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                userAllCartArticlesQuantityCount = try container.decode(Int.self, forKey: .userAllCartArticlesQuantityCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userAllCartArticleCount = try container.decode(Int.self, forKey: .userAllCartArticleCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customCartCount = try container.decode([String: Any].self, forKey: .customCartCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customCartOrderedCount = try container.decode([[String: Any]].self, forKey: .customCartOrderedCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(userAllCartArticlesQuantityCount, forKey: .userAllCartArticlesQuantityCount)
            
            
            
            try? container.encodeIfPresent(userAllCartArticleCount, forKey: .userAllCartArticleCount)
            
            
            
            try? container.encodeIfPresent(customCartCount, forKey: .customCartCount)
            
            
            
            try? container.encodeIfPresent(customCartOrderedCount, forKey: .customCartOrderedCount)
            
            
        }
        
    }
}
