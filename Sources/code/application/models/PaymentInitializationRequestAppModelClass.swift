

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var merchantOrderId: String

        public var aggregator: String

        public var orderId: String

        public var vpa: String?

        public var timeout: Int?

        public var customerId: String

        public var amount: Int

        public var email: String

        public var method: String

        public var currency: String

        public var razorpayPaymentId: String?

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case aggregator

            case orderId = "order_id"

            case vpa

            case timeout

            case customerId = "customer_id"

            case amount

            case email

            case method

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.orderId = orderId

            self.vpa = vpa

            self.timeout = timeout

            self.customerId = customerId

            self.amount = amount

            self.email = email

            self.method = method

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Int.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
