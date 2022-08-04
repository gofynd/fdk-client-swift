

import Foundation
public extension PlatformClient {
    /*
         Model: ManufacturerResponse
         Used By: Catalog
     */

    class ManufacturerResponse: Codable {
        public var name: String

        public var address: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case isDefault = "is_default"
        }

        public init(address: String, isDefault: Bool, name: String) {
            self.name = name

            self.address = address

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode(String.self, forKey: .address)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
