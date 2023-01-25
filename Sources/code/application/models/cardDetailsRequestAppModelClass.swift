

import Foundation
public extension ApplicationClient {
    /*
         Model: cardDetailsRequest
         Used By: Payment
     */
    class cardDetailsRequest: Codable {
        public var aggregator: String

        public var cardPrefix: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case cardPrefix = "card_prefix"
        }

        public init(aggregator: String, cardPrefix: String) {
            self.aggregator = aggregator

            self.cardPrefix = cardPrefix
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cardPrefix = try container.decode(String.self, forKey: .cardPrefix)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cardPrefix, forKey: .cardPrefix)
        }
    }
}
