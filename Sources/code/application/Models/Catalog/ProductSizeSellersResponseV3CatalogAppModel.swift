

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSizeSellersResponseV3
         Used By: Catalog
     */
    class ProductSizeSellersResponseV3: Codable {
        public var items: [ProductSizePriceResponseV3]?

        public var sortOn: [ProductSizeSellerFilterSchemaV3]?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case sortOn = "sort_on"

            case page
        }

        public init(items: [ProductSizePriceResponseV3]? = nil, page: Page, sortOn: [ProductSizeSellerFilterSchemaV3]? = nil) {
            self.items = items

            self.sortOn = sortOn

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductSizePriceResponseV3].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSizeSellerFilterSchemaV3].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
