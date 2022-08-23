

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSimilarItem
         Used By: Catalog
     */
    class ProductSimilarItem: Codable {
        public var subtitle: String?

        public var items: [ProductDetail]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case items

            case title
        }

        public init(items: [ProductDetail]? = nil, subtitle: String? = nil, title: String? = nil) {
            self.subtitle = subtitle

            self.items = items

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
