

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateRequestSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateRequestSerializer: Codable {
        public var gid: String

        public var paymentDetails: [String: Any]

        public var orderDetails: [String: Any]

        public var totalAmount: Int

        public var currency: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case gid

            case paymentDetails = "payment_details"

            case orderDetails = "order_details"

            case totalAmount = "total_amount"

            case currency

            case status
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.gid = gid

            self.paymentDetails = paymentDetails

            self.orderDetails = orderDetails

            self.totalAmount = totalAmount

            self.currency = currency

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)
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

        public var paymentDetails: [String: Any]

        public var orderDetails: [String: Any]

        public var totalAmount: Int

        public var currency: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case gid

            case paymentDetails = "payment_details"

            case orderDetails = "order_details"

            case totalAmount = "total_amount"

            case currency

            case status
        }

        public init(currency: String, gid: String, orderDetails: [String: Any], paymentDetails: [String: Any], status: String, totalAmount: Int) {
            self.gid = gid

            self.paymentDetails = paymentDetails

            self.orderDetails = orderDetails

            self.totalAmount = totalAmount

            self.currency = currency

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            paymentDetails = try container.decode([String: Any].self, forKey: .paymentDetails)

            orderDetails = try container.decode([String: Any].self, forKey: .orderDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
