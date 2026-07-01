

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: AppliedFreeArticles
        Used By: Cart
    */
    class AppliedFreeArticles: Codable {
        
        public var freeGiftItemDetails: FreeGiftItems?
        
        public var parentItemIdentifier: String?
        
        public var quantity: Int?
        
        public var articleId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case freeGiftItemDetails = "free_gift_item_details"
            
            case parentItemIdentifier = "parent_item_identifier"
            
            case quantity = "quantity"
            
            case articleId = "article_id"
            
        }

        public init(articleId: String? = nil, freeGiftItemDetails: FreeGiftItems? = nil, parentItemIdentifier: String? = nil, quantity: Int? = nil) {
            
            self.freeGiftItemDetails = freeGiftItemDetails
            
            self.parentItemIdentifier = parentItemIdentifier
            
            self.quantity = quantity
            
            self.articleId = articleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                freeGiftItemDetails = try container.decode(FreeGiftItems.self, forKey: .freeGiftItemDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentItemIdentifier = try container.decode(String.self, forKey: .parentItemIdentifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(freeGiftItemDetails, forKey: .freeGiftItemDetails)
            
            
            
            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
        }
        
    }
}
