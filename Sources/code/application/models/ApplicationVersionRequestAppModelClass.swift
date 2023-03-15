

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationVersionRequest
         Used By: Configuration
     */
    class ApplicationVersionRequest: Codable {
        public var id: String?

        public var name: String

        public var namespace: String?

        public var token: String?

        public var version: String

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case namespace

            case token

            case version
        }

        public init(id: String? = nil, name: String, namespace: String? = nil, token: String? = nil, version: String) {
            self.id = id

            self.name = name

            self.namespace = namespace

            self.token = token

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                namespace = try container.decode(String.self, forKey: .namespace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            version = try container.decode(String.self, forKey: .version)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(namespace, forKey: .namespace)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
