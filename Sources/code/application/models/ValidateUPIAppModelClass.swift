

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateUPI
         Used By: Payment
     */
    class ValidateUPI: Codable {
        public var isValid: Bool

        public var status: String

        public var upiVpa: String

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case isValid = "is_valid"

            case status

            case upiVpa = "upi_vpa"

            case customerName = "customer_name"
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            self.isValid = isValid

            self.status = status

            self.upiVpa = upiVpa

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isValid = try container.decode(Bool.self, forKey: .isValid)

            status = try container.decode(String.self, forKey: .status)

            upiVpa = try container.decode(String.self, forKey: .upiVpa)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
