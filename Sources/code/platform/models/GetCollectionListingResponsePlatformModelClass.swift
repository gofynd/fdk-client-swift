

import Foundation
public extension PlatformClient {
    /*
         Model: GetCollectionListingResponse
         Used By: Catalog
     */

    class GetCollectionListingResponse: Codable {
        public var page: Page?

        public var filters: CollectionListingFilter?

        public var items: [GetCollectionDetailNest]?

        public enum CodingKeys: String, CodingKey {
            case page

            case filters

            case items
        }

        public init(filters: CollectionListingFilter? = nil, items: [GetCollectionDetailNest]? = nil, page: Page? = nil) {
            self.page = page

            self.filters = filters

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(CollectionListingFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([GetCollectionDetailNest].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
