

import Foundation
public extension ApplicationClient {
    /*
         Model: FreeGiftItemDetails
         Used By: Order
     */
    class FreeGiftItemDetails: Codable {
        public var itemName: String?

        public var itemId: String?

        public var itemBrandName: String?

        public var itemPriceDetails: ItemPriceDetails?

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case itemId = "item_id"

            case itemBrandName = "item_brand_name"

            case itemPriceDetails = "item_price_details"
        }

        public init(itemBrandName: String? = nil, itemId: String? = nil, itemName: String? = nil, itemPriceDetails: ItemPriceDetails? = nil) {
            self.itemName = itemName

            self.itemId = itemId

            self.itemBrandName = itemBrandName

            self.itemPriceDetails = itemPriceDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemName = try container.decode(String.self, forKey: .itemName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

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
                itemPriceDetails = try container.decode(ItemPriceDetails.self, forKey: .itemPriceDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemBrandName, forKey: .itemBrandName)

            try? container.encodeIfPresent(itemPriceDetails, forKey: .itemPriceDetails)
        }
    }
}
