

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var orderId: String?

        public var deviceId: String?

        public var aggregator: String

        public var method: String

        public var merchantOrderId: String

        public var customerId: String

        public var merchantTransactionId: String

        public var status: String

        public var paymentId: String?

        public var amount: Int

        public var razorpayPaymentId: String?

        public var vpa: String?

        public var email: String?

        public var contact: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case deviceId = "device_id"

            case aggregator

            case method

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case status

            case paymentId = "payment_id"

            case amount

            case razorpayPaymentId = "razorpay_payment_id"

            case vpa

            case email

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String? = nil, currency: String? = nil, customerId: String, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String? = nil, paymentId: String? = nil, razorpayPaymentId: String? = nil, status: String, vpa: String? = nil) {
            self.orderId = orderId

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.status = status

            self.paymentId = paymentId

            self.amount = amount

            self.razorpayPaymentId = razorpayPaymentId

            self.vpa = vpa

            self.email = email

            self.contact = contact

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            status = try container.decode(String.self, forKey: .status)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var orderId: String?

        public var deviceId: String?

        public var aggregator: String

        public var method: String

        public var merchantOrderId: String

        public var customerId: String

        public var merchantTransactionId: String

        public var status: String

        public var paymentId: String?

        public var amount: Int

        public var razorpayPaymentId: String?

        public var vpa: String?

        public var email: String?

        public var contact: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case deviceId = "device_id"

            case aggregator

            case method

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case status

            case paymentId = "payment_id"

            case amount

            case razorpayPaymentId = "razorpay_payment_id"

            case vpa

            case email

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String? = nil, currency: String? = nil, customerId: String, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String? = nil, paymentId: String? = nil, razorpayPaymentId: String? = nil, status: String, vpa: String? = nil) {
            self.orderId = orderId

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.status = status

            self.paymentId = paymentId

            self.amount = amount

            self.razorpayPaymentId = razorpayPaymentId

            self.vpa = vpa

            self.email = email

            self.contact = contact

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            status = try container.decode(String.self, forKey: .status)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
