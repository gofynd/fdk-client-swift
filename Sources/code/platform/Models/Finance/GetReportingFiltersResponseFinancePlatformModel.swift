

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetReportingFiltersResponse
         Used By: Finance
     */

    class GetReportingFiltersResponse: Codable {
        public var status: GetReportingFilters?

        public var search: GetReportingFilters?

        public var filters: [GetReportingNestedFilters]?

        public enum CodingKeys: String, CodingKey {
            case status

            case search

            case filters
        }

        public init(filters: [GetReportingNestedFilters]? = nil, search: GetReportingFilters? = nil, status: GetReportingFilters? = nil) {
            self.status = status

            self.search = search

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(GetReportingFilters.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                search = try container.decode(GetReportingFilters.self, forKey: .search)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([GetReportingNestedFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
