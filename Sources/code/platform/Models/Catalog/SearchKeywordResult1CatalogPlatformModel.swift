

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: SearchKeywordResult1
         Used By: Catalog
     */

    class SearchKeywordResult1: Codable {
        public var sortOn: String

        public var query: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case query
        }

        public init(query: [String: Any], sortOn: String) {
            self.sortOn = sortOn

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sortOn = try container.decode(String.self, forKey: .sortOn)

            query = try container.decode([String: Any].self, forKey: .query)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: SearchKeywordResult1
         Used By: Catalog
     */

    class SearchKeywordResult1: Codable {
        public var sortOn: String

        public var query: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case sortOn = "sort_on"

            case query
        }

        public init(query: [String: Any], sortOn: String) {
            self.sortOn = sortOn

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sortOn = try container.decode(String.self, forKey: .sortOn)

            query = try container.decode([String: Any].self, forKey: .query)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
