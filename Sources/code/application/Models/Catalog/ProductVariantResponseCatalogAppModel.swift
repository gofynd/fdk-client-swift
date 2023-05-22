

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductVariantResponse
         Used By: Catalog
     */
    class ProductVariantResponse: Codable {
        public var items: [ProductVariantItemResponse]?

        public var header: String?

        public var key: String?

        public var displayType: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case header

            case key

            case displayType = "display_type"
        }

        public init(displayType: String? = nil, header: String? = nil, items: [ProductVariantItemResponse]? = nil, key: String? = nil) {
            self.items = items

            self.header = header

            self.key = key

            self.displayType = displayType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayType = try container.decode(String.self, forKey: .displayType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayType, forKey: .displayType)
        }
    }
}
