

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateUPI
         Used By: Payment
     */
    class ValidateUPI: Codable {
        public var customerName: String

        public var status: String

        public var upiVpa: String

        public var isValid: Bool

        public enum CodingKeys: String, CodingKey {
            case customerName = "customer_name"

            case status

            case upiVpa = "upi_vpa"

            case isValid = "is_valid"
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            self.customerName = customerName

            self.status = status

            self.upiVpa = upiVpa

            self.isValid = isValid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerName = try container.decode(String.self, forKey: .customerName)

            status = try container.decode(String.self, forKey: .status)

            upiVpa = try container.decode(String.self, forKey: .upiVpa)

            isValid = try container.decode(Bool.self, forKey: .isValid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)

            try? container.encodeIfPresent(isValid, forKey: .isValid)
        }
    }
}
