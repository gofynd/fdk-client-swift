

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: GiftDetail
        Used By: Cart
    */
    class GiftDetail: Codable {
        
        public var isGiftApplied: Bool?
        
        public var giftMessage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isGiftApplied = "is_gift_applied"
            
            case giftMessage = "gift_message"
            
        }

        public init(giftMessage: String? = nil, isGiftApplied: Bool? = nil) {
            
            self.isGiftApplied = isGiftApplied
            
            self.giftMessage = giftMessage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                isGiftApplied = try container.decode(Bool.self, forKey: .isGiftApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                giftMessage = try container.decode(String.self, forKey: .giftMessage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isGiftApplied, forKey: .isGiftApplied)
            
            
            
            try? container.encodeIfPresent(giftMessage, forKey: .giftMessage)
            
            
        }
        
    }
}
