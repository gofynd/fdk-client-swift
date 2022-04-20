

import Foundation
public extension PlatformClient {
    /*
         Model: TaxLinesPriceSetPresentmentMoney
         Used By: Order
     */

    class TaxLinesPriceSetPresentmentMoney: Codable {
        public var currencyCode: String?

        public var amount: String?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case amount
        }

        public init(amount: String? = nil, currencyCode: String? = nil) {
            self.currencyCode = currencyCode

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(String.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
