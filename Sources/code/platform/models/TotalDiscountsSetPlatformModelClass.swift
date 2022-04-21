

import Foundation
public extension PlatformClient {
    /*
         Model: TotalDiscountsSet
         Used By: Order
     */

    class TotalDiscountsSet: Codable {
        public var presentmentMoney: PresentmentMoney?

        public var shopMoney: ShopMoney?

        public enum CodingKeys: String, CodingKey {
            case presentmentMoney = "presentment_money"

            case shopMoney = "shop_money"
        }

        public init(presentmentMoney: PresentmentMoney? = nil, shopMoney: ShopMoney? = nil) {
            self.presentmentMoney = presentmentMoney

            self.shopMoney = shopMoney
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                presentmentMoney = try container.decode(PresentmentMoney.self, forKey: .presentmentMoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shopMoney = try container.decode(ShopMoney.self, forKey: .shopMoney)

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
