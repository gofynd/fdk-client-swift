

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var currency: String?

        public var merchantOrderId: String

        public var aggregatorOrderId: String?

        public var razorpayPaymentId: String?

        public var success: Bool

        public var timeout: Int?

        public var pollingUrl: String

        public var virtualId: String?

        public var status: String?

        public var vpa: String?

        public var amount: Int?

        public var bqrImage: String?

        public var upiPollUrl: String?

        public var method: String

        public var aggregator: String

        public var customerId: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case merchantOrderId = "merchant_order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case success

            case timeout

            case pollingUrl = "polling_url"

            case virtualId = "virtual_id"

            case status

            case vpa

            case amount

            case bqrImage = "bqr_image"

            case upiPollUrl = "upi_poll_url"

            case method

            case aggregator

            case customerId = "customer_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.aggregatorOrderId = aggregatorOrderId

            self.razorpayPaymentId = razorpayPaymentId

            self.success = success

            self.timeout = timeout

            self.pollingUrl = pollingUrl

            self.virtualId = virtualId

            self.status = status

            self.vpa = vpa

            self.amount = amount

            self.bqrImage = bqrImage

            self.upiPollUrl = upiPollUrl

            self.method = method

            self.aggregator = aggregator

            self.customerId = customerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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

            success = try container.decode(Bool.self, forKey: .success)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

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
                vpa = try container.decode(String.self, forKey: .vpa)

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
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

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

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(customerId, forKey: .customerId)
        }
    }
}
