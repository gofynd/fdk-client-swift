

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ApplicationProductListingResponse
         Used By: Catalog
     */

    class ApplicationProductListingResponse: Codable {
        public var operators: [String: Any]?

        public var sortOn: [ProductSortOn]?

        public var items: [ProductListingDetail]?

        public var filters: [ProductFilters]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case operators

            case sortOn = "sort_on"

            case items

            case filters

            case page
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, operators: [String: Any]? = nil, page: Page, sortOn: [ProductSortOn]? = nil) {
            self.operators = operators

            self.sortOn = sortOn

            self.items = items

            self.filters = filters

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                operators = try container.decode([String: Any].self, forKey: .operators)

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

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ApplicationProductListingResponse
         Used By: Catalog
     */

    class ApplicationProductListingResponse: Codable {
        public var operators: [String: Any]?

        public var sortOn: [ProductSortOn]?

        public var items: [ProductListingDetail]?

        public var filters: [ProductFilters]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case operators

            case sortOn = "sort_on"

            case items

            case filters

            case page
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, operators: [String: Any]? = nil, page: Page, sortOn: [ProductSortOn]? = nil) {
            self.operators = operators

            self.sortOn = sortOn

            self.items = items

            self.filters = filters

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                operators = try container.decode([String: Any].self, forKey: .operators)

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

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
