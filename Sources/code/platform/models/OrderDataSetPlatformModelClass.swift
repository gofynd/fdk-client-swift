

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDataSet
         Used By: Orders
     */

    class OrderDataSet: Codable {
        public var orderId: String

        public var userInfo: UserDataSet?

        public var orderCreatedTime: String

        public var shipments: [ShipmentDataSet]?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case userInfo = "user_info"

            case orderCreatedTime = "order_created_time"

            case shipments
        }

        public init(orderCreatedTime: String, orderId: String, shipments: [ShipmentDataSet]? = nil, userInfo: UserDataSet? = nil) {
            self.orderId = orderId

            self.userInfo = userInfo

            self.orderCreatedTime = orderCreatedTime

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                userInfo = try container.decode(UserDataSet.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            do {
                shipments = try container.decode([ShipmentDataSet].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
