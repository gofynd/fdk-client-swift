

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Orders
     */

    class OrderListingResponse: Codable {
        public var success: Bool

        public var orders: [OrderDataSet]?

        public enum CodingKeys: String, CodingKey {
            case success

            case orders
        }

        public init(orders: [OrderDataSet]? = nil, success: Bool) {
            self.success = success

            self.orders = orders
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                orders = try container.decode([OrderDataSet].self, forKey: .orders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orders, forKey: .orders)
        }
    }
}
