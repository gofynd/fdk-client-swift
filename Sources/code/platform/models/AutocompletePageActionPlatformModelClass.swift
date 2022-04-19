import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AutocompletePageAction
         Used By: Catalog
     */

    class AutocompletePageAction: Codable {
        public var type: String?

        public var params: [String: Any]?

        public var query: [String: Any]?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case params

            case query

            case url
        }

        public init(params: [String: Any]?, query: [String: Any]?, type: String?, url: String?) {
            self.type = type

            self.params = params

            self.query = query

            self.url = url
        }

        public func duplicate() -> AutocompletePageAction {
            let dict = self.dictionary!
            let copy = AutocompletePageAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
