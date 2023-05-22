

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductCompareResponse
         Used By: Catalog
     */
    class ProductCompareResponse: Codable {
        public var title: String?

        public var attributesMetadata: [AttributeMetadata]?

        public var subtitle: String?

        public var items: [ProductDetail]?

        public enum CodingKeys: String, CodingKey {
            case title

            case attributesMetadata = "attributes_metadata"

            case subtitle

            case items
        }

        public init(attributesMetadata: [AttributeMetadata]? = nil, items: [ProductDetail]? = nil, subtitle: String? = nil, title: String? = nil) {
            self.title = title

            self.attributesMetadata = attributesMetadata

            self.subtitle = subtitle

            self.items = items
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
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)

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

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
