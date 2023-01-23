

import Foundation
public extension PlatformClient {
    /*
         Model: BrandMeta
         Used By: Catalog
     */

    class BrandMeta: Codable {
        public var id: Int

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case id

            case name
        }

        public init(id: Int, name: String) {
            self.id = id

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
