

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSizeSellersResponseV2
         Used By: Catalog
     */
    class ProductSizeSellersResponseV2: Codable {
        public var pystormbreakerUuid: String?

        public var sortOn: [ProductSizeSellerFilterSchemaV2]?

        public var page: Page

        public var items: [ProductSizePriceResponseV2]?

        public enum CodingKeys: String, CodingKey {
            case pystormbreakerUuid = "pystormbreaker_uuid"

            case sortOn = "sort_on"

            case page

            case items
        }

        public init(items: [ProductSizePriceResponseV2]? = nil, page: Page, pystormbreakerUuid: String? = nil, sortOn: [ProductSizeSellerFilterSchemaV2]? = nil) {
            self.pystormbreakerUuid = pystormbreakerUuid

            self.sortOn = sortOn

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSizeSellerFilterSchemaV2].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ProductSizePriceResponseV2].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
