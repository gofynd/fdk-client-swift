

import Foundation
public extension PlatformClient {
    /*
         Model: AutocompleteAction
         Used By: Catalog
     */

    class AutocompleteAction: Codable {
        public var page: AutocompletePageAction?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case page

            case type
        }

        public init(page: AutocompletePageAction? = nil, type: String? = nil) {
            self.page = page

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(AutocompletePageAction.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
