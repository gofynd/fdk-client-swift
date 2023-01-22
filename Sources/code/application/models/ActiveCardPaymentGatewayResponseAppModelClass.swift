

import Foundation
public extension ApplicationClient {
    /*
        Model: ActiveCardPaymentGatewayResponse
        Used By: Payment
    */
    class ActiveCardPaymentGatewayResponse: Codable {
        
        public var message: String
        
        public var success: Bool
        
        public var cards: CardPaymentGateway
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case cards = "cards"
            
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            
            self.message = message
            
            self.success = success
            
            self.cards = cards
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(cards, forKey: .cards)
            
            
        }
        
    }
}
