

import Foundation
public extension ApplicationClient {
    /*
        Model: AppliedFreeArticles
        Used By: Cart
    */
    class AppliedFreeArticles: Codable {
        
        public var articleId: String?
        
        public var freeGiftItemDetails: FreeGiftItem?
        
        public var parentItemIdentifier: String?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case articleId = "article_id"
            
            case freeGiftItemDetails = "free_gift_item_details"
            
            case parentItemIdentifier = "parent_item_identifier"
            
            case quantity = "quantity"
            
        }

        public init(articleId: String? = nil, freeGiftItemDetails: FreeGiftItem? = nil, parentItemIdentifier: String? = nil, quantity: Int? = nil) {
            
            self.articleId = articleId
            
            self.freeGiftItemDetails = freeGiftItemDetails
            
            self.parentItemIdentifier = parentItemIdentifier
            
            self.quantity = quantity
            
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
                freeGiftItemDetails = try container.decode(FreeGiftItem.self, forKey: .freeGiftItemDetails)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            
            try? container.encodeIfPresent(freeGiftItemDetails, forKey: .freeGiftItemDetails)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifier, forKey: .parentItemIdentifier)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}
