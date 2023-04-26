

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var merchantOrderId: String

        public var deviceId: String?

        public var currency: String

        public var razorpayPaymentId: String?

        public var timeout: Int?

        public var customerId: String

        public var email: String

        public var contact: String

        public var method: String

        public var vpa: String?

        public var orderId: String

        public var aggregator: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case timeout

            case customerId = "customer_id"

            case email

            case contact

            case method

            case vpa

            case orderId = "order_id"

            case aggregator

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.timeout = timeout

            self.customerId = customerId

            self.email = email

            self.contact = contact

            self.method = method

            self.vpa = vpa

            self.orderId = orderId

            self.aggregator = aggregator

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var merchantOrderId: String

        public var deviceId: String?

        public var currency: String

        public var razorpayPaymentId: String?

        public var timeout: Int?

        public var customerId: String

        public var email: String

        public var contact: String

        public var method: String

        public var vpa: String?

        public var orderId: String

        public var aggregator: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case timeout

            case customerId = "customer_id"

            case email

            case contact

            case method

            case vpa

            case orderId = "order_id"

            case aggregator

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.timeout = timeout

            self.customerId = customerId

            self.email = email

            self.contact = contact

            self.method = method

            self.vpa = vpa

            self.orderId = orderId

            self.aggregator = aggregator

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
