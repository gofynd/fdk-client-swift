

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var merchantOrderId: String

        public var amount: Int

        public var method: String

        public var status: String

        public var orderId: String

        public var customerId: String

        public var contact: String

        public var vpa: String?

        public var email: String

        public var currency: String

        public var deviceId: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case merchantOrderId = "merchant_order_id"

            case amount

            case method

            case status

            case orderId = "order_id"

            case customerId = "customer_id"

            case contact

            case vpa

            case email

            case currency

            case deviceId = "device_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.method = method

            self.status = status

            self.orderId = orderId

            self.customerId = customerId

            self.contact = contact

            self.vpa = vpa

            self.email = email

            self.currency = currency

            self.deviceId = deviceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Int.self, forKey: .amount)

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            contact = try container.decode(String.self, forKey: .contact)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(deviceId, forKey: .deviceId)
        }
    }
}
