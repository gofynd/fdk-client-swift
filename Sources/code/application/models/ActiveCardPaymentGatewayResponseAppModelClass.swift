

import Foundation
public extension ApplicationClient {
    /*
         Model: ActiveCardPaymentGatewayResponse
         Used By: Payment
     */
    class ActiveCardPaymentGatewayResponse: Codable {
        public var success: Bool

        public var cards: CardPaymentGateway

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case cards

            case message
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.success = success

            self.cards = cards

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(cards, forKey: .cards)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
