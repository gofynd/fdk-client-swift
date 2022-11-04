

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var merchantOrderId: String

        public var upiPollUrl: String?

        public var success: Bool

        public var pollingUrl: String

        public var bqrImage: String?

        public var amount: Int?

        public var timeout: Int?

        public var status: String?

        public var aggregatorOrderId: String?

        public var method: String

        public var currency: String?

        public var vpa: String?

        public var customerId: String?

        public var aggregator: String

        public var virtualId: String?

        public var razorpayPaymentId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case upiPollUrl = "upi_poll_url"

            case success

            case pollingUrl = "polling_url"

            case bqrImage = "bqr_image"

            case amount

            case timeout

            case status

            case aggregatorOrderId = "aggregator_order_id"

            case method

            case currency

            case vpa

            case customerId = "customer_id"

            case aggregator

            case virtualId = "virtual_id"

            case razorpayPaymentId = "razorpay_payment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.upiPollUrl = upiPollUrl

            self.success = success

            self.pollingUrl = pollingUrl

            self.bqrImage = bqrImage

            self.amount = amount

            self.timeout = timeout

            self.status = status

            self.aggregatorOrderId = aggregatorOrderId

            self.method = method

            self.currency = currency

            self.vpa = vpa

            self.customerId = customerId

            self.aggregator = aggregator

            self.virtualId = virtualId

            self.razorpayPaymentId = razorpayPaymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                currency = try container.decode(String.self, forKey: .currency)

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
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

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

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
        }
    }
}
