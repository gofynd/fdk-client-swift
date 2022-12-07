

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCartItemPromo
         Used By: Cart
     */

    class OverrideCartItemPromo: Codable {
        public var promoAmount: String

        public var promoId: String

        public var itemList: [[String: Any]]?

        public var rwrdTndr: String?

        public var promoDesc: String?

        public enum CodingKeys: String, CodingKey {
            case promoAmount = "promo_amount"

            case promoId = "promo_id"

            case itemList = "item_list"

            case rwrdTndr = "rwrd_tndr"

            case promoDesc = "promo_desc"
        }

        public init(itemList: [[String: Any]]? = nil, promoAmount: String, promoDesc: String? = nil, promoId: String, rwrdTndr: String? = nil) {
            self.promoAmount = promoAmount

            self.promoId = promoId

            self.itemList = itemList

            self.rwrdTndr = rwrdTndr

            self.promoDesc = promoDesc
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promoAmount = try container.decode(String.self, forKey: .promoAmount)

            promoId = try container.decode(String.self, forKey: .promoId)

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

            do {
                promoDesc = try container.decode(String.self, forKey: .promoDesc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promoAmount, forKey: .promoAmount)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(itemList, forKey: .itemList)

            try? container.encodeIfPresent(rwrdTndr, forKey: .rwrdTndr)

            try? container.encodeIfPresent(promoDesc, forKey: .promoDesc)
        }
    }
}
