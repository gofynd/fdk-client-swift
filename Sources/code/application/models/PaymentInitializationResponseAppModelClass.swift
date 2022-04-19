import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var aggregator: String

        public var aggregatorOrderId: String?

        public var timeout: Int?

        public var method: String

        public var bqrImage: String?

        public var pollingUrl: String

        public var razorpayPaymentId: String?

        public var virtualId: String?

        public var status: String?

        public var merchantOrderId: String

        public var vpa: String?

        public var amount: Int?

        public var success: Bool

        public var upiPollUrl: String?

        public var customerId: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case aggregatorOrderId = "aggregator_order_id"

            case timeout

            case method

            case bqrImage = "bqr_image"

            case pollingUrl = "polling_url"

            case razorpayPaymentId = "razorpay_payment_id"

            case virtualId = "virtual_id"

            case status

            case merchantOrderId = "merchant_order_id"

            case vpa

            case amount

            case success

            case upiPollUrl = "upi_poll_url"

            case customerId = "customer_id"

            case currency
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.aggregator = aggregator

            self.aggregatorOrderId = aggregatorOrderId

            self.timeout = timeout

            self.method = method

            self.bqrImage = bqrImage

            self.pollingUrl = pollingUrl

            self.razorpayPaymentId = razorpayPaymentId

            self.virtualId = virtualId

            self.status = status

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.amount = amount

            self.success = success

            self.upiPollUrl = upiPollUrl

            self.customerId = customerId

            self.currency = currency
        }

        public func duplicate() -> PaymentInitializationResponse {
            let dict = self.dictionary!
            let copy = PaymentInitializationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

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

            method = try container.decode(String.self, forKey: .method)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

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

            success = try container.decode(Bool.self, forKey: .success)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

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
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(currency, forKey: .currency)
        }
    }
}
