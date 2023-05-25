

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var merchantOrderId: String

        public var contact: String

        public var method: String

        public var status: String

        public var email: String

        public var orderId: String

        public var amount: Int

        public var vpa: String?

        public var customerId: String

        public var currency: String

        public var aggregator: String

        public var merchantTransactionId: String

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case contact

            case method

            case status

            case email

            case orderId = "order_id"

            case amount

            case vpa

            case customerId = "customer_id"

            case currency

            case aggregator

            case merchantTransactionId = "merchant_transaction_id"

            case deviceId = "device_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.method = method

            self.status = status

            self.email = email

            self.orderId = orderId

            self.amount = amount

            self.vpa = vpa

            self.customerId = customerId

            self.currency = currency

            self.aggregator = aggregator

            self.merchantTransactionId = merchantTransactionId

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

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
        public var merchantOrderId: String

        public var contact: String

        public var method: String

        public var status: String

        public var email: String

        public var orderId: String

        public var amount: Int

        public var vpa: String?

        public var customerId: String

        public var currency: String

        public var aggregator: String

        public var merchantTransactionId: String

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case contact

            case method

            case status

            case email

            case orderId = "order_id"

            case amount

            case vpa

            case customerId = "customer_id"

            case currency

            case aggregator

            case merchantTransactionId = "merchant_transaction_id"

            case deviceId = "device_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.method = method

            self.status = status

            self.email = email

            self.orderId = orderId

            self.amount = amount

            self.vpa = vpa

            self.customerId = customerId

            self.currency = currency

            self.aggregator = aggregator

            self.merchantTransactionId = merchantTransactionId

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encode(deviceId, forKey: .deviceId)
        }
    }
}
