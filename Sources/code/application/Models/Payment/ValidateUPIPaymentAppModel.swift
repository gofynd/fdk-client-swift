

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ValidateUPI
         Used By: Payment
     */
    class ValidateUPI: Codable {
        public var upiVpa: String

        public var status: String

        public var isValid: Bool

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case upiVpa = "upi_vpa"

            case status

            case isValid = "is_valid"

            case customerName = "customer_name"
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            self.upiVpa = upiVpa

            self.status = status

            self.isValid = isValid

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            upiVpa = try container.decode(String.self, forKey: .upiVpa)

            status = try container.decode(String.self, forKey: .status)

            isValid = try container.decode(Bool.self, forKey: .isValid)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
