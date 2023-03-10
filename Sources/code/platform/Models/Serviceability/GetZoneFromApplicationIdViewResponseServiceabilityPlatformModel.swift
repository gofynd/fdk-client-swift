

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: GetZoneFromApplicationIdViewResponse
         Used By: Serviceability
     */

    class GetZoneFromApplicationIdViewResponse: Codable {
        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ListViewItems], page: [ZoneDataItem]) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: GetZoneFromApplicationIdViewResponse
         Used By: Serviceability
     */

    class GetZoneFromApplicationIdViewResponse: Codable {
        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ListViewItems], page: [ZoneDataItem]) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
