

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var vpa: String?

        public var customerId: String?

        public var method: String

        public var upiPollUrl: String?

        public var razorpayPaymentId: String?

        public var amount: Int?

        public var success: Bool

        public var timeout: Int?

        public var status: String?

        public var pollingUrl: String

        public var merchantOrderId: String

        public var aggregator: String

        public var bqrImage: String?

        public var virtualId: String?

        public var currency: String?

        public var aggregatorOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case vpa

            case customerId = "customer_id"

            case method

            case upiPollUrl = "upi_poll_url"

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case success

            case timeout

            case status

            case pollingUrl = "polling_url"

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case bqrImage = "bqr_image"

            case virtualId = "virtual_id"

            case currency

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.vpa = vpa

            self.customerId = customerId

            self.method = method

            self.upiPollUrl = upiPollUrl

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.success = success

            self.timeout = timeout

            self.status = status

            self.pollingUrl = pollingUrl

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.bqrImage = bqrImage

            self.virtualId = virtualId

            self.currency = currency

            self.aggregatorOrderId = aggregatorOrderId
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
                customerId = try container.decode(String.self, forKey: .customerId)

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

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

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

            success = try container.decode(Bool.self, forKey: .success)

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

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

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
                currency = try container.decode(String.self, forKey: .currency)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
