

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDataSet
         Used By: Orders
     */

    class OrderDataSet: Codable {
        public var shipments: [ShipmentDataSet]?

        public var userInfo: UserDataSet?

        public var orderCreatedTime: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case shipments

            case userInfo = "user_info"

            case orderCreatedTime = "order_created_time"

            case orderId = "order_id"
        }

        public init(orderCreatedTime: String, orderId: String, shipments: [ShipmentDataSet]? = nil, userInfo: UserDataSet? = nil) {
            self.shipments = shipments

            self.userInfo = userInfo

            self.orderCreatedTime = orderCreatedTime

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([ShipmentDataSet].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(UserDataSet.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
