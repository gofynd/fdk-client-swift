import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSimilarItem
         Used By: Catalog
     */
    class ProductSimilarItem: Codable {
        public var title: String?

        public var items: [ProductDetail]?

        public var subtitle: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case items

            case subtitle
        }

        public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
            self.title = title

            self.items = items

            self.subtitle = subtitle
        }

        public func duplicate() -> ProductSimilarItem {
            let dict = self.dictionary!
            let copy = ProductSimilarItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

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
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }
}
