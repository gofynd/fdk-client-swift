

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var value: Double

        public var currency: String

        public var formattedValue: String

        public enum CodingKeys: String, CodingKey {
            case value

            case currency

            case formattedValue = "formatted_value"
        }

        public init(currency: String, formattedValue: String, value: Double) {
            self.value = value

            self.currency = currency

            self.formattedValue = formattedValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(Double.self, forKey: .value)

            currency = try container.decode(String.self, forKey: .currency)

            formattedValue = try container.decode(String.self, forKey: .formattedValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)
        }
    }
}
