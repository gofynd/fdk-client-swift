

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var email: String

        public var customerId: String

        public var aggregator: String

        public var orderId: String

        public var amount: Int

        public var currency: String

        public var method: String

        public var contact: String

        public var merchantOrderId: String

        public var vpa: String?

        public var merchantTransactionId: String

        public var status: String

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case customerId = "customer_id"

            case aggregator

            case orderId = "order_id"

            case amount

            case currency

            case method

            case contact

            case merchantOrderId = "merchant_order_id"

            case vpa

            case merchantTransactionId = "merchant_transaction_id"

            case status

            case deviceId = "device_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.email = email

            self.customerId = customerId

            self.aggregator = aggregator

            self.orderId = orderId

            self.amount = amount

            self.currency = currency

            self.method = method

            self.contact = contact

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.merchantTransactionId = merchantTransactionId

            self.status = status

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            status = try container.decode(String.self, forKey: .status)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deviceId, forKey: .deviceId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var email: String

        public var customerId: String

        public var aggregator: String

        public var orderId: String

        public var amount: Int

        public var currency: String

        public var method: String

        public var contact: String

        public var merchantOrderId: String

        public var vpa: String?

        public var merchantTransactionId: String

        public var status: String

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case customerId = "customer_id"

            case aggregator

            case orderId = "order_id"

            case amount

            case currency

            case method

            case contact

            case merchantOrderId = "merchant_order_id"

            case vpa

            case merchantTransactionId = "merchant_transaction_id"

            case status

            case deviceId = "device_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.email = email

            self.customerId = customerId

            self.aggregator = aggregator

            self.orderId = orderId

            self.amount = amount

            self.currency = currency

            self.method = method

            self.contact = contact

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.merchantTransactionId = merchantTransactionId

            self.status = status

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            status = try container.decode(String.self, forKey: .status)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deviceId, forKey: .deviceId)
        }
    }
}
