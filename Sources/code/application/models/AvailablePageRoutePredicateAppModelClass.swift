

import Foundation
public extension ApplicationClient {
    /*
         Model: AvailablePageRoutePredicate
         Used By: Theme
     */
    class AvailablePageRoutePredicate: Codable {
        public var selected: String?

        public var exactUrl: String?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case selected

            case exactUrl = "exact_url"

            case query
        }

        public init(exactUrl: String? = nil, query: [String: Any]? = nil, selected: String? = nil) {
            self.selected = selected

            self.exactUrl = exactUrl

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selected = try container.decode(String.self, forKey: .selected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exactUrl = try container.decode(String.self, forKey: .exactUrl)

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

            try? container.encodeIfPresent(selected, forKey: .selected)

            try? container.encodeIfPresent(exactUrl, forKey: .exactUrl)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
