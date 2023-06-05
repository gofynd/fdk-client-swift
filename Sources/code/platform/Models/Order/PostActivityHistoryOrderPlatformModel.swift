

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PostActivityHistory
         Used By: Order
     */

    class PostActivityHistory: Codable {
        public var data: PostHistoryData

        public var filters: [PostHistoryFilters]

        public enum CodingKeys: String, CodingKey {
            case data

            case filters
        }

        public init(data: PostHistoryData, filters: [PostHistoryFilters]) {
            self.data = data

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(PostHistoryData.self, forKey: .data)

            filters = try container.decode([PostHistoryFilters].self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PostActivityHistory
         Used By: Order
     */

    class PostActivityHistory: Codable {
        public var data: PostHistoryData

        public var filters: [PostHistoryFilters]

        public enum CodingKeys: String, CodingKey {
            case data

            case filters
        }

        public init(data: PostHistoryData, filters: [PostHistoryFilters]) {
            self.data = data

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(PostHistoryData.self, forKey: .data)

            filters = try container.decode([PostHistoryFilters].self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
