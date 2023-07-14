

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var customerId: String

        public var merchantTransactionId: String

        public var deviceId: String?

        public var currency: String

        public var orderId: String

        public var method: String

        public var email: String

        public var vpa: String?

        public var aggregator: String

        public var amount: Int

        public var contact: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case deviceId = "device_id"

            case currency

            case orderId = "order_id"

            case method

            case email

            case vpa

            case aggregator

            case amount

            case contact

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.status = status

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.deviceId = deviceId

            self.currency = currency

            self.orderId = orderId

            self.method = method

            self.email = email

            self.vpa = vpa

            self.aggregator = aggregator

            self.amount = amount

            self.contact = contact

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var customerId: String

        public var merchantTransactionId: String

        public var deviceId: String?

        public var currency: String

        public var orderId: String

        public var method: String

        public var email: String

        public var vpa: String?

        public var aggregator: String

        public var amount: Int

        public var contact: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case deviceId = "device_id"

            case currency

            case orderId = "order_id"

            case method

            case email

            case vpa

            case aggregator

            case amount

            case contact

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.status = status

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.deviceId = deviceId

            self.currency = currency

            self.orderId = orderId

            self.method = method

            self.email = email

            self.vpa = vpa

            self.aggregator = aggregator

            self.amount = amount

            self.contact = contact

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
