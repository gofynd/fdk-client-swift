

import Foundation
public extension ApplicationClient {
    /*
         Model: LaunchPage
         Used By: Configuration
     */
    class LaunchPage: Codable {
        public var pageType: String?

        public var params: [String: Any]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case pageType = "page_type"

            case params

            case query
        }

        public init(pageType: String? = nil, params: [String: Any]? = nil, query: [String: Any]? = nil) {
            self.pageType = pageType

            self.params = params

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageType = try container.decode(String.self, forKey: .pageType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

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

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
