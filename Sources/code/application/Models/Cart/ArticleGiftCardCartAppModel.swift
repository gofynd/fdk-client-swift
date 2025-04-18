

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ArticleGiftCard
        Used By: Cart
    */
    class ArticleGiftCard: Codable {
        
        public var giftPrice: Double?
        
        public var displayText: String?
        
        public var isGiftApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case giftPrice = "gift_price"
            
            case displayText = "display_text"
            
            case isGiftApplied = "is_gift_applied"
            
        }

        public init(displayText: String? = nil, giftPrice: Double? = nil, isGiftApplied: Bool? = nil) {
            
            self.giftPrice = giftPrice
            
            self.displayText = displayText
            
            self.isGiftApplied = isGiftApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                giftPrice = try container.decode(Double.self, forKey: .giftPrice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayText = try container.decode(String.self, forKey: .displayText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isGiftApplied = try container.decode(Bool.self, forKey: .isGiftApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
            
            try? container.encodeIfPresent(isGiftApplied, forKey: .isGiftApplied)
            
            
        }
        
    }
}
