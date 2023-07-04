

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnGenerateReport
         Used By: Finance
     */

    class CnGenerateReport: Codable {
        public var page: Int?

        public var pagesize: Int?

        public var affiliateId: String?

        public var filters: CnGenerateReportFilters?

        public var endDate: String?

        public var searchType: String?

        public var meta: GenerateReportFilters?

        public var startDate: String?

        public var reportId: String?

        public var search: String?

        public enum CodingKeys: String, CodingKey {
            case page

            case pagesize

            case affiliateId = "affiliate_id"

            case filters

            case endDate = "end_date"

            case searchType = "search_type"

            case meta

            case startDate = "start_date"

            case reportId = "report_id"

            case search
        }

        public init(affiliateId: String? = nil, endDate: String? = nil, filters: CnGenerateReportFilters? = nil, meta: GenerateReportFilters? = nil, page: Int? = nil, pagesize: Int? = nil, reportId: String? = nil, search: String? = nil, searchType: String? = nil, startDate: String? = nil) {
            self.page = page

            self.pagesize = pagesize

            self.affiliateId = affiliateId

            self.filters = filters

            self.endDate = endDate

            self.searchType = searchType

            self.meta = meta

            self.startDate = startDate

            self.reportId = reportId

            self.search = search
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Int.self, forKey: .page)

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
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

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
                endDate = try container.decode(String.self, forKey: .endDate)

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
                meta = try container.decode(GenerateReportFilters.self, forKey: .meta)

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
                reportId = try container.decode(String.self, forKey: .reportId)

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

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(searchType, forKey: .searchType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(reportId, forKey: .reportId)

            try? container.encodeIfPresent(search, forKey: .search)
        }
    }
}
