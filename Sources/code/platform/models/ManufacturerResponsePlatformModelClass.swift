

import Foundation
public extension PlatformClient {
    /*
         Model: ManufacturerResponse
         Used By: Catalog
     */

    class ManufacturerResponse: Codable {
        public var address: String

        public var name: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case address

            case name

            case isDefault = "is_default"
        }

        public init(address: String, isDefault: Bool, name: String) {
            self.address = address

            self.name = name

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
