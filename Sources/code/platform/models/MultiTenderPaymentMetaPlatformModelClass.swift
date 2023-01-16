

import Foundation
public extension PlatformClient {
    /*
         Model: MultiTenderPaymentMeta
         Used By: Cart
     */

    class MultiTenderPaymentMeta: Codable {
        public var currentStatus: String?

        public var extraMeta: [String: Any]?

        public var paymentId: String?

        public var orderId: String?

        public var paymentGateway: String?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case extraMeta = "extra_meta"

            case paymentId = "payment_id"

            case orderId = "order_id"

            case paymentGateway = "payment_gateway"
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil) {
            self.currentStatus = currentStatus

            self.extraMeta = extraMeta

            self.paymentId = paymentId

            self.orderId = orderId

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

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
                paymentId = try container.decode(String.self, forKey: .paymentId)

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
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(currentStatus, forKey: .currentStatus)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(paymentGateway, forKey: .paymentGateway)
        }
    }
}
