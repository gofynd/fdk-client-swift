

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationStoreListing
         Used By: Catalog
     */
    class ApplicationStoreListing: Codable {
        public var items: [AppStore]?

        public var page: Page?

        public var filters: [StoreDepartments]?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case filters
        }

        public init(filters: [StoreDepartments]? = nil, items: [AppStore]? = nil, page: Page? = nil) {
            self.items = items

            self.page = page

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AppStore].self, forKey: .items)

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
                filters = try container.decode([StoreDepartments].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
