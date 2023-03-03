

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Trader2
         Used By: Catalog
     */

    class Trader2: Codable {
        public var type: String

        public var address: [String]

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case type

            case address

            case name
        }

        public init(address: [String], name: String, type: String) {
            self.type = type

            self.address = address

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            address = try container.decode([String].self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Trader2
         Used By: Catalog
     */

    class Trader2: Codable {
        public var type: String

        public var address: [String]

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case type

            case address

            case name
        }

        public init(address: [String], name: String, type: String) {
            self.type = type

            self.address = address

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            address = try container.decode([String].self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
