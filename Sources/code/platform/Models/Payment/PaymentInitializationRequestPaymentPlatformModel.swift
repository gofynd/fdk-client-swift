

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var email: String

        public var amount: Int

        public var timeout: Int?

        public var orderId: String

        public var aggregator: String

        public var deviceId: String?

        public var contact: String

        public var customerId: String

        public var merchantOrderId: String

        public var vpa: String?

        public var method: String

        public var currency: String

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case amount

            case timeout

            case orderId = "order_id"

            case aggregator

            case deviceId = "device_id"

            case contact

            case customerId = "customer_id"

            case merchantOrderId = "merchant_order_id"

            case vpa

            case method

            case currency

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.email = email

            self.amount = amount

            self.timeout = timeout

            self.orderId = orderId

            self.aggregator = aggregator

            self.deviceId = deviceId

            self.contact = contact

            self.customerId = customerId

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.method = method

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var email: String

        public var amount: Int

        public var timeout: Int?

        public var orderId: String

        public var aggregator: String

        public var deviceId: String?

        public var contact: String

        public var customerId: String

        public var merchantOrderId: String

        public var vpa: String?

        public var method: String

        public var currency: String

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case amount

            case timeout

            case orderId = "order_id"

            case aggregator

            case deviceId = "device_id"

            case contact

            case customerId = "customer_id"

            case merchantOrderId = "merchant_order_id"

            case vpa

            case method

            case currency

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.email = email

            self.amount = amount

            self.timeout = timeout

            self.orderId = orderId

            self.aggregator = aggregator

            self.deviceId = deviceId

            self.contact = contact

            self.customerId = customerId

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.method = method

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }
}
