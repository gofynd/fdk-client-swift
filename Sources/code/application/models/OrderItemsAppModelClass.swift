

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderItems
         Used By: Order
     */
    class OrderItems: Codable {
        public var userInfo: [String: Any]?

        public var bagsForReorder: [[String: Any]]?

        public var shipments: [ShipmentResponse]?

        public var totalShipmentsInOrder: Int?

        public var orderCreatedTime: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case userInfo = "user_info"

            case bagsForReorder = "bags_for_reorder"

            case shipments

            case totalShipmentsInOrder = "total_shipments_in_order"

            case orderCreatedTime = "order_created_time"

            case orderId = "order_id"
        }

        public init(bagsForReorder: [[String: Any]]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, shipments: [ShipmentResponse]? = nil, totalShipmentsInOrder: Int? = nil, userInfo: [String: Any]? = nil) {
            self.userInfo = userInfo

            self.bagsForReorder = bagsForReorder

            self.shipments = shipments

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.orderCreatedTime = orderCreatedTime

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagsForReorder = try container.decode([[String: Any]].self, forKey: .bagsForReorder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
