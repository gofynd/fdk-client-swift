

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Trader1
         Used By: Catalog
     */

    class Trader1: Codable {
        public var name: String

        public var type: String

        public var address: [String]

        public enum CodingKeys: String, CodingKey {
            case name

            case type

            case address
        }

        public init(address: [String], name: String, type: String) {
            self.name = name

            self.type = type

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            address = try container.decode([String].self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Trader1
         Used By: Catalog
     */

    class Trader1: Codable {
        public var name: String

        public var type: String

        public var address: [String]

        public enum CodingKeys: String, CodingKey {
            case name

            case type

            case address
        }

        public init(address: [String], name: String, type: String) {
            self.name = name

            self.type = type

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            address = try container.decode([String].self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
