

import Foundation
public extension PlatformClient {
    /*
         Model: TotalShippingPriceSet
         Used By: Order
     */

    class TotalShippingPriceSet: Codable {
        public var shopMoney: TotalShippingPriceSetShopMoney?

        public var presentmentMoney: TotalShippingPriceSetPresentmentMoney?

        public enum CodingKeys: String, CodingKey {
            case shopMoney = "shop_money"

            case presentmentMoney = "presentment_money"
        }

        public init(presentmentMoney: TotalShippingPriceSetPresentmentMoney? = nil, shopMoney: TotalShippingPriceSetShopMoney? = nil) {
            self.shopMoney = shopMoney

            self.presentmentMoney = presentmentMoney
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shopMoney = try container.decode(TotalShippingPriceSetShopMoney.self, forKey: .shopMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                presentmentMoney = try container.decode(TotalShippingPriceSetPresentmentMoney.self, forKey: .presentmentMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)

            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
        }
    }
}
