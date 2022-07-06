

import Foundation
public extension PlatformClient {
    /*
         Model: TotalDiscountSet
         Used By: Order
     */

    class TotalDiscountSet: Codable {
        public var presentmentMoney: TotalDiscountSetPresentmentMoney?

        public var shopMoney: TotalDiscountSetShopMoney?

        public enum CodingKeys: String, CodingKey {
            case presentmentMoney = "presentment_money"

            case shopMoney = "shop_money"
        }

        public init(presentmentMoney: TotalDiscountSetPresentmentMoney? = nil, shopMoney: TotalDiscountSetShopMoney? = nil) {
            self.presentmentMoney = presentmentMoney

            self.shopMoney = shopMoney
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                presentmentMoney = try container.decode(TotalDiscountSetPresentmentMoney.self, forKey: .presentmentMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shopMoney = try container.decode(TotalDiscountSetShopMoney.self, forKey: .shopMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)

            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
        }
    }
}
