

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductsComparisonResponse
         Used By: Catalog
     */
    class ProductsComparisonResponse: Codable {
        public var items: [ProductDetail]?

        public var attributesMetadata: [AttributeMetadata]?

        public enum CodingKeys: String, CodingKey {
            case items

            case attributesMetadata = "attributes_metadata"
        }

        public init(attributesMetadata: [AttributeMetadata]? = nil, items: [ProductDetail]? = nil) {
            self.items = items

            self.attributesMetadata = attributesMetadata
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        }
    }
}
