

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryMappingValues
         Used By: Catalog
     */

    class CategoryMappingValues: Codable {
        public var catalogId: Int?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case catalogId = "catalog_id"

            case name
        }

        public init(catalogId: Int? = nil, name: String) {
            self.catalogId = catalogId

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                catalogId = try container.decode(Int.self, forKey: .catalogId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(catalogId, forKey: .catalogId)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
