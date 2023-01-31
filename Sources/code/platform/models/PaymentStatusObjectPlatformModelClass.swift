

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentStatusObject
         Used By: Payment
     */

    class PaymentStatusObject: Codable {
        public var merchantOrderId: String

        public var paymentObjectList: [PaymentObjectListSerializer]?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case paymentObjectList = "payment_object_list"
        }

        public init(merchantOrderId: String, paymentObjectList: [PaymentObjectListSerializer]? = nil) {
            self.merchantOrderId = merchantOrderId

            self.paymentObjectList = paymentObjectList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                paymentObjectList = try container.decode([PaymentObjectListSerializer].self, forKey: .paymentObjectList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentObjectList, forKey: .paymentObjectList)
        }
    }
}
