import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiCheckoutResponse
         Used By: Cart
     */

    class OpenApiCheckoutResponse: Codable {
        public var orderRefId: String?

        public var message: String?

        public var success: Bool?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case orderRefId = "order_ref_id"

            case message

            case success

            case orderId = "order_id"
        }

        public init(message: String?, orderId: String, orderRefId: String?, success: Bool?) {
            self.orderRefId = orderRefId

            self.message = message

            self.success = success

            self.orderId = orderId
        }

        public func duplicate() -> OpenApiCheckoutResponse {
            let dict = self.dictionary!
            let copy = OpenApiCheckoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderRefId = try container.decode(String.self, forKey: .orderRefId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderRefId, forKey: .orderRefId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
