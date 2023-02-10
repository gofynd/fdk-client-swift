

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewResponse
         Used By: Logistic
     */

    class ListViewResponse: Codable {
        public var summary: [ListViewSummary]

        public var page: [ZoneDataItem]

        public var items: [ListViewItems]

        public enum CodingKeys: String, CodingKey {
            case summary

            case page

            case items
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.summary = summary

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            items = try container.decode([ListViewItems].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(summary, forKey: .summary)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
