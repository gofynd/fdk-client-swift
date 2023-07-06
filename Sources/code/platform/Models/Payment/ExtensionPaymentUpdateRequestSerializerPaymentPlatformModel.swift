

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var currency: String

        public var status: String

        public var paymentDetails: [String: Any]

        public var totalAmount: Int

        public var gid: String

        public var orderDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case currency

            case status

            case paymentDetails = "payment_details"

            case totalAmount = "total_amount"

            case gid

            case orderDetails = "order_details"
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.currency = currency

            self.status = status

            self.paymentDetails = paymentDetails

            self.totalAmount = totalAmount

            self.gid = gid

            self.orderDetails = orderDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            gid = try container.decode(String.self, forKey: .gid)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var currency: String

        public var status: String

        public var paymentDetails: [String: Any]

        public var totalAmount: Int

        public var gid: String

        public var orderDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case currency

            case status

            case paymentDetails = "payment_details"

            case totalAmount = "total_amount"

            case gid

            case orderDetails = "order_details"
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.currency = currency

            self.status = status

            self.paymentDetails = paymentDetails

            self.totalAmount = totalAmount

            self.gid = gid

            self.orderDetails = orderDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            gid = try container.decode(String.self, forKey: .gid)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
        }
    }
}
