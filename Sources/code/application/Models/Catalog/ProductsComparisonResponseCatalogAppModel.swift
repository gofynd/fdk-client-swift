

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductsComparisonResponse
         Used By: Catalog
     */
    class ProductsComparisonResponse: Codable {
        public var attributesMetadata: [AttributeMetadata]?

        public var items: [ProductDetail]?

        public enum CodingKeys: String, CodingKey {
            case attributesMetadata = "attributes_metadata"

            case items
        }

        public init(attributesMetadata: [AttributeMetadata]? = nil, items: [ProductDetail]? = nil) {
            self.attributesMetadata = attributesMetadata

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)

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

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
