import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductAction
         Used By: Cart
     */

    class ProductAction: Codable {
        public var url: String?

        public var type: String?

        public var query: ActionQuery?

        public enum CodingKeys: String, CodingKey {
            case url

            case type

            case query
        }

        public init(query: ActionQuery? = nil, type: String? = nil, url: String? = nil) {
            self.url = url

            self.type = type

            self.query = query
        }

        public func duplicate() -> ProductAction {
            let dict = self.dictionary!
            let copy = ProductAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

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

            do {
                query = try container.decode(ActionQuery.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
