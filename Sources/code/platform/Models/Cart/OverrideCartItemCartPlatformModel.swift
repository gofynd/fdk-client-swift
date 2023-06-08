

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCartItem
         Used By: Cart
     */

    class OverrideCartItem: Codable {
        public var size: String

        public var priceMarked: Double

        public var itemId: Int

        public var sellerIdentifier: String?

        public var discount: Double

        public var extraMeta: [String: Any]?

        public var amountPaid: Double

        public var priceEffective: Double

        public var promoList: [OverrideCartItemPromo]?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case discount

            case extraMeta = "extra_meta"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case promoList = "promo_list"

            case quantity
        }

        public init(amountPaid: Double, discount: Double, extraMeta: [String: Any]? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, promoList: [OverrideCartItemPromo]? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil, size: String) {
            self.size = size

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.extraMeta = extraMeta

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.promoList = promoList

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                promoList = try container.decode([OverrideCartItemPromo].self, forKey: .promoList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promoList, forKey: .promoList)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
