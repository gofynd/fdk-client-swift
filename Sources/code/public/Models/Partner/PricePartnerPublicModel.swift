

import Foundation
public extension PublicClient.Partner {
    /*
         Model: Price
         Used By: Partner
     */

    class Price: Codable {
        public var amount: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case currency
        }

        public init(amount: Double? = nil, currency: String? = nil) {
            self.amount = amount

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
