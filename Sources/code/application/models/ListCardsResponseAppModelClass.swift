import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ListCardsResponse
         Used By: Payment
     */
    class ListCardsResponse: Codable {
        public var data: [Card]?

        public var message: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case message

            case success
        }

        public init(data: [Card]? = nil, message: String, success: Bool) {
            self.data = data

            self.message = message

            self.success = success
        }

        public func duplicate() -> ListCardsResponse {
            let dict = self.dictionary!
            let copy = ListCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([Card].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
