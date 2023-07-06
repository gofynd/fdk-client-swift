

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCartItem
         Used By: Cart
     */

    class OverrideCartItem: Codable {
        public var extraMeta: [String: Any]?

        public var promoList: [OverrideCartItemPromo]?

        public var priceMarked: Double

        public var size: String

        public var itemId: Int

        public var quantity: Int?

        public var priceEffective: Double

        public var amountPaid: Double

        public var discount: Double

        public var sellerIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case promoList = "promo_list"

            case priceMarked = "price_marked"

            case size

            case itemId = "item_id"

            case quantity

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case discount

            case sellerIdentifier = "seller_identifier"
        }

        public init(amountPaid: Double, discount: Double, extraMeta: [String: Any]? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, promoList: [OverrideCartItemPromo]? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil, size: String) {
            self.extraMeta = extraMeta

            self.promoList = promoList

            self.priceMarked = priceMarked

            self.size = size

            self.itemId = itemId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoList = try container.decode([OverrideCartItemPromo].self, forKey: .promoList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(promoList, forKey: .promoList)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
