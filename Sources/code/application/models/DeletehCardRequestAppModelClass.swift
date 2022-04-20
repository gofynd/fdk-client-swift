

import Foundation
public extension ApplicationClient {
    /*
         Model: DeletehCardRequest
         Used By: Payment
     */
    class DeletehCardRequest: Codable {
        public var cardId: String

        public enum CodingKeys: String, CodingKey {
            case cardId = "card_id"
        }

        public init(cardId: String) {
            self.cardId = cardId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardId = try container.decode(String.self, forKey: .cardId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardId, forKey: .cardId)
        }
    }
}
