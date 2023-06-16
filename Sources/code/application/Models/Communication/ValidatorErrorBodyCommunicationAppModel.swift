

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: ValidatorErrorBody
         Used By: Communication
     */
    class ValidatorErrorBody: Codable {
        public var name: String?

        public var message: String?

        public var properties: ValidatorErrorMessageProperties?

        public var kind: String?

        public var path: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case message

            case properties

            case kind

            case path
        }

        public init(kind: String? = nil, message: String? = nil, name: String? = nil, path: String? = nil, properties: ValidatorErrorMessageProperties? = nil) {
            self.name = name

            self.message = message

            self.properties = properties

            self.kind = kind

            self.path = path
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                properties = try container.decode(ValidatorErrorMessageProperties.self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(path, forKey: .path)
        }
    }
}
