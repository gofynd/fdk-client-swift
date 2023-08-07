

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: DepartmentCategoryTree
         Used By: Catalog
     */
    class DepartmentCategoryTree: Codable {
        public var items: [CategoryItems]?

        public var department: String

        public enum CodingKeys: String, CodingKey {
            case items

            case department
        }

        public init(department: String, items: [CategoryItems]? = nil) {
            self.items = items

            self.department = department
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CategoryItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            department = try container.decode(String.self, forKey: .department)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(department, forKey: .department)
        }
    }
}
