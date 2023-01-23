

import Foundation
public extension PlatformClient {
    /*
         Model: ActionPage
         Used By: Content
     */

    class ActionPage: Codable {
        public var params: [String: [String]]?

        public var query: [String: [String]]?

        public var url: String?

        public var type: PageType

        public enum CodingKeys: String, CodingKey {
            case params

            case query

            case url

            case type
        }

        public init(params: [String: [String]]? = nil, query: [String: [String]]? = nil, type: PageType, url: String? = nil) {
            self.params = params

            self.query = query

            self.url = url

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                params = try container.decode([String: [String]].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: [String]].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(PageType.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
