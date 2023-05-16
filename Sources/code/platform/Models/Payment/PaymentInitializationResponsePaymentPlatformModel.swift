

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var timeout: Int?

        public var contact: String?

        public var virtualId: String?

        public var aggregator: String

        public var status: String?

        public var paymentId: String?

        public var upiPollUrl: String?

        public var deviceId: String?

        public var success: Bool

        public var customerId: String?

        public var email: String?

        public var amount: Int?

        public var merchantOrderId: String

        public var bqrImage: String?

        public var currency: String?

        public var razorpayPaymentId: String?

        public var pollingUrl: String

        public var method: String

        public var orderId: String?

        public var aggregatorOrderId: String?

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case timeout

            case contact

            case virtualId = "virtual_id"

            case aggregator

            case status

            case paymentId = "payment_id"

            case upiPollUrl = "upi_poll_url"

            case deviceId = "device_id"

            case success

            case customerId = "customer_id"

            case email

            case amount

            case merchantOrderId = "merchant_order_id"

            case bqrImage = "bqr_image"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case pollingUrl = "polling_url"

            case method

            case orderId = "order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case vpa
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.timeout = timeout

            self.contact = contact

            self.virtualId = virtualId

            self.aggregator = aggregator

            self.status = status

            self.paymentId = paymentId

            self.upiPollUrl = upiPollUrl

            self.deviceId = deviceId

            self.success = success

            self.customerId = customerId

            self.email = email

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.bqrImage = bqrImage

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.pollingUrl = pollingUrl

            self.method = method

            self.orderId = orderId

            self.aggregatorOrderId = aggregatorOrderId

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

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

            success = try container.decode(Bool.self, forKey: .success)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

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

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            method = try container.decode(String.self, forKey: .method)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var timeout: Int?

        public var contact: String?

        public var virtualId: String?

        public var aggregator: String

        public var status: String?

        public var paymentId: String?

        public var upiPollUrl: String?

        public var deviceId: String?

        public var success: Bool

        public var customerId: String?

        public var email: String?

        public var amount: Int?

        public var merchantOrderId: String

        public var bqrImage: String?

        public var currency: String?

        public var razorpayPaymentId: String?

        public var pollingUrl: String

        public var method: String

        public var orderId: String?

        public var aggregatorOrderId: String?

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case timeout

            case contact

            case virtualId = "virtual_id"

            case aggregator

            case status

            case paymentId = "payment_id"

            case upiPollUrl = "upi_poll_url"

            case deviceId = "device_id"

            case success

            case customerId = "customer_id"

            case email

            case amount

            case merchantOrderId = "merchant_order_id"

            case bqrImage = "bqr_image"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case pollingUrl = "polling_url"

            case method

            case orderId = "order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case vpa
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.timeout = timeout

            self.contact = contact

            self.virtualId = virtualId

            self.aggregator = aggregator

            self.status = status

            self.paymentId = paymentId

            self.upiPollUrl = upiPollUrl

            self.deviceId = deviceId

            self.success = success

            self.customerId = customerId

            self.email = email

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.bqrImage = bqrImage

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.pollingUrl = pollingUrl

            self.method = method

            self.orderId = orderId

            self.aggregatorOrderId = aggregatorOrderId

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

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

            success = try container.decode(Bool.self, forKey: .success)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

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

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            method = try container.decode(String.self, forKey: .method)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}
