

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadReport
         Used By: Finance
     */

    class DownloadReport: Codable {
        public var endDate: String?

        public var startDate: String?

        public var page: Int?

        public var pagesize: Int?

        public enum CodingKeys: String, CodingKey {
            case endDate = "end_date"

            case startDate = "start_date"

            case page

            case pagesize
        }

        public init(endDate: String? = nil, page: Int? = nil, pagesize: Int? = nil, startDate: String? = nil) {
            self.endDate = endDate

            self.startDate = startDate

            self.page = page

            self.pagesize = pagesize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

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
                pagesize = try container.decode(Int.self, forKey: .pagesize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(pagesize, forKey: .pagesize)
        }
    }
}
