

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var success: Bool

        public var customerId: String?

        public var vpa: String?

        public var aggregatorOrderId: String?

        public var timeout: Int?

        public var bqrImage: String?

        public var pollingUrl: String

        public var amount: Int?

        public var razorpayPaymentId: String?

        public var currency: String?

        public var aggregator: String

        public var merchantOrderId: String

        public var method: String

        public var upiPollUrl: String?

        public var status: String?

        public var virtualId: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case customerId = "customer_id"

            case vpa

            case aggregatorOrderId = "aggregator_order_id"

            case timeout

            case bqrImage = "bqr_image"

            case pollingUrl = "polling_url"

            case amount

            case razorpayPaymentId = "razorpay_payment_id"

            case currency

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case method

            case upiPollUrl = "upi_poll_url"

            case status

            case virtualId = "virtual_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.success = success

            self.customerId = customerId

            self.vpa = vpa

            self.aggregatorOrderId = aggregatorOrderId

            self.timeout = timeout

            self.bqrImage = bqrImage

            self.pollingUrl = pollingUrl

            self.amount = amount

            self.razorpayPaymentId = razorpayPaymentId

            self.currency = currency

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.method = method

            self.upiPollUrl = upiPollUrl

            self.status = status

            self.virtualId = virtualId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

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

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

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
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            method = try container.decode(String.self, forKey: .method)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(virtualId, forKey: .virtualId)
        }
    }
}
