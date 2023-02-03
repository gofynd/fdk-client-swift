

import Foundation
public extension PlatformClient {
    /*
         Model: ManufacturerResponse1
         Used By: Catalog
     */

    class ManufacturerResponse1: Codable {
        public var name: String?

        public var isDefault: Bool?

        public var address: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isDefault = "is_default"

            case address
        }

        public init(address: String? = nil, isDefault: Bool? = nil, name: String? = nil) {
            self.name = name

            self.isDefault = isDefault

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
