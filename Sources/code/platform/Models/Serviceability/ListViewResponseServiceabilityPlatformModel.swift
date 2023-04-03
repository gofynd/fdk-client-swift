

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var summary: [ListViewSummary]

        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public enum CodingKeys: String, CodingKey {
            case summary

            case items

            case page
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.summary = summary

            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(summary, forKey: .summary)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var summary: [ListViewSummary]

        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public enum CodingKeys: String, CodingKey {
            case summary

            case items

            case page
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.summary = summary

            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(summary, forKey: .summary)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
