

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnDownloadReport
         Used By: Finance
     */

    class CnDownloadReport: Codable {
        public var status: [String]?

        public var page: Int?

        public var pagesize: Int?

        public var affiliateId: String?

        public var endDate: String?

        public var searchType: String?

        public var startDate: String?

        public var search: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case page

            case pagesize

            case affiliateId = "affiliate_id"

            case endDate = "end_date"

            case searchType = "search_type"

            case startDate = "start_date"

            case search
        }

        public init(affiliateId: String? = nil, endDate: String? = nil, page: Int? = nil, pagesize: Int? = nil, search: String? = nil, searchType: String? = nil, startDate: String? = nil, status: [String]? = nil) {
            self.status = status

            self.page = page

            self.pagesize = pagesize

            self.affiliateId = affiliateId

            self.endDate = endDate

            self.searchType = searchType

            self.startDate = startDate

            self.search = search
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode([String].self, forKey: .status)

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

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(searchType, forKey: .searchType)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(search, forKey: .search)
        }
    }
}
