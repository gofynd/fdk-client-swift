

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetCollectionQueryOptionResponse
         Used By: Catalog
     */

    class GetCollectionQueryOptionResponse: Codable {
        public var operators: [String: String]

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case operators

            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]? = nil, operators: [String: String], sortOn: [ProductSortOn]? = nil) {
            self.operators = operators

            self.sortOn = sortOn

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            operators = try container.decode([String: String].self, forKey: .operators)

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetCollectionQueryOptionResponse
         Used By: Catalog
     */

    class GetCollectionQueryOptionResponse: Codable {
        public var operators: [String: String]

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case operators

            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]? = nil, operators: [String: String], sortOn: [ProductSortOn]? = nil) {
            self.operators = operators

            self.sortOn = sortOn

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            operators = try container.decode([String: String].self, forKey: .operators)

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
