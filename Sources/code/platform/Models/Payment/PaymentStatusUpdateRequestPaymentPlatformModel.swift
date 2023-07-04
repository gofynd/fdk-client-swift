

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var amount: Int

        public var vpa: String?

        public var method: String

        public var status: String

        public var customerId: String

        public var email: String

        public var contact: String

        public var orderId: String

        public var currency: String

        public var aggregator: String

        public var deviceId: String?

        public var merchantTransactionId: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case vpa

            case method

            case status

            case customerId = "customer_id"

            case email

            case contact

            case orderId = "order_id"

            case currency

            case aggregator

            case deviceId = "device_id"

            case merchantTransactionId = "merchant_transaction_id"

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.amount = amount

            self.vpa = vpa

            self.method = method

            self.status = status

            self.customerId = customerId

            self.email = email

            self.contact = contact

            self.orderId = orderId

            self.currency = currency

            self.aggregator = aggregator

            self.deviceId = deviceId

            self.merchantTransactionId = merchantTransactionId

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            orderId = try container.decode(String.self, forKey: .orderId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

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
        public var amount: Int

        public var vpa: String?

        public var method: String

        public var status: String

        public var customerId: String

        public var email: String

        public var contact: String

        public var orderId: String

        public var currency: String

        public var aggregator: String

        public var deviceId: String?

        public var merchantTransactionId: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case vpa

            case method

            case status

            case customerId = "customer_id"

            case email

            case contact

            case orderId = "order_id"

            case currency

            case aggregator

            case deviceId = "device_id"

            case merchantTransactionId = "merchant_transaction_id"

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.amount = amount

            self.vpa = vpa

            self.method = method

            self.status = status

            self.customerId = customerId

            self.email = email

            self.contact = contact

            self.orderId = orderId

            self.currency = currency

            self.aggregator = aggregator

            self.deviceId = deviceId

            self.merchantTransactionId = merchantTransactionId

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            orderId = try container.decode(String.self, forKey: .orderId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
