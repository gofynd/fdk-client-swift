

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadReport
         Used By: Finance
     */

    class DownloadReport: Codable {
        public var page: Int?

        public var startDate: String?

        public var pagesize: Int?

        public var endDate: String?

        public enum CodingKeys: String, CodingKey {
            case page

            case startDate = "start_date"

            case pagesize

            case endDate = "end_date"
        }

        public init(endDate: String? = nil, page: Int? = nil, pagesize: Int? = nil, startDate: String? = nil) {
            self.page = page

            self.startDate = startDate

            self.pagesize = pagesize

            self.endDate = endDate
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
                startDate = try container.decode(String.self, forKey: .startDate)

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
                endDate = try container.decode(String.self, forKey: .endDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}
