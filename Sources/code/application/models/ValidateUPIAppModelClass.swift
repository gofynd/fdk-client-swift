

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateUPI
         Used By: Payment
     */
    class ValidateUPI: Codable {
        public var isValid: Bool

        public var customerName: String

        public var upiVpa: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case isValid = "is_valid"

            case customerName = "customer_name"

            case upiVpa = "upi_vpa"

            case status
        }

        public init(customerName: String, isValid: Bool, status: String, upiVpa: String) {
            self.isValid = isValid

            self.customerName = customerName

            self.upiVpa = upiVpa

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isValid = try container.decode(Bool.self, forKey: .isValid)

            customerName = try container.decode(String.self, forKey: .customerName)

            upiVpa = try container.decode(String.self, forKey: .upiVpa)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
