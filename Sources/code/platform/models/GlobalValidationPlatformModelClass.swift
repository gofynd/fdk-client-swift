

import Foundation
public extension PlatformClient {
    /*
         Model: GlobalValidation
         Used By: Catalog
     */

    class GlobalValidation: Codable {
        public var required: [String]?

        public var properties: Properties?

        public var title: String?

        public var type: String?

        public var definitions: [String: Any]?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case required

            case properties

            case title

            case type

            case definitions

            case description
        }

        public init(definitions: [String: Any]? = nil, description: String? = nil, properties: Properties? = nil, required: [String]? = nil, title: String? = nil, type: String? = nil) {
            self.required = required

            self.properties = properties

            self.title = title

            self.type = type

            self.definitions = definitions

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                required = try container.decode([String].self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                properties = try container.decode(Properties.self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

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
                definitions = try container.decode([String: Any].self, forKey: .definitions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(required, forKey: .required)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(definitions, forKey: .definitions)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
