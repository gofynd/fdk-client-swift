

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductVariantListingResponse
         Used By: Catalog
     */
    class ProductVariantListingResponse: Codable {
        public var key: String?

        public var displayType: String?

        public var total: Int?

        public var header: String?

        public var items: [ProductVariantItemResponse]?

        public enum CodingKeys: String, CodingKey {
            case key

            case displayType = "display_type"

            case total

            case header

            case items
        }

        public init(displayType: String? = nil, header: String? = nil, items: [ProductVariantItemResponse]? = nil, key: String? = nil, total: Int? = nil) {
            self.key = key

            self.displayType = displayType

            self.total = total

            self.header = header

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                total = try container.decode(Int.self, forKey: .total)

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
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
