

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var customerId: String

        public var currency: String

        public var method: String

        public var orderId: String

        public var email: String

        public var razorpayPaymentId: String?

        public var contact: String

        public var vpa: String?

        public var amount: Int

        public var merchantOrderId: String

        public var aggregator: String

        public var timeout: Int?

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case currency

            case method

            case orderId = "order_id"

            case email

            case razorpayPaymentId = "razorpay_payment_id"

            case contact

            case vpa

            case amount

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case timeout
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.customerId = customerId

            self.currency = currency

            self.method = method

            self.orderId = orderId

            self.email = email

            self.razorpayPaymentId = razorpayPaymentId

            self.contact = contact

            self.vpa = vpa

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.timeout = timeout
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            method = try container.decode(String.self, forKey: .method)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(timeout, forKey: .timeout)
        }
    }
}
