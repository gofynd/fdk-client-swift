

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var message: String

        public var deliveryAddressId: String?

        public var aggregator: String

        public var success: Bool

        public var status: String

        public var orderId: String

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case deliveryAddressId = "delivery_address_id"

            case aggregator

            case success

            case status

            case orderId = "order_id"

            case cartId = "cart_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.message = message

            self.deliveryAddressId = deliveryAddressId

            self.aggregator = aggregator

            self.success = success

            self.status = status

            self.orderId = orderId

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(String.self, forKey: .status)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(cartId, forKey: .cartId)
        }
    }
}
