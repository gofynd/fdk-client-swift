

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: GetPaymentCode
         Used By: Payment
     */

    class GetPaymentCode: Codable {
        public var methodCode: PaymentCode

        public enum CodingKeys: String, CodingKey {
            case methodCode = "method_code"
        }

        public init(methodCode: PaymentCode) {
            self.methodCode = methodCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            methodCode = try container.decode(PaymentCode.self, forKey: .methodCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(methodCode, forKey: .methodCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: GetPaymentCode
         Used By: Payment
     */

    class GetPaymentCode: Codable {
        public var methodCode: PaymentCode

        public enum CodingKeys: String, CodingKey {
            case methodCode = "method_code"
        }

        public init(methodCode: PaymentCode) {
            self.methodCode = methodCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            methodCode = try container.decode(PaymentCode.self, forKey: .methodCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(methodCode, forKey: .methodCode)
        }
    }
}
