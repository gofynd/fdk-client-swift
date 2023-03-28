

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: DepartmentCategoryTree
         Used By: Catalog
     */
    class DepartmentCategoryTree: Codable {
        public var department: String

        public var items: [CategoryItems]?

        public enum CodingKeys: String, CodingKey {
            case department

            case items
        }

        public init(department: String, items: [CategoryItems]? = nil) {
            self.department = department

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            department = try container.decode(String.self, forKey: .department)

            do {
                items = try container.decode([CategoryItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(department, forKey: .department)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
