

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var value: Double

        public var formattedValue: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case value

            case formattedValue = "formatted_value"

            case currency
        }

        public init(currency: String, formattedValue: String, value: Double) {
            self.value = value

            self.formattedValue = formattedValue

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(Double.self, forKey: .value)

            formattedValue = try container.decode(String.self, forKey: .formattedValue)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
