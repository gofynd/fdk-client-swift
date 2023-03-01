

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var method: String

        public var vpa: String?

        public var razorpayPaymentId: String?

        public var merchantOrderId: String

        public var orderId: String

        public var contact: String

        public var email: String

        public var currency: String

        public var deviceId: String?

        public var customerId: String

        public var aggregator: String

        public var timeout: Int?

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case method

            case vpa

            case razorpayPaymentId = "razorpay_payment_id"

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case contact

            case email

            case currency

            case deviceId = "device_id"

            case customerId = "customer_id"

            case aggregator

            case timeout

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.method = method

            self.vpa = vpa

            self.razorpayPaymentId = razorpayPaymentId

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.contact = contact

            self.email = email

            self.currency = currency

            self.deviceId = deviceId

            self.customerId = customerId

            self.aggregator = aggregator

            self.timeout = timeout

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            method = try container.decode(String.self, forKey: .method)

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

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

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
