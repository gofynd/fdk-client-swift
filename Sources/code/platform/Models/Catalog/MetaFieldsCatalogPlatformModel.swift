

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: MetaFields
         Used By: Catalog
     */

    class MetaFields: Codable {
        public var value: [String: Any]

        public var key: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case value

            case key
        }

        public init(key: [String: Any], value: [String: Any]) {
            self.value = value

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode([String: Any].self, forKey: .value)

            key = try container.decode([String: Any].self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: MetaFields
         Used By: Catalog
     */

    class MetaFields: Codable {
        public var value: [String: Any]

        public var key: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case value

            case key
        }

        public init(key: [String: Any], value: [String: Any]) {
            self.value = value

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode([String: Any].self, forKey: .value)

            key = try container.decode([String: Any].self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
