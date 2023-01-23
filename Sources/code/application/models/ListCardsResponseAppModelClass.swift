

import Foundation
public extension ApplicationClient {
    /*
         Model: ListCardsResponse
         Used By: Payment
     */
    class ListCardsResponse: Codable {
        public var message: String

        public var success: Bool

        public var data: [Card]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case data
        }

        public init(data: [Card]? = nil, message: String, success: Bool) {
            self.message = message

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode([Card].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
