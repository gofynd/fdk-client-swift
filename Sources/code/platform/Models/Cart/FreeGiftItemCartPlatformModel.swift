

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: FreeGiftItem
         Used By: Cart
     */

    class FreeGiftItem: Codable {
        public var itemImagesUrl: [String]?

        public var itemId: Int?

        public var itemPriceDetails: [String: Any]?

        public var itemBrandName: String?

        public var itemName: String?

        public var itemSlug: String?

        public enum CodingKeys: String, CodingKey {
            case itemImagesUrl = "item_images_url"

            case itemId = "item_id"

            case itemPriceDetails = "item_price_details"

            case itemBrandName = "item_brand_name"

            case itemName = "item_name"

            case itemSlug = "item_slug"
        }

        public init(itemBrandName: String? = nil, itemId: Int? = nil, itemImagesUrl: [String]? = nil, itemName: String? = nil, itemPriceDetails: [String: Any]? = nil, itemSlug: String? = nil) {
            self.itemImagesUrl = itemImagesUrl

            self.itemId = itemId

            self.itemPriceDetails = itemPriceDetails

            self.itemBrandName = itemBrandName

            self.itemName = itemName

            self.itemSlug = itemSlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemImagesUrl = try container.decode([String].self, forKey: .itemImagesUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemPriceDetails = try container.decode([String: Any].self, forKey: .itemPriceDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemBrandName = try container.decode(String.self, forKey: .itemBrandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemName = try container.decode(String.self, forKey: .itemName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSlug = try container.decode(String.self, forKey: .itemSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemImagesUrl, forKey: .itemImagesUrl)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemPriceDetails, forKey: .itemPriceDetails)

            try? container.encodeIfPresent(itemBrandName, forKey: .itemBrandName)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(itemSlug, forKey: .itemSlug)
        }
    }
}
