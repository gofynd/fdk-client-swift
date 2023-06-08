

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: MultiTenderPaymentMeta
         Used By: Payment
     */

    class MultiTenderPaymentMeta: Codable {
        public var extraMeta: [String: Any]?

        public var currentStatus: String?

        public var paymentId: String?

        public var paymentGateway: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case paymentGateway = "payment_gateway"

            case orderId = "order_id"
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil) {
            self.extraMeta = extraMeta

            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.paymentGateway = paymentGateway

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: MultiTenderPaymentMeta
         Used By: Payment
     */

    class MultiTenderPaymentMeta: Codable {
        public var extraMeta: [String: Any]?

        public var currentStatus: String?

        public var paymentId: String?

        public var paymentGateway: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case paymentGateway = "payment_gateway"

            case orderId = "order_id"
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil) {
            self.extraMeta = extraMeta

            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.paymentGateway = paymentGateway

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
