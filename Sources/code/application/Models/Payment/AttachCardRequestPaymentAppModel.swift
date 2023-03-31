

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AttachCardRequest
         Used By: Payment
     */
    class AttachCardRequest: Codable {
        public var refresh: Bool?

        public var nickname: String?

        public var cardId: String

        public var nameOnCard: String?

        public enum CodingKeys: String, CodingKey {
            case refresh

            case nickname

            case cardId = "card_id"

            case nameOnCard = "name_on_card"
        }

        public init(cardId: String, nameOnCard: String? = nil, nickname: String? = nil, refresh: Bool? = nil) {
            self.refresh = refresh

            self.nickname = nickname

            self.cardId = cardId

            self.nameOnCard = nameOnCard
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardId = try container.decode(String.self, forKey: .cardId)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(refresh, forKey: .refresh)

            try? container.encodeIfPresent(nickname, forKey: .nickname)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
        }
    }
}
