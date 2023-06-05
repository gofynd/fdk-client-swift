

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var currency: String

        public var formattedValue: String

        public var value: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case formattedValue = "formatted_value"

            case value
        }

        public init(currency: String, formattedValue: String, value: Double) {
            self.currency = currency

            self.formattedValue = formattedValue

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            formattedValue = try container.decode(String.self, forKey: .formattedValue)

            value = try container.decode(Double.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
