

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentStatusObject
         Used By: Payment
     */

    class PaymentStatusObject: Codable {
        public var paymentObjectList: [PaymentObjectListSerializer]?

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case paymentObjectList = "payment_object_list"

            case merchantOrderId = "merchant_order_id"
        }

        public init(merchantOrderId: String, paymentObjectList: [PaymentObjectListSerializer]? = nil) {
            self.paymentObjectList = paymentObjectList

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentObjectList = try container.decode([PaymentObjectListSerializer].self, forKey: .paymentObjectList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentObjectList, forKey: .paymentObjectList)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
