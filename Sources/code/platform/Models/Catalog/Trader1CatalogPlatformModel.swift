

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Trader1
         Used By: Catalog
     */

    class Trader1: Codable {
        public var name: String

        public var address: [String]

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case type
        }

        public init(address: [String], name: String, type: String) {
            self.name = name

            self.address = address

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode([String].self, forKey: .address)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(type, forKey: .type)
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

        public var address: [String]

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case type
        }

        public init(address: [String], name: String, type: String) {
            self.name = name

            self.address = address

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode([String].self, forKey: .address)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
