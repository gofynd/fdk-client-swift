

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCartItem
         Used By: Cart
     */

    class OverrideCartItem: Codable {
        public var promoList: [OverrideCartItemPromo]?

        public var extraMeta: [String: Any]?

        public var itemId: Int

        public var sellerIdentifier: String?

        public var size: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var discount: Double

        public var quantity: Int?

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case promoList = "promo_list"

            case extraMeta = "extra_meta"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case size

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case discount

            case quantity

            case priceMarked = "price_marked"
        }

        public init(amountPaid: Double, discount: Double, extraMeta: [String: Any]? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, promoList: [OverrideCartItemPromo]? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil, size: String) {
            self.promoList = promoList

            self.extraMeta = extraMeta

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.discount = discount

            self.quantity = quantity

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                promoList = try container.decode([OverrideCartItemPromo].self, forKey: .promoList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promoList, forKey: .promoList)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
