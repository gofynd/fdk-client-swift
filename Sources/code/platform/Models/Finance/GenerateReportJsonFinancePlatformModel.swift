

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GenerateReportJson
         Used By: Finance
     */

    class GenerateReportJson: Codable {
        public var headers: [String]?

        public var items: [[String]]?

        public var endDate: String?

        public var startDate: String?

        public var page: Page?

        public var itemCount: Int?

        public enum CodingKeys: String, CodingKey {
            case headers

            case items

            case endDate = "end_date"

            case startDate = "start_date"

            case page

            case itemCount = "item_count"
        }

        public init(endDate: String? = nil, headers: [String]? = nil, items: [[String]]? = nil, itemCount: Int? = nil, page: Page? = nil, startDate: String? = nil) {
            self.headers = headers

            self.items = items

            self.endDate = endDate

            self.startDate = startDate

            self.page = page

            self.itemCount = itemCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headers = try container.decode([String].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([[String]].self, forKey: .items)

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
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCount = try container.decode(Int.self, forKey: .itemCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(itemCount, forKey: .itemCount)
        }
    }
}
