

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: FontVariant
         Used By: Theme
     */

    class FontVariant: Codable {
        public var name: String

        public var file: String

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String, name: String) {
            self.name = name

            self.file = file
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            file = try container.decode(String.self, forKey: .file)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: FontVariant
         Used By: Theme
     */

    class FontVariant: Codable {
        public var name: String

        public var file: String

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String, name: String) {
            self.name = name

            self.file = file
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            file = try container.decode(String.self, forKey: .file)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }
}
