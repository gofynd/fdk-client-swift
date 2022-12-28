

import Foundation
public extension PlatformClient {
    /*
         Model: Trader1
         Used By: Catalog
     */

    class Trader1: Codable {
        public var address: [String]

        public var type: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case address

            case type

            case name
        }

        public init(address: [String], name: String, type: String) {
            self.address = address

            self.type = type

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode([String].self, forKey: .address)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
