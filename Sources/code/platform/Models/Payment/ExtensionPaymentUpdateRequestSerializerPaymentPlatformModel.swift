

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var gid: String

        public var currency: String

        public var totalAmount: Int

        public var paymentDetails: [String: Any]

        public var status: String

        public var orderDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case gid

            case currency

            case totalAmount = "total_amount"

            case paymentDetails = "payment_details"

            case status

            case orderDetails = "order_details"
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.gid = gid

            self.currency = currency

            self.totalAmount = totalAmount

            self.paymentDetails = paymentDetails

            self.status = status

            self.orderDetails = orderDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            currency = try container.decode(String.self, forKey: .currency)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            status = try container.decode(String.self, forKey: .status)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(status, forKey: .status)

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
        public var gid: String

        public var currency: String

        public var totalAmount: Int

        public var paymentDetails: [String: Any]

        public var status: String

        public var orderDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case gid

            case currency

            case totalAmount = "total_amount"

            case paymentDetails = "payment_details"

            case status

            case orderDetails = "order_details"
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.gid = gid

            self.currency = currency

            self.totalAmount = totalAmount

            self.paymentDetails = paymentDetails

            self.status = status

            self.orderDetails = orderDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            currency = try container.decode(String.self, forKey: .currency)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            status = try container.decode(String.self, forKey: .status)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
        }
    }
}
