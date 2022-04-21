

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var page: [ZoneDataItem]

        public var summary: [ListViewSummary]

        public var items: [ListViewItems]

        public enum CodingKeys: String, CodingKey {
            case page

            case summary

            case items
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.page = page

            self.summary = summary

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)

            items = try container.decode([ListViewItems].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(summary, forKey: .summary)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
