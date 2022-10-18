

import Foundation
public extension ApplicationClient {
    /*
         Model: BalanceDetails
         Used By: Payment
     */
    class BalanceDetails: Codable {
        public var currency: String?

        public var formattedValue: String?

        public var value: Double?

        public enum CodingKeys: String, CodingKey {
            case currency

            case formattedValue = "formatted_value"

            case value
        }

        public init(currency: String? = nil, formattedValue: String? = nil, value: Double? = nil) {
            self.currency = currency

            self.formattedValue = formattedValue

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode(String.self, forKey: .currency)

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
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(formattedValue, forKey: .formattedValue)

            try? container.encode(value, forKey: .value)
        }
    }
}
