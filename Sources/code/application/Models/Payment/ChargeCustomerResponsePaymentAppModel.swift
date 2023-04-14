

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var orderId: String

        public var success: Bool

        public var aggregator: String

        public var deliveryAddressId: String?

        public var message: String

        public var status: String

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case success

            case aggregator

            case deliveryAddressId = "delivery_address_id"

            case message

            case status

            case cartId = "cart_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.orderId = orderId

            self.success = success

            self.aggregator = aggregator

            self.deliveryAddressId = deliveryAddressId

            self.message = message

            self.status = status

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            status = try container.decode(String.self, forKey: .status)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(cartId, forKey: .cartId)
        }
    }
}
