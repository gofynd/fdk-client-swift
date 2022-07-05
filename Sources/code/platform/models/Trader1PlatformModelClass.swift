

import Foundation
public extension PlatformClient {
    /*
         Model: Trader1
         Used By: Catalog
     */

    class Trader1: Codable {
        public var type: String

        public var name: String

        public var address: [String]

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case address
        }

        public init(address: [String], name: String, type: String) {
            self.type = type

            self.name = name

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode([String].self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
