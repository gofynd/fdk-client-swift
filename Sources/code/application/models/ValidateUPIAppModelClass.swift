

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateUPI
         Used By: Payment
     */
    class ValidateUPI: Codable {
        public var customerName: String

        public var status: String

        public var isValid: Bool

        public var upiVpa: String

        public enum CodingKeys: String, CodingKey {
            case customerName = "customer_name"

            case status

            case isValid = "is_valid"

            case upiVpa = "upi_vpa"
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            self.customerName = customerName

            self.status = status

            self.isValid = isValid

            self.upiVpa = upiVpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerName = try container.decode(String.self, forKey: .customerName)

            status = try container.decode(String.self, forKey: .status)

            isValid = try container.decode(Bool.self, forKey: .isValid)

            upiVpa = try container.decode(String.self, forKey: .upiVpa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)
        }
    }
}
