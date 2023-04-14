

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var vpa: String?

        public var bqrImage: String?

        public var aggregator: String

        public var razorpayPaymentId: String?

        public var method: String

        public var upiPollUrl: String?

        public var pollingUrl: String

        public var status: String?

        public var success: Bool

        public var merchantOrderId: String

        public var aggregatorOrderId: String?

        public var amount: Int?

        public var virtualId: String?

        public var deviceId: String?

        public var currency: String?

        public var customerId: String?

        public var timeout: Int?

        public enum CodingKeys: String, CodingKey {
            case vpa

            case bqrImage = "bqr_image"

            case aggregator

            case razorpayPaymentId = "razorpay_payment_id"

            case method

            case upiPollUrl = "upi_poll_url"

            case pollingUrl = "polling_url"

            case status

            case success

            case merchantOrderId = "merchant_order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case amount

            case virtualId = "virtual_id"

            case deviceId = "device_id"

            case currency

            case customerId = "customer_id"

            case timeout
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.vpa = vpa

            self.bqrImage = bqrImage

            self.aggregator = aggregator

            self.razorpayPaymentId = razorpayPaymentId

            self.method = method

            self.upiPollUrl = upiPollUrl

            self.pollingUrl = pollingUrl

            self.status = status

            self.success = success

            self.merchantOrderId = merchantOrderId

            self.aggregatorOrderId = aggregatorOrderId

            self.amount = amount

            self.virtualId = virtualId

            self.deviceId = deviceId

            self.currency = currency

            self.customerId = customerId

            self.timeout = timeout
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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
                currency = try container.decode(String.self, forKey: .currency)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(timeout, forKey: .timeout)
        }
    }
}
