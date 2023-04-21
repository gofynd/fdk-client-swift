

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ManufacturerResponse
         Used By: Catalog
     */

    class ManufacturerResponse: Codable {
        public var isDefault: Bool

        public var address: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case address

            case name
        }

        public init(address: String, isDefault: Bool, name: String) {
            self.isDefault = isDefault

            self.address = address

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ManufacturerResponse
         Used By: Catalog
     */

    class ManufacturerResponse: Codable {
        public var isDefault: Bool

        public var address: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case address

            case name
        }

        public init(address: String, isDefault: Bool, name: String) {
            self.isDefault = isDefault

            self.address = address

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
