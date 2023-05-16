

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var amount: Int

        public var contact: String

        public var orderId: String

        public var merchantOrderId: String

        public var currency: String

        public var vpa: String?

        public var deviceId: String?

        public var aggregator: String

        public var timeout: Int?

        public var customerId: String

        public var razorpayPaymentId: String?

        public var email: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case contact

            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case currency

            case vpa

            case deviceId = "device_id"

            case aggregator

            case timeout

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case email

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.amount = amount

            self.contact = contact

            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.vpa = vpa

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.timeout = timeout

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.email = email

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
