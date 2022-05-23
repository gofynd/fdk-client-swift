

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var orderId: String

        public var aggregator: String

        public var currency: String

        public var timeout: Int?

        public var contact: String

        public var razorpayPaymentId: String?

        public var customerId: String

        public var method: String

        public var email: String

        public var merchantOrderId: String

        public var amount: Int

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case aggregator

            case currency

            case timeout

            case contact

            case razorpayPaymentId = "razorpay_payment_id"

            case customerId = "customer_id"

            case method

            case email

            case merchantOrderId = "merchant_order_id"

            case amount

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.orderId = orderId

            self.aggregator = aggregator

            self.currency = currency

            self.timeout = timeout

            self.contact = contact

            self.razorpayPaymentId = razorpayPaymentId

            self.customerId = customerId

            self.method = method

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}
