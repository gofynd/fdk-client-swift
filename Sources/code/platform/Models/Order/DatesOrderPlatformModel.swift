

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Dates
         Used By: Order
     */

    class Dates: Codable {
        public var deliveryDate: String?

        public var orderCreated: String?

        public enum CodingKeys: String, CodingKey {
            case deliveryDate = "delivery_date"

            case orderCreated = "order_created"
        }

        public init(deliveryDate: String? = nil, orderCreated: String? = nil) {
            self.deliveryDate = deliveryDate

            self.orderCreated = orderCreated
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreated = try container.decode(String.self, forKey: .orderCreated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(orderCreated, forKey: .orderCreated)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Dates
         Used By: Order
     */

    class Dates: Codable {
        public var deliveryDate: String?

        public var orderCreated: String?

        public enum CodingKeys: String, CodingKey {
            case deliveryDate = "delivery_date"

            case orderCreated = "order_created"
        }

        public init(deliveryDate: String? = nil, orderCreated: String? = nil) {
            self.deliveryDate = deliveryDate

            self.orderCreated = orderCreated
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreated = try container.decode(String.self, forKey: .orderCreated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(orderCreated, forKey: .orderCreated)
        }
    }
}
