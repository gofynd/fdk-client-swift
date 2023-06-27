

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var status: String

        public var gid: String

        public var orderDetails: [String: Any]

        public var totalAmount: Int

        public var currency: String

        public var paymentDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case status

            case gid

            case orderDetails = "order_details"

            case totalAmount = "total_amount"

            case currency

            case paymentDetails = "payment_details"
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.status = status

            self.gid = gid

            self.orderDetails = orderDetails

            self.totalAmount = totalAmount

            self.currency = currency

            self.paymentDetails = paymentDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var status: String

        public var gid: String

        public var orderDetails: [String: Any]

        public var totalAmount: Int

        public var currency: String

        public var paymentDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case status

            case gid

            case orderDetails = "order_details"

            case totalAmount = "total_amount"

            case currency

            case paymentDetails = "payment_details"
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.status = status

            self.gid = gid

            self.orderDetails = orderDetails

            self.totalAmount = totalAmount

            self.currency = currency

            self.paymentDetails = paymentDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
        }
    }
}
