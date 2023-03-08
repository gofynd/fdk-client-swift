

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var orderId: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var amount: Int

        public var customerId: String

        public var aggregator: String

        public var contact: String

        public var status: String

        public var method: String

        public var email: String

        public var currency: String

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case amount

            case customerId = "customer_id"

            case aggregator

            case contact

            case status

            case method

            case email

            case currency

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.amount = amount

            self.customerId = customerId

            self.aggregator = aggregator

            self.contact = contact

            self.status = status

            self.method = method

            self.email = email

            self.currency = currency

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var orderId: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var amount: Int

        public var customerId: String

        public var aggregator: String

        public var contact: String

        public var status: String

        public var method: String

        public var email: String

        public var currency: String

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case amount

            case customerId = "customer_id"

            case aggregator

            case contact

            case status

            case method

            case email

            case currency

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.amount = amount

            self.customerId = customerId

            self.aggregator = aggregator

            self.contact = contact

            self.status = status

            self.method = method

            self.email = email

            self.currency = currency

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}
