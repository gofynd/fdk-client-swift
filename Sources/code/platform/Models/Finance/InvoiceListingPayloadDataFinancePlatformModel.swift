

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InvoiceListingPayloadData
         Used By: Finance
     */

    class InvoiceListingPayloadData: Codable {
        public var filters: InoviceListingPayloadDataFilters?

        public var pageSize: Int?

        public var endDate: String?

        public var page: Int?

        public var startDate: String?

        public var search: String?

        public enum CodingKeys: String, CodingKey {
            case filters

            case pageSize = "page_size"

            case endDate = "end_date"

            case page

            case startDate = "start_date"

            case search
        }

        public init(endDate: String? = nil, filters: InoviceListingPayloadDataFilters? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, startDate: String? = nil) {
            self.filters = filters

            self.pageSize = pageSize

            self.endDate = endDate

            self.page = page

            self.startDate = startDate

            self.search = search
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(InoviceListingPayloadDataFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageSize = try container.decode(Int.self, forKey: .pageSize)

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
                page = try container.decode(Int.self, forKey: .page)

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
                search = try container.decode(String.self, forKey: .search)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(search, forKey: .search)
        }
    }
}
