

import Foundation
public extension PlatformClient {
    /*
         Model: ManufacturerResponse
         Used By: Catalog
     */

    class ManufacturerResponse: Codable {
        public var isDefault: Bool

        public var name: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case name

            case address
        }

        public init(address: String, isDefault: Bool, name: String) {
            self.isDefault = isDefault

            self.name = name

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
