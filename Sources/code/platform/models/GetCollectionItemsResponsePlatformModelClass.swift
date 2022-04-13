import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetCollectionItemsResponse
         Used By: Catalog
     */

    class GetCollectionItemsResponse: Codable {
        public var sortOn: [ProductSortOn]?

        public var page: Page?

        public var filters: [ProductFilters]?

        public var items: [ProductListingDetail]?

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case page

            case filters

            case items
        }

        public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page?, sortOn: [ProductSortOn]?) {
            self.sortOn = sortOn

            self.page = page

            self.filters = filters

            self.items = items
        }

        public func duplicate() -> GetCollectionItemsResponse {
            let dict = self.dictionary!
            let copy = GetCollectionItemsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

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

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
