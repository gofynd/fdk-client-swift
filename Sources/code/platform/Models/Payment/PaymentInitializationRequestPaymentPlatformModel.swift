

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var merchantOrderId: String

        public var vpa: String?

        public var method: String

        public var deviceId: String?

        public var email: String

        public var timeout: Int?

        public var customerId: String

        public var amount: Double

        public var orderId: String

        public var aggregator: String

        public var currency: String

        public var razorpayPaymentId: String?

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case vpa

            case method

            case deviceId = "device_id"

            case email

            case timeout

            case customerId = "customer_id"

            case amount

            case orderId = "order_id"

            case aggregator

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case contact
        }

        public init(aggregator: String, amount: Double, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.method = method

            self.deviceId = deviceId

            self.email = email

            self.timeout = timeout

            self.customerId = customerId

            self.amount = amount

            self.orderId = orderId

            self.aggregator = aggregator

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

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

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Double.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(contact, forKey: .contact)
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

        public var vpa: String?

        public var method: String

        public var deviceId: String?

        public var email: String

        public var timeout: Int?

        public var customerId: String

        public var amount: Double

        public var orderId: String

        public var aggregator: String

        public var currency: String

        public var razorpayPaymentId: String?

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case vpa

            case method

            case deviceId = "device_id"

            case email

            case timeout

            case customerId = "customer_id"

            case amount

            case orderId = "order_id"

            case aggregator

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case contact
        }

        public init(aggregator: String, amount: Double, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.method = method

            self.deviceId = deviceId

            self.email = email

            self.timeout = timeout

            self.customerId = customerId

            self.amount = amount

            self.orderId = orderId

            self.aggregator = aggregator

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

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

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Double.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
