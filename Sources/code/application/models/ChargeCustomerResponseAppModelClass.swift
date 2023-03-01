

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var status: String

        public var message: String

        public var deliveryAddressId: String?

        public var aggregator: String

        public var success: Bool

        public var orderId: String

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case deliveryAddressId = "delivery_address_id"

            case aggregator

            case success

            case orderId = "order_id"

            case cartId = "cart_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.status = status

            self.message = message

            self.deliveryAddressId = deliveryAddressId

            self.aggregator = aggregator

            self.success = success

            self.orderId = orderId

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

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

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(cartId, forKey: .cartId)
        }
    }
}
