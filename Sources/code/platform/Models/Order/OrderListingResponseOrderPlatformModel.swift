

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var orders: [OrderDataSet]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case orders

            case success
        }

        public init(orders: [OrderDataSet]? = nil, success: Bool) {
            self.orders = orders

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orders = try container.decode([OrderDataSet].self, forKey: .orders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orders, forKey: .orders)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var orders: [OrderDataSet]?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case orders

            case success
        }

        public init(orders: [OrderDataSet]? = nil, success: Bool) {
            self.orders = orders

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orders = try container.decode([OrderDataSet].self, forKey: .orders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orders, forKey: .orders)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
