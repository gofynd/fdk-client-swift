

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var orderId: String

        public var deviceId: String?

        public var aggregator: String

        public var method: String

        public var merchantOrderId: String

        public var customerId: String

        public var razorpayPaymentId: String?

        public var amount: Int

        public var vpa: String?

        public var email: String

        public var timeout: Int?

        public var contact: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case deviceId = "device_id"

            case aggregator

            case method

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case vpa

            case email

            case timeout

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.orderId = orderId

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.vpa = vpa

            self.email = email

            self.timeout = timeout

            self.contact = contact

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

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

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var orderId: String

        public var deviceId: String?

        public var aggregator: String

        public var method: String

        public var merchantOrderId: String

        public var customerId: String

        public var razorpayPaymentId: String?

        public var amount: Int

        public var vpa: String?

        public var email: String

        public var timeout: Int?

        public var contact: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case deviceId = "device_id"

            case aggregator

            case method

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case vpa

            case email

            case timeout

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.orderId = orderId

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.vpa = vpa

            self.email = email

            self.timeout = timeout

            self.contact = contact

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

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

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
