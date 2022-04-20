import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: MultiTenderPaymentMeta
         Used By: Cart
     */

    class MultiTenderPaymentMeta: Codable {
        public var currentStatus: String?

        public var paymentId: String?

        public var extraMeta: [String: Any]?

        public var paymentGateway: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case paymentId = "payment_id"

            case extraMeta = "extra_meta"

            case paymentGateway = "payment_gateway"

            case orderId = "order_id"
        }

        public init(currentStatus: String?, extraMeta: [String: Any]?, orderId: String?, paymentGateway: String?, paymentId: String?) {
            self.currentStatus = currentStatus

            self.paymentId = paymentId

            self.extraMeta = extraMeta

            self.paymentGateway = paymentGateway

            self.orderId = orderId
        }

        public func duplicate() -> MultiTenderPaymentMeta {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMeta(dictionary: dict)!
            return copy
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

            try? container.encode(currentStatus, forKey: .currentStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(extraMeta, forKey: .extraMeta)

            try? container.encode(paymentGateway, forKey: .paymentGateway)

            try? container.encode(orderId, forKey: .orderId)
        }
    }
}
