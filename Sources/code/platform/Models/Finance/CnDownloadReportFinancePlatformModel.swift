

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnDownloadReport
         Used By: Finance
     */

    class CnDownloadReport: Codable {
        public var startDate: String?

        public var status: [String]?

        public var affiliateId: String?

        public var endDate: String?

        public var search: String?

        public var pagesize: Int?

        public var searchType: String?

        public var page: Int?

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case status

            case affiliateId = "affiliate_id"

            case endDate = "end_date"

            case search

            case pagesize

            case searchType = "search_type"

            case page
        }

        public init(affiliateId: String? = nil, endDate: String? = nil, page: Int? = nil, pagesize: Int? = nil, search: String? = nil, searchType: String? = nil, startDate: String? = nil, status: [String]? = nil) {
            self.startDate = startDate

            self.status = status

            self.affiliateId = affiliateId

            self.endDate = endDate

            self.search = search

            self.pagesize = pagesize

            self.searchType = searchType

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode([String].self, forKey: .status)

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
                searchType = try container.decode(String.self, forKey: .searchType)

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

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(search, forKey: .search)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(searchType, forKey: .searchType)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}