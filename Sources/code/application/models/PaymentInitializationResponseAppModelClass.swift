

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var status: String?

        public var vpa: String?

        public var bqrImage: String?

        public var currency: String?

        public var aggregator: String

        public var upiPollUrl: String?

        public var virtualId: String?

        public var method: String

        public var aggregatorOrderId: String?

        public var customerId: String?

        public var pollingUrl: String

        public var success: Bool

        public var razorpayPaymentId: String?

        public var timeout: Int?

        public var merchantOrderId: String

        public var amount: Int?

        public enum CodingKeys: String, CodingKey {
            case status

            case vpa

            case bqrImage = "bqr_image"

            case currency

            case aggregator

            case upiPollUrl = "upi_poll_url"

            case virtualId = "virtual_id"

            case method

            case aggregatorOrderId = "aggregator_order_id"

            case customerId = "customer_id"

            case pollingUrl = "polling_url"

            case success

            case razorpayPaymentId = "razorpay_payment_id"

            case timeout

            case merchantOrderId = "merchant_order_id"

            case amount
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.status = status

            self.vpa = vpa

            self.bqrImage = bqrImage

            self.currency = currency

            self.aggregator = aggregator

            self.upiPollUrl = upiPollUrl

            self.virtualId = virtualId

            self.method = method

            self.aggregatorOrderId = aggregatorOrderId

            self.customerId = customerId

            self.pollingUrl = pollingUrl

            self.success = success

            self.razorpayPaymentId = razorpayPaymentId

            self.timeout = timeout

            self.merchantOrderId = merchantOrderId

            self.amount = amount
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

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

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

            method = try container.decode(String.self, forKey: .method)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            success = try container.decode(Bool.self, forKey: .success)

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
