

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var orderId: String

        public var vpa: String?

        public var razorpayPaymentId: String?

        public var aggregator: String

        public var currency: String

        public var merchantOrderId: String

        public var email: String

        public var method: String

        public var customerId: String

        public var contact: String

        public var timeout: Int?

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case vpa

            case razorpayPaymentId = "razorpay_payment_id"

            case aggregator

            case currency

            case merchantOrderId = "merchant_order_id"

            case email

            case method

            case customerId = "customer_id"

            case contact

            case timeout

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.orderId = orderId

            self.vpa = vpa

            self.razorpayPaymentId = razorpayPaymentId

            self.aggregator = aggregator

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.method = method

            self.customerId = customerId

            self.contact = contact

            self.timeout = timeout

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            contact = try container.decode(String.self, forKey: .contact)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
