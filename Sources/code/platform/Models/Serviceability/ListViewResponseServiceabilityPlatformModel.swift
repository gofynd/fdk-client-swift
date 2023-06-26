

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var page: [ZoneDataItem]

        public var items: [ListViewItems]

        public var summary: [ListViewSummary]

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case summary
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.page = page

            self.items = items

            self.summary = summary
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            items = try container.decode([ListViewItems].self, forKey: .items)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(summary, forKey: .summary)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var page: [ZoneDataItem]

        public var items: [ListViewItems]

        public var summary: [ListViewSummary]

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case summary
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.page = page

            self.items = items

            self.summary = summary
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            items = try container.decode([ListViewItems].self, forKey: .items)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(summary, forKey: .summary)
        }
    }
}
