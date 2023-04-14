

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: MultiTenderPaymentMeta
         Used By: Cart
     */

    class MultiTenderPaymentMeta: Codable {
        public var paymentGateway: String?

        public var paymentId: String?

        public var extraMeta: [String: Any]?

        public var orderId: String?

        public var currentStatus: String?

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case extraMeta = "extra_meta"

            case orderId = "order_id"

            case currentStatus = "current_status"
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil) {
            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.extraMeta = extraMeta

            self.orderId = orderId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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

            do {
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(currentStatus, forKey: .currentStatus)
        }
    }
}
