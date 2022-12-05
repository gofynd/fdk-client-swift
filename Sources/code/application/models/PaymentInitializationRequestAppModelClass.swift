

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var email: String

        public var amount: Int

        public var customerId: String

        public var currency: String

        public var aggregator: String

        public var merchantOrderId: String

        public var razorpayPaymentId: String?

        public var timeout: Int?

        public var contact: String

        public var orderId: String

        public var vpa: String?

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case email

            case amount

            case customerId = "customer_id"

            case currency

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case timeout

            case contact

            case orderId = "order_id"

            case vpa

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.email = email

            self.amount = amount

            self.customerId = customerId

            self.currency = currency

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.razorpayPaymentId = razorpayPaymentId

            self.timeout = timeout

            self.contact = contact

            self.orderId = orderId

            self.vpa = vpa

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

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

            contact = try container.decode(String.self, forKey: .contact)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
