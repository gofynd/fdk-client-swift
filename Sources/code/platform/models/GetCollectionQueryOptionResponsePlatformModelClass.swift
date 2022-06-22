

import Foundation
public extension PlatformClient {
    /*
         Model: GetCollectionQueryOptionResponse
         Used By: Catalog
     */

    class GetCollectionQueryOptionResponse: Codable {
        public var filters: [ProductFilters]?

        public var sortOn: [ProductSortOn]?

        public var operators: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case filters

            case sortOn = "sort_on"

            case operators
        }

        public init(filters: [ProductFilters]? = nil, operators: [String: Any], sortOn: [ProductSortOn]? = nil) {
            self.filters = filters

            self.sortOn = sortOn

            self.operators = operators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operators = try container.decode([String: Any].self, forKey: .operators)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(operators, forKey: .operators)
        }
    }
}
