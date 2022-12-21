

import Foundation
public extension ApplicationClient {
    /*
         Model: ActiveCardPaymentGatewayResponse
         Used By: Payment
     */
    class ActiveCardPaymentGatewayResponse: Codable {
        public var message: String

        public var cards: CardPaymentGateway

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case cards

            case success
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.message = message

            self.cards = cards

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cards, forKey: .cards)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
