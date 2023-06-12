

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var bqrImage: String?

        public var method: String

        public var amount: Int?

        public var virtualId: String?

        public var deviceId: String?

        public var status: String?

        public var customerId: String?

        public var upiPollUrl: String?

        public var timeout: Int?

        public var pollingUrl: String

        public var aggregator: String

        public var merchantOrderId: String

        public var success: Bool

        public var email: String?

        public var paymentId: String?

        public var contact: String?

        public var vpa: String?

        public var aggregatorOrderId: String?

        public var orderId: String?

        public var currency: String?

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case bqrImage = "bqr_image"

            case method

            case amount

            case virtualId = "virtual_id"

            case deviceId = "device_id"

            case status

            case customerId = "customer_id"

            case upiPollUrl = "upi_poll_url"

            case timeout

            case pollingUrl = "polling_url"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case success

            case email

            case paymentId = "payment_id"

            case contact

            case vpa

            case aggregatorOrderId = "aggregator_order_id"

            case orderId = "order_id"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.bqrImage = bqrImage

            self.method = method

            self.amount = amount

            self.virtualId = virtualId

            self.deviceId = deviceId

            self.status = status

            self.customerId = customerId

            self.upiPollUrl = upiPollUrl

            self.timeout = timeout

            self.pollingUrl = pollingUrl

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.success = success

            self.email = email

            self.paymentId = paymentId

            self.contact = contact

            self.vpa = vpa

            self.aggregatorOrderId = aggregatorOrderId

            self.orderId = orderId

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

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

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                email = try container.decode(String.self, forKey: .email)

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
                contact = try container.decode(String.self, forKey: .contact)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var bqrImage: String?

        public var method: String

        public var amount: Int?

        public var virtualId: String?

        public var deviceId: String?

        public var status: String?

        public var customerId: String?

        public var upiPollUrl: String?

        public var timeout: Int?

        public var pollingUrl: String

        public var aggregator: String

        public var merchantOrderId: String

        public var success: Bool

        public var email: String?

        public var paymentId: String?

        public var contact: String?

        public var vpa: String?

        public var aggregatorOrderId: String?

        public var orderId: String?

        public var currency: String?

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case bqrImage = "bqr_image"

            case method

            case amount

            case virtualId = "virtual_id"

            case deviceId = "device_id"

            case status

            case customerId = "customer_id"

            case upiPollUrl = "upi_poll_url"

            case timeout

            case pollingUrl = "polling_url"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case success

            case email

            case paymentId = "payment_id"

            case contact

            case vpa

            case aggregatorOrderId = "aggregator_order_id"

            case orderId = "order_id"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.bqrImage = bqrImage

            self.method = method

            self.amount = amount

            self.virtualId = virtualId

            self.deviceId = deviceId

            self.status = status

            self.customerId = customerId

            self.upiPollUrl = upiPollUrl

            self.timeout = timeout

            self.pollingUrl = pollingUrl

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.success = success

            self.email = email

            self.paymentId = paymentId

            self.contact = contact

            self.vpa = vpa

            self.aggregatorOrderId = aggregatorOrderId

            self.orderId = orderId

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

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

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                email = try container.decode(String.self, forKey: .email)

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
                contact = try container.decode(String.self, forKey: .contact)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }
}
