

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var message: String

        public var success: Bool

        public var aggregator: String

        public var orderId: String

        public var cartId: String?

        public var status: String

        public var deliveryAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case aggregator

            case orderId = "order_id"

            case cartId = "cart_id"

            case status

            case deliveryAddressId = "delivery_address_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.message = message

            self.success = success

            self.aggregator = aggregator

            self.orderId = orderId

            self.cartId = cartId

            self.status = status

            self.deliveryAddressId = deliveryAddressId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
        }
    }
}
