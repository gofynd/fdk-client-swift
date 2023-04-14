

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ValidateUPI
         Used By: Payment
     */
    class ValidateUPI: Codable {
        public var upiVpa: String

        public var customerName: String

        public var isValid: Bool

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case upiVpa = "upi_vpa"

            case customerName = "customer_name"

            case isValid = "is_valid"

            case status
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            self.upiVpa = upiVpa

            self.customerName = customerName

            self.isValid = isValid

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            upiVpa = try container.decode(String.self, forKey: .upiVpa)

            customerName = try container.decode(String.self, forKey: .customerName)

            isValid = try container.decode(Bool.self, forKey: .isValid)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
