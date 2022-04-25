

import Foundation
public extension ApplicationClient {
    /*
         Model: PageSpecItem
         Used By: Content
     */
    class PageSpecItem: Codable {
        public var pageType: String?

        public var displayName: String?

        public var params: [PageSpecParam]?

        public var query: [PageSpecParam]?

        public enum CodingKeys: String, CodingKey {
            case pageType = "page_type"

            case displayName = "display_name"

            case params

            case query
        }

        public init(displayName: String? = nil, pageType: String? = nil, params: [PageSpecParam]? = nil, query: [PageSpecParam]? = nil) {
            self.pageType = pageType

            self.displayName = displayName

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
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([PageSpecParam].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([PageSpecParam].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
