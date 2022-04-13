import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryMappingValues
         Used By: Catalog
     */

    class CategoryMappingValues: Codable {
        public var name: String

        public var catalogId: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case catalogId = "catalog_id"
        }

        public init(catalogId: Int?, name: String) {
            self.name = name

            self.catalogId = catalogId
        }

        public func duplicate() -> CategoryMappingValues {
            let dict = self.dictionary!
            let copy = CategoryMappingValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                catalogId = try container.decode(Int.self, forKey: .catalogId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(catalogId, forKey: .catalogId)
        }
    }
}
