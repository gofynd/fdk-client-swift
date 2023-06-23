

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var amount: Int

        public var currency: String

        public var email: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var status: String

        public var aggregator: String

        public var vpa: String?

        public var customerId: String

        public var merchantTransactionId: String

        public var orderId: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case amount

            case currency

            case email

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case status

            case aggregator

            case vpa

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case orderId = "order_id"

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.contact = contact

            self.amount = amount

            self.currency = currency

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.status = status

            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.orderId = orderId

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var amount: Int

        public var currency: String

        public var email: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var status: String

        public var aggregator: String

        public var vpa: String?

        public var customerId: String

        public var merchantTransactionId: String

        public var orderId: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case amount

            case currency

            case email

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case status

            case aggregator

            case vpa

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case orderId = "order_id"

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.contact = contact

            self.amount = amount

            self.currency = currency

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.status = status

            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.orderId = orderId

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
