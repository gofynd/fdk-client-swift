

import Foundation
public extension ApplicationClient {
    /*
         Model: CategoryListingResponse
         Used By: Catalog
     */
    class CategoryListingResponse: Codable {
        public var departments: [DepartmentIdentifier]?

        public var data: [DepartmentCategoryTree]?

        public enum CodingKeys: String, CodingKey {
            case departments

            case data
        }

        public init(data: [DepartmentCategoryTree]? = nil, departments: [DepartmentIdentifier]? = nil) {
            self.departments = departments

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([DepartmentCategoryTree].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
