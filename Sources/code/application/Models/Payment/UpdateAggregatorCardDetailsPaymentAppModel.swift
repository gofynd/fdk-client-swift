

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: UpdateAggregatorCardDetails
        Used By: Payment
    */
    class UpdateAggregatorCardDetails: Codable {
        
        public var success: Bool?
        
        public var message: String?
        
        public var cards: AggregatorCard?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case cards = "cards"
            
        }

        public init(cards: AggregatorCard? = nil, message: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.message = message
            
            self.cards = cards
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cards = try container.decode(AggregatorCard.self, forKey: .cards)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(cards, forKey: .cards)
            
            
        }
        
    }
}
