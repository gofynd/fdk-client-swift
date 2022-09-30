

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCartItem
         Used By: Cart
     */

    class OverrideCartItem: Codable {
        public var quantity: Int?

        public var extraMeta: [String: Any]?

        public var size: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var promoList: [OverrideCartItemPromo]?

        public var priceMarked: Double

        public var discount: Double

        public var itemId: Int

        public var sellerIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case extraMeta = "extra_meta"

            case size

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case promoList = "promo_list"

            case priceMarked = "price_marked"

            case discount

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(amountPaid: Double, discount: Double, extraMeta: [String: Any]? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, promoList: [OverrideCartItemPromo]? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil, size: String) {
            self.quantity = quantity

            self.extraMeta = extraMeta

            self.size = size

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.promoList = promoList

            self.priceMarked = priceMarked

            self.discount = discount

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                promoList = try container.decode([OverrideCartItemPromo].self, forKey: .promoList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promoList, forKey: .promoList)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
