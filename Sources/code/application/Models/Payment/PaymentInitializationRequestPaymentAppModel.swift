

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var currency: String

        public var email: String

        public var amount: Int

        public var vpa: String?

        public var merchantOrderId: String

        public var razorpayPaymentId: String?

        public var orderId: String

        public var method: String

        public var customerId: String

        public var timeout: Int?

        public var aggregator: String

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case email

            case amount

            case vpa

            case merchantOrderId = "merchant_order_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case orderId = "order_id"

            case method

            case customerId = "customer_id"

            case timeout

            case aggregator

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.currency = currency

            self.email = email

            self.amount = amount

            self.vpa = vpa

            self.merchantOrderId = merchantOrderId

            self.razorpayPaymentId = razorpayPaymentId

            self.orderId = orderId

            self.method = method

            self.customerId = customerId

            self.timeout = timeout

            self.aggregator = aggregator

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
