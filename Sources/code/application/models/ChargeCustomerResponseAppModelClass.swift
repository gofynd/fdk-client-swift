

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var status: String

        public var success: Bool

        public var cartId: String?

        public var orderId: String

        public var message: String

        public var aggregator: String

        public var deliveryAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case success

            case cartId = "cart_id"

            case orderId = "order_id"

            case message

            case aggregator

            case deliveryAddressId = "delivery_address_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.status = status

            self.success = success

            self.cartId = cartId

            self.orderId = orderId

            self.message = message

            self.aggregator = aggregator

            self.deliveryAddressId = deliveryAddressId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
        }
    }
}
