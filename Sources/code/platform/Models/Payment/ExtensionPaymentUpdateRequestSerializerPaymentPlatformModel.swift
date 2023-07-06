

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var totalAmount: Int

        public var paymentDetails: [String: Any]

        public var currency: String

        public var orderDetails: [String: Any]

        public var status: String

        public var gid: String

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case paymentDetails = "payment_details"

            case currency

            case orderDetails = "order_details"

            case status

            case gid
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.totalAmount = totalAmount

            self.paymentDetails = paymentDetails

            self.currency = currency

            self.orderDetails = orderDetails

            self.status = status

            self.gid = gid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            currency = try container.decode(String.self, forKey: .currency)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var totalAmount: Int

        public var paymentDetails: [String: Any]

        public var currency: String

        public var orderDetails: [String: Any]

        public var status: String

        public var gid: String

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case paymentDetails = "payment_details"

            case currency

            case orderDetails = "order_details"

            case status

            case gid
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.totalAmount = totalAmount

            self.paymentDetails = paymentDetails

            self.currency = currency

            self.orderDetails = orderDetails

            self.status = status

            self.gid = gid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            currency = try container.decode(String.self, forKey: .currency)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)
        }
    }
}
