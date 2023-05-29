

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: TATErrorSchemaResponse
         Used By: Logistic
     */
    class TATErrorSchemaResponse: Codable {
        public var type: String?

        public var message: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case message

            case value
        }

        public init(message: String? = nil, type: String? = nil, value: String? = nil) {
            self.type = type

            self.message = message

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(type, forKey: .type)

            try? container.encode(message, forKey: .message)

            try? container.encode(value, forKey: .value)
        }
    }
}
