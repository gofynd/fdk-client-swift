

import Foundation
public extension PlatformClient {
    /*
         Model: TaxLinesPriceSet
         Used By: Order
     */

    class TaxLinesPriceSet: Codable {
        public var shopMoney: TaxLinesPriceSetShopMoney?

        public var presentmentMoney: TaxLinesPriceSetPresentmentMoney?

        public enum CodingKeys: String, CodingKey {
            case shopMoney = "shop_money"

            case presentmentMoney = "presentment_money"
        }

        public init(presentmentMoney: TaxLinesPriceSetPresentmentMoney? = nil, shopMoney: TaxLinesPriceSetShopMoney? = nil) {
            self.shopMoney = shopMoney

            self.presentmentMoney = presentmentMoney
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shopMoney = try container.decode(TaxLinesPriceSetShopMoney.self, forKey: .shopMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                presentmentMoney = try container.decode(TaxLinesPriceSetPresentmentMoney.self, forKey: .presentmentMoney)

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
