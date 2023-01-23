

import Foundation
public extension PlatformClient {
    /*
         Model: StoreFilter
         Used By: Inventory
     */

    class StoreFilter: Codable {
        public var includeTags: [String]?

        public var excludeTags: [String]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case includeTags = "include_tags"

            case excludeTags = "exclude_tags"

            case query
        }

        public init(excludeTags: [String]? = nil, includeTags: [String]? = nil, query: [String: Any]? = nil) {
            self.includeTags = includeTags

            self.excludeTags = excludeTags

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                includeTags = try container.decode([String].self, forKey: .includeTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeTags = try container.decode([String].self, forKey: .excludeTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(includeTags, forKey: .includeTags)

            try? container.encodeIfPresent(excludeTags, forKey: .excludeTags)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
