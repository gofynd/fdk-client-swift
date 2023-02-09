

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewResponse
         Used By: Logistic
     */

    class ListViewResponse: Codable {
        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public var summary: [ListViewSummary]

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case summary
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.items = items

            self.page = page

            self.summary = summary
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(summary, forKey: .summary)
        }
    }
}
