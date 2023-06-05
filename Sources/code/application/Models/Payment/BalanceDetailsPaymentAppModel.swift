

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var formattedValue: String

        public var value: Double

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case formattedValue = "formatted_value"

            case value

            case currency
        }

        public init(currency: String, formattedValue: String, value: Double) {
            self.formattedValue = formattedValue

            self.value = value

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            formattedValue = try container.decode(String.self, forKey: .formattedValue)

            value = try container.decode(Double.self, forKey: .value)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
