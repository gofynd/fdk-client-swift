

import Foundation
public extension ApplicationClient {
    /*
         Model: FreeGiftItemDetails
         Used By: Order
     */
    class FreeGiftItemDetails: Codable {
        public var itemId: String?

        public var itemPriceDetails: ItemPriceDetails?

        public var itemName: String?

        public var itemBrandName: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case itemPriceDetails = "item_price_details"

            case itemName = "item_name"

            case itemBrandName = "item_brand_name"
        }

        public init(itemBrandName: String? = nil, itemId: String? = nil, itemName: String? = nil, itemPriceDetails: ItemPriceDetails? = nil) {
            self.itemId = itemId

            self.itemPriceDetails = itemPriceDetails

            self.itemName = itemName

            self.itemBrandName = itemBrandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

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

            do {
                itemName = try container.decode(String.self, forKey: .itemName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemPriceDetails, forKey: .itemPriceDetails)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(itemBrandName, forKey: .itemBrandName)
        }
    }
}
