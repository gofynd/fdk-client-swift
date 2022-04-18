import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSizeSellersResponseV2
         Used By: Catalog
     */
    class ProductSizeSellersResponseV2: Codable {
        public var page: Page

        public var sortOn: [ProductSizeSellerFilterSchemaV2]?

        public var items: [ProductSizePriceResponseV2]?

        public enum CodingKeys: String, CodingKey {
            case page

            case sortOn = "sort_on"

            case items
        }

        public init(items: [ProductSizePriceResponseV2]? = nil, page: Page, sortOn: [ProductSizeSellerFilterSchemaV2]? = nil) {
            self.page = page

            self.sortOn = sortOn

            self.items = items
        }

        public func duplicate() -> ProductSizeSellersResponseV2 {
            let dict = self.dictionary!
            let copy = ProductSizeSellersResponseV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                sortOn = try container.decode([ProductSizeSellerFilterSchemaV2].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductSizePriceResponseV2].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
