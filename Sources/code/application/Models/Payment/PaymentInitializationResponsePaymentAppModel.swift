

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var razorpayPaymentId: String?

        public var aggregatorOrderId: String?

        public var status: String?

        public var aggregator: String

        public var merchantOrderId: String

        public var vpa: String?

        public var success: Bool

        public var customerId: String?

        public var timeout: Int?

        public var upiPollUrl: String?

        public var amount: Int?

        public var method: String

        public var pollingUrl: String

        public var bqrImage: String?

        public var currency: String?

        public var virtualId: String?

        public enum CodingKeys: String, CodingKey {
            case razorpayPaymentId = "razorpay_payment_id"

            case aggregatorOrderId = "aggregator_order_id"

            case status

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case vpa

            case success

            case customerId = "customer_id"

            case timeout

            case upiPollUrl = "upi_poll_url"

            case amount

            case method

            case pollingUrl = "polling_url"

            case bqrImage = "bqr_image"

            case currency

            case virtualId = "virtual_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.razorpayPaymentId = razorpayPaymentId

            self.aggregatorOrderId = aggregatorOrderId

            self.status = status

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.success = success

            self.customerId = customerId

            self.timeout = timeout

            self.upiPollUrl = upiPollUrl

            self.amount = amount

            self.method = method

            self.pollingUrl = pollingUrl

            self.bqrImage = bqrImage

            self.currency = currency

            self.virtualId = virtualId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

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

            method = try container.decode(String.self, forKey: .method)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(virtualId, forKey: .virtualId)
        }
    }
}
