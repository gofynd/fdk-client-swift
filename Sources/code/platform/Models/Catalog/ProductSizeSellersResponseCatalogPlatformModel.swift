

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductSizeSellersResponse
         Used By: Catalog
     */

    class ProductSizeSellersResponse: Codable {
        public var page: Page

        public var sortOn: [ProductSizeSellerFilter]?

        public var items: [ProductSizePriceResponse]?

        public enum CodingKeys: String, CodingKey {
            case page

            case sortOn = "sort_on"

            case items
        }

        public init(items: [ProductSizePriceResponse]? = nil, page: Page, sortOn: [ProductSizeSellerFilter]? = nil) {
            self.page = page

            self.sortOn = sortOn

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                sortOn = try container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductSizePriceResponse].self, forKey: .items)

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

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductSizeSellersResponse
         Used By: Catalog
     */

    class ProductSizeSellersResponse: Codable {
        public var page: Page

        public var sortOn: [ProductSizeSellerFilter]?

        public var items: [ProductSizePriceResponse]?

        public enum CodingKeys: String, CodingKey {
            case page

            case sortOn = "sort_on"

            case items
        }

        public init(items: [ProductSizePriceResponse]? = nil, page: Page, sortOn: [ProductSizeSellerFilter]? = nil) {
            self.page = page

            self.sortOn = sortOn

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                sortOn = try container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductSizePriceResponse].self, forKey: .items)

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
