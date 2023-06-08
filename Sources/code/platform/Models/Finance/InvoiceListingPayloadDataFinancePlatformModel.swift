

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InvoiceListingPayloadData
         Used By: Finance
     */

    class InvoiceListingPayloadData: Codable {
        public var search: String?

        public var startDate: String?

        public var filters: InoviceListingPayloadDataFilters?

        public var endDate: String?

        public var pagesize: Int?

        public var page: Int?

        public enum CodingKeys: String, CodingKey {
            case search

            case startDate = "start_date"

            case filters

            case endDate = "end_date"

            case pagesize

            case page
        }

        public init(endDate: String? = nil, filters: InoviceListingPayloadDataFilters? = nil, page: Int? = nil, pagesize: Int? = nil, search: String? = nil, startDate: String? = nil) {
            self.search = search

            self.startDate = startDate

            self.filters = filters

            self.endDate = endDate

            self.pagesize = pagesize

            self.page = page
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
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(InoviceListingPayloadDataFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

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
                page = try container.decode(Int.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
