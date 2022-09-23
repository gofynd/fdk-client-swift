

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCartItemPromo
         Used By: Cart
     */

    class OverrideCartItemPromo: Codable {
        public var itemList: [[String: Any]]?

        public var promoDesc: String?

        public var promoAmount: String

        public var rwrdTndr: String?

        public var promoId: String

        public enum CodingKeys: String, CodingKey {
            case itemList = "item_list"

            case promoDesc = "promo_desc"

            case promoAmount = "promo_amount"

            case rwrdTndr = "rwrd_tndr"

            case promoId = "promo_id"
        }

        public init(itemList: [[String: Any]]? = nil, promoAmount: String, promoDesc: String? = nil, promoId: String, rwrdTndr: String? = nil) {
            self.itemList = itemList

            self.promoDesc = promoDesc

            self.promoAmount = promoAmount

            self.rwrdTndr = rwrdTndr

            self.promoId = promoId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemList = try container.decode([[String: Any]].self, forKey: .itemList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoDesc = try container.decode(String.self, forKey: .promoDesc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoAmount = try container.decode(String.self, forKey: .promoAmount)

            do {
                rwrdTndr = try container.decode(String.self, forKey: .rwrdTndr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoId = try container.decode(String.self, forKey: .promoId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemList, forKey: .itemList)

            try? container.encodeIfPresent(promoDesc, forKey: .promoDesc)

            try? container.encodeIfPresent(promoAmount, forKey: .promoAmount)

            try? container.encodeIfPresent(rwrdTndr, forKey: .rwrdTndr)

            try? container.encodeIfPresent(promoId, forKey: .promoId)
        }
    }
}
