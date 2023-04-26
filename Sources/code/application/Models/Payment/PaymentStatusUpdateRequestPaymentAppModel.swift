

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var vpa: String?

        public var customerId: String

        public var status: String

        public var deviceId: String?

        public var email: String

        public var method: String

        public var orderId: String

        public var merchantOrderId: String

        public var contact: String

        public var amount: Int

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case vpa

            case customerId = "customer_id"

            case status

            case deviceId = "device_id"

            case email

            case method

            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case contact

            case amount

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.status = status

            self.deviceId = deviceId

            self.email = email

            self.method = method

            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.amount = amount

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            status = try container.decode(String.self, forKey: .status)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
