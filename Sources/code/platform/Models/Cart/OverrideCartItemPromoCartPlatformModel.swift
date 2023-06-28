

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCartItemPromo
         Used By: Cart
     */

    class OverrideCartItemPromo: Codable {
        public var promoId: String

        public var promoAmount: String

        public var promoDesc: String?

        public var itemList: [[String: Any]]?

        public var rwrdTndr: String?

        public enum CodingKeys: String, CodingKey {
            case promoId = "promo_id"

            case promoAmount = "promo_amount"

            case promoDesc = "promo_desc"

            case itemList = "item_list"

            case rwrdTndr = "rwrd_tndr"
        }

        public init(itemList: [[String: Any]]? = nil, promoAmount: String, promoDesc: String? = nil, promoId: String, rwrdTndr: String? = nil) {
            self.promoId = promoId

            self.promoAmount = promoAmount

            self.promoDesc = promoDesc

            self.itemList = itemList

            self.rwrdTndr = rwrdTndr
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promoId = try container.decode(String.self, forKey: .promoId)

            promoAmount = try container.decode(String.self, forKey: .promoAmount)

            do {
                promoDesc = try container.decode(String.self, forKey: .promoDesc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemList = try container.decode([[String: Any]].self, forKey: .itemList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rwrdTndr = try container.decode(String.self, forKey: .rwrdTndr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(promoAmount, forKey: .promoAmount)

            try? container.encodeIfPresent(promoDesc, forKey: .promoDesc)

            try? container.encodeIfPresent(itemList, forKey: .itemList)

            try? container.encodeIfPresent(rwrdTndr, forKey: .rwrdTndr)
        }
    }
}
