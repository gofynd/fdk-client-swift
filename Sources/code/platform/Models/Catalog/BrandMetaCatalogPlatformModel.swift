

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BrandMeta
         Used By: Catalog
     */

    class BrandMeta: Codable {
        public var name: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case id
        }

        public init(id: Int, name: String) {
            self.name = name

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BrandMeta
         Used By: Catalog
     */

    class BrandMeta: Codable {
        public var name: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case id
        }

        public init(id: Int, name: String) {
            self.name = name

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
