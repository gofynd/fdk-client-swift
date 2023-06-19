

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var aggregator: String

        public var virtualId: String?

        public var aggregatorOrderId: String

        public var method: String

        public var timeout: Int

        public var merchantOrderId: String

        public var customerId: String

        public var razorpayPaymentId: String

        public var pollingUrl: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case virtualId = "virtual_id"

            case aggregatorOrderId = "aggregator_order_id"

            case method

            case timeout

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case pollingUrl = "polling_url"
        }

        public init(aggregator: String, aggregatorOrderId: String, customerId: String, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String, timeout: Int, virtualId: String? = nil) {
            self.aggregator = aggregator

            self.virtualId = virtualId

            self.aggregatorOrderId = aggregatorOrderId

            self.method = method

            self.timeout = timeout

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.pollingUrl = pollingUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            method = try container.decode(String.self, forKey: .method)

            timeout = try container.decode(Int.self, forKey: .timeout)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
        }
    }
}
