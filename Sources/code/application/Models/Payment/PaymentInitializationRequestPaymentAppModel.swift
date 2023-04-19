

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var aggregator: String

        public var timeout: Int?

        public var customerId: String

        public var email: String

        public var orderId: String

        public var currency: String

        public var contact: String

        public var method: String

        public var razorpayPaymentId: String?

        public var amount: Int

        public var merchantOrderId: String

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case timeout

            case customerId = "customer_id"

            case email

            case orderId = "order_id"

            case currency

            case contact

            case method

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case merchantOrderId = "merchant_order_id"

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.aggregator = aggregator

            self.timeout = timeout

            self.customerId = customerId

            self.email = email

            self.orderId = orderId

            self.currency = currency

            self.contact = contact

            self.method = method

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            currency = try container.decode(String.self, forKey: .currency)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}
