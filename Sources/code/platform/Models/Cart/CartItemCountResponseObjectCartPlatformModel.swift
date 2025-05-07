

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartItemCountResponseObject
        Used By: Cart
    */

    class CartItemCountResponseObject: Codable {
        
        
        public var userCartItemsCount: Int?
        
        public var userCartArticleCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case userCartItemsCount = "user_cart_items_count"
            
            case userCartArticleCount = "user_cart_article_count"
            
        }

        public init(userCartArticleCount: Int? = nil, userCartItemsCount: Int? = nil) {
            
            self.userCartItemsCount = userCartItemsCount
            
            self.userCartArticleCount = userCartArticleCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userCartItemsCount = try container.decode(Int.self, forKey: .userCartItemsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userCartArticleCount = try container.decode(Int.self, forKey: .userCartArticleCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userCartItemsCount, forKey: .userCartItemsCount)
            
            
            
            
            try? container.encodeIfPresent(userCartArticleCount, forKey: .userCartArticleCount)
            
            
        }
        
    }
}


