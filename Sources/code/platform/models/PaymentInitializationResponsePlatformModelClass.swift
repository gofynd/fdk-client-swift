

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var status: String?

        public var upiPollUrl: String?

        public var amount: Int?

        public var pollingUrl: String

        public var aggregatorOrderId: String?

        public var virtualId: String?

        public var timeout: Int?

        public var razorpayPaymentId: String?

        public var customerId: String?

        public var bqrImage: String?

        public var deviceId: String?

        public var aggregator: String

        public var success: Bool

        public var vpa: String?

        public var currency: String?

        public var merchantOrderId: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case status

            case upiPollUrl = "upi_poll_url"

            case amount

            case pollingUrl = "polling_url"

            case aggregatorOrderId = "aggregator_order_id"

            case virtualId = "virtual_id"

            case timeout

            case razorpayPaymentId = "razorpay_payment_id"

            case customerId = "customer_id"

            case bqrImage = "bqr_image"

            case deviceId = "device_id"

            case aggregator

            case success

            case vpa

            case currency

            case merchantOrderId = "merchant_order_id"

            case method
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.status = status

            self.upiPollUrl = upiPollUrl

            self.amount = amount

            self.pollingUrl = pollingUrl

            self.aggregatorOrderId = aggregatorOrderId

            self.virtualId = virtualId

            self.timeout = timeout

            self.razorpayPaymentId = razorpayPaymentId

            self.customerId = customerId

            self.bqrImage = bqrImage

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.success = success

            self.vpa = vpa

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

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
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

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

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}