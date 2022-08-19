

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var timeout: Int?

        public var customerId: String

        public var method: String

        public var contact: String

        public var email: String

        public var orderId: String

        public var razorpayPaymentId: String?

        public var amount: Int

        public var currency: String

        public var merchantOrderId: String

        public var aggregator: String

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case timeout

            case customerId = "customer_id"

            case method

            case contact

            case email

            case orderId = "order_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case currency

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.timeout = timeout

            self.customerId = customerId

            self.method = method

            self.contact = contact

            self.email = email

            self.orderId = orderId

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}
