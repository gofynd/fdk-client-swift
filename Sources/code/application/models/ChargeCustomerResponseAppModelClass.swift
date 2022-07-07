

import Foundation
public extension ApplicationClient {
    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var success: Bool

        public var deliveryAddressId: String?

        public var message: String

        public var orderId: String

        public var cartId: String?

        public var aggregator: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case success

            case deliveryAddressId = "delivery_address_id"

            case message

            case orderId = "order_id"

            case cartId = "cart_id"

            case aggregator

            case status
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.success = success

            self.deliveryAddressId = deliveryAddressId

            self.message = message

            self.orderId = orderId

            self.cartId = cartId

            self.aggregator = aggregator

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
