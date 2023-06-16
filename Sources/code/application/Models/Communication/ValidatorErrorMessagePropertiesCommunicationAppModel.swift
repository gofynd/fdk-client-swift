

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: ValidatorErrorMessageProperties
         Used By: Communication
     */
    class ValidatorErrorMessageProperties: Codable {
        public var message: String?

        public var type: String?

        public var path: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case type

            case path
        }

        public init(message: String? = nil, path: String? = nil, type: String? = nil) {
            self.message = message

            self.type = type

            self.path = path
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                path = try container.decode(String.self, forKey: .path)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(path, forKey: .path)
        }
    }
}
