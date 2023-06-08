

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ListCardsResponse
         Used By: Payment
     */
    class ListCardsResponse: Codable {
        public var success: Bool

        public var message: String

        public var data: [Card]?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case data
        }

        public init(data: [Card]? = nil, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                data = try container.decode([Card].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
