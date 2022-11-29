

import Foundation
public extension ApplicationClient {
    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var value: Double?

        public var formattedValue: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case formattedValue = "formatted_value"

            case currency
        }

        public init(currency: String? = nil, formattedValue: String? = nil, value: Double? = nil) {
            self.value = value

            self.formattedValue = formattedValue

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formattedValue = try container.decode(String.self, forKey: .formattedValue)

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

            try? container.encode(value, forKey: .value)

            try? container.encode(formattedValue, forKey: .formattedValue)

            try? container.encode(currency, forKey: .currency)
        }
    }
}
