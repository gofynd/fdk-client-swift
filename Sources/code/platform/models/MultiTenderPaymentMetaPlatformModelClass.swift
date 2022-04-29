

import Foundation
public extension PlatformClient {
    /*
         Model: MultiTenderPaymentMeta
         Used By: Payment
     */

    class MultiTenderPaymentMeta: Codable {
        public var paymentGateway: String?

        public var currentStatus: String?

        public var orderId: String?

        public var extraMeta: [String: Any]?

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case orderId = "order_id"

            case extraMeta = "extra_meta"

            case paymentId = "payment_id"
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil) {
            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.orderId = orderId

            self.extraMeta = extraMeta

            self.paymentId = paymentId
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
                currentStatus = try container.decode(String.self, forKey: .currentStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
        }
    }
}
