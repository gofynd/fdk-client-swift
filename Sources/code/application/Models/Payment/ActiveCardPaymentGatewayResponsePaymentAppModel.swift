

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ActiveCardPaymentGatewayResponse
         Used By: Payment
     */
    class ActiveCardPaymentGatewayResponse: Codable {
        public var success: Bool

        public var message: String

        public var cards: CardPaymentGateway

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case cards
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.cards = cards
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cards, forKey: .cards)
        }
    }
}
