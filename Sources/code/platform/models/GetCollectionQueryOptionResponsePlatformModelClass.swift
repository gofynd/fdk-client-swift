

import Foundation
public extension PlatformClient {
    /*
         Model: GetCollectionQueryOptionResponse
         Used By: Catalog
     */

    class GetCollectionQueryOptionResponse: Codable {
        public var sortOn: [ProductSortOn]?

        public var operators: [String: Any]

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case operators

            case filters
        }

        public init(filters: [ProductFilters]? = nil, operators: [String: Any], sortOn: [ProductSortOn]? = nil) {
            self.sortOn = sortOn

            self.operators = operators

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operators = try container.decode([String: Any].self, forKey: .operators)

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
