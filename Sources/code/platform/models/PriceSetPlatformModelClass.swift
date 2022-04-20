

import Foundation
public extension PlatformClient {
    /*
         Model: PriceSet
         Used By: Order
     */

    class PriceSet: Codable {
        public var shopMoney: PriceSetShopMoney?

        public var presentmentMoney: PriceSetPresentmentMoney?

        public enum CodingKeys: String, CodingKey {
            case shopMoney = "shop_money"

            case presentmentMoney = "presentment_money"
        }

        public init(presentmentMoney: PriceSetPresentmentMoney? = nil, shopMoney: PriceSetShopMoney? = nil) {
            self.shopMoney = shopMoney

            self.presentmentMoney = presentmentMoney
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shopMoney = try container.decode(PriceSetShopMoney.self, forKey: .shopMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                presentmentMoney = try container.decode(PriceSetPresentmentMoney.self, forKey: .presentmentMoney)

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
