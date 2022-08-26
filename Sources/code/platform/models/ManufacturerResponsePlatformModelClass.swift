

import Foundation
public extension PlatformClient {
    /*
         Model: ManufacturerResponse
         Used By: Catalog
     */

    class ManufacturerResponse: Codable {
        public var address: String

        public var isDefault: Bool

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case address

            case isDefault = "is_default"

            case name
        }

        public init(address: String, isDefault: Bool, name: String) {
            self.address = address

            self.isDefault = isDefault

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
