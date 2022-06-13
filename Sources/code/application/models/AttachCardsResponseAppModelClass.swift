

import Foundation
public extension ApplicationClient {
    /*
         Model: AttachCardsResponse
         Used By: Payment
     */
    class AttachCardsResponse: Codable {
        public var data: [String: Any]

        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message
        }

        public init(data: [String: Any], message: String? = nil, success: Bool) {
            self.data = data

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
