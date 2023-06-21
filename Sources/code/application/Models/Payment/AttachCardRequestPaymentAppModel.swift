

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AttachCardRequest
         Used By: Payment
     */
    class AttachCardRequest: Codable {
        public var nickname: String?

        public var refresh: Bool?

        public var nameOnCard: String?

        public var cardId: String

        public enum CodingKeys: String, CodingKey {
            case nickname

            case refresh

            case nameOnCard = "name_on_card"

            case cardId = "card_id"
        }

        public init(cardId: String, nameOnCard: String? = nil, nickname: String? = nil, refresh: Bool? = nil) {
            self.nickname = nickname

            self.refresh = refresh

            self.nameOnCard = nameOnCard

            self.cardId = cardId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardId = try container.decode(String.self, forKey: .cardId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(nickname, forKey: .nickname)

            try? container.encode(refresh, forKey: .refresh)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(cardId, forKey: .cardId)
        }
    }
}
