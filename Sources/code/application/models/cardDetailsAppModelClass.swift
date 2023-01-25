

import Foundation
public extension ApplicationClient {
    /*
         Model: cardDetails
         Used By: Payment
     */
    class cardDetails: Codable {
        public var cardPrefix: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case cardPrefix = "card_prefix"

            case aggregator
        }

        public init(aggregator: String, cardPrefix: String) {
            self.cardPrefix = cardPrefix

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardPrefix = try container.decode(String.self, forKey: .cardPrefix)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardPrefix, forKey: .cardPrefix)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
