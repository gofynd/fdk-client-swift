

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnGenerateReport
         Used By: Finance
     */

    class CnGenerateReport: Codable {
        public var affiliateId: String?

        public var search: String?

        public var pagesize: Int?

        public var reportId: String?

        public var filters: CnGenerateReportFilters?

        public var searchType: String?

        public var startDate: String?

        public var page: Int?

        public var endDate: String?

        public var meta: GenerateReportFilters?

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case search

            case pagesize

            case reportId = "report_id"

            case filters

            case searchType = "search_type"

            case startDate = "start_date"

            case page

            case endDate = "end_date"

            case meta
        }

        public init(affiliateId: String? = nil, endDate: String? = nil, filters: CnGenerateReportFilters? = nil, meta: GenerateReportFilters? = nil, page: Int? = nil, pagesize: Int? = nil, reportId: String? = nil, search: String? = nil, searchType: String? = nil, startDate: String? = nil) {
            self.affiliateId = affiliateId

            self.search = search

            self.pagesize = pagesize

            self.reportId = reportId

            self.filters = filters

            self.searchType = searchType

            self.startDate = startDate

            self.page = page

            self.endDate = endDate

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

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

            do {
                pagesize = try container.decode(Int.self, forKey: .pagesize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportId = try container.decode(String.self, forKey: .reportId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(CnGenerateReportFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                searchType = try container.decode(String.self, forKey: .searchType)

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
                page = try container.decode(Int.self, forKey: .page)

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
                meta = try container.decode(GenerateReportFilters.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(reportId, forKey: .reportId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(searchType, forKey: .searchType)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
