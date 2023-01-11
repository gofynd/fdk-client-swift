

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationProductListingResponse
         Used By: Catalog
     */

    class ApplicationProductListingResponse: Codable {
        public var filters: [ProductFilters]?

        public var sortOn: [ProductSortOn]?

        public var items: [ProductListingDetail]?

        public var page: Page

        public var operators: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case sortOn = "sort_on"

            case items

            case page

            case operators
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, operators: [String: Any]? = nil, page: Page, sortOn: [ProductSortOn]? = nil) {
            self.filters = filters

            self.sortOn = sortOn

            self.items = items

            self.page = page

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

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)

            do {
                operators = try container.decode([String: Any].self, forKey: .operators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(operators, forKey: .operators)
        }
    }
}
