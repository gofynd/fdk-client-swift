

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCartItem
         Used By: Cart
     */

    class OverrideCartItem: Codable {
        public var priceMarked: Double

        public var quantity: Int?

        public var amountPaid: Double

        public var itemId: Int

        public var size: String

        public var extraMeta: [String: Any]?

        public var discount: Double

        public var sellerIdentifier: String?

        public var priceEffective: Double

        public var promoList: [OverrideCartItemPromo]?

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case quantity

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case size

            case extraMeta = "extra_meta"

            case discount

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case promoList = "promo_list"
        }

        public init(amountPaid: Double, discount: Double, extraMeta: [String: Any]? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, promoList: [OverrideCartItemPromo]? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil, size: String) {
            self.priceMarked = priceMarked

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.size = size

            self.extraMeta = extraMeta

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.promoList = promoList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            size = try container.decode(String.self, forKey: .size)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                promoList = try container.decode([OverrideCartItemPromo].self, forKey: .promoList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promoList, forKey: .promoList)
        }
    }
}
