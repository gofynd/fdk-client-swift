

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductSizeSellersResponse
         Used By: Catalog
     */

    class ProductSizeSellersResponse: Codable {
        public var items: [ProductSizePriceResponse]?

        public var page: Page

        public var sortOn: [ProductSizeSellerFilter]?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case sortOn = "sort_on"
        }

        public init(items: [ProductSizePriceResponse]? = nil, page: Page, sortOn: [ProductSizeSellerFilter]? = nil) {
            self.items = items

            self.page = page

            self.sortOn = sortOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductSizePriceResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)

            do {
                sortOn = try container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductSizeSellersResponse
         Used By: Catalog
     */

    class ProductSizeSellersResponse: Codable {
        public var items: [ProductSizePriceResponse]?

        public var page: Page

        public var sortOn: [ProductSizeSellerFilter]?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case sortOn = "sort_on"
        }

        public init(items: [ProductSizePriceResponse]? = nil, page: Page, sortOn: [ProductSizeSellerFilter]? = nil) {
            self.items = items

            self.page = page

            self.sortOn = sortOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductSizePriceResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)

            do {
                sortOn = try container.decode([ProductSizeSellerFilter].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
        }
    }
}
