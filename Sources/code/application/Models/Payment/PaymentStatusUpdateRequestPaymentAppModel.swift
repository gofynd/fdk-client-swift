

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var orderId: String

        public var aggregator: String

        public var method: String

        public var customerId: String

        public var amount: Int

        public var currency: String

        public var merchantOrderId: String

        public var vpa: String?

        public var deviceId: String?

        public var status: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case orderId = "order_id"

            case aggregator

            case method

            case customerId = "customer_id"

            case amount

            case currency

            case merchantOrderId = "merchant_order_id"

            case vpa

            case deviceId = "device_id"

            case status

            case email
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.contact = contact

            self.orderId = orderId

            self.aggregator = aggregator

            self.method = method

            self.customerId = customerId

            self.amount = amount

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.deviceId = deviceId

            self.status = status

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

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

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
