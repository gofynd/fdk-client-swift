

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InvoiceListingPayloadData
         Used By: Finance
     */

    class InvoiceListingPayloadData: Codable {
        public var search: String?

        public var page: Int?

        public var startEnd: String?

        public var pagesize: Int?

        public var endEnd: String?

        public var filters: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case search

            case page

            case startEnd = "start_end"

            case pagesize

            case endEnd = "end_end"

            case filters
        }

        public init(endEnd: String? = nil, filters: [[String: Any]]? = nil, page: Int? = nil, pagesize: Int? = nil, search: String? = nil, startEnd: String? = nil) {
            self.search = search

            self.page = page

            self.startEnd = startEnd

            self.pagesize = pagesize

            self.endEnd = endEnd

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                search = try container.decode(String.self, forKey: .search)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Int.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startEnd = try container.decode(String.self, forKey: .startEnd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pagesize = try container.decode(Int.self, forKey: .pagesize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endEnd = try container.decode(String.self, forKey: .endEnd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([[String: Any]].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(startEnd, forKey: .startEnd)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(endEnd, forKey: .endEnd)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
