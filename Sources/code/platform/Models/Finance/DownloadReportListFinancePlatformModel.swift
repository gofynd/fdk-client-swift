

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadReportList
         Used By: Finance
     */

    class DownloadReportList: Codable {
        public var items: [DownloadReportItems]?

        public var itemCount: Int?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case itemCount = "item_count"

            case page
        }

        public init(items: [DownloadReportItems]? = nil, itemCount: Int? = nil, page: Page? = nil) {
            self.items = items

            self.itemCount = itemCount

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([DownloadReportItems].self, forKey: .items)

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

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(itemCount, forKey: .itemCount)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
