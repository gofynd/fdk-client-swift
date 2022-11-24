

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderItems
         Used By: Order
     */
    class OrderItems: Codable {
        public var shipments: [ShipmentResponse]?

        public var bagsForReorder: [BagsForReorder]?

        public var userInfo: UserInfo1?

        public var breakupValues: [PricesBreakup]?

        public var orderId: String?

        public var orderCreatedTime: String?

        public var totalShipmentsInOrder: Int?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case bagsForReorder = "bags_for_reorder"

            case userInfo = "user_info"

            case breakupValues = "breakup_values"

            case orderId = "order_id"

            case orderCreatedTime = "order_created_time"

            case totalShipmentsInOrder = "total_shipments_in_order"
        }

        public init(bagsForReorder: [BagsForReorder]? = nil, breakupValues: [PricesBreakup]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, shipments: [ShipmentResponse]? = nil, totalShipmentsInOrder: Int? = nil, userInfo: UserInfo1? = nil) {
            self.shipments = shipments

            self.bagsForReorder = bagsForReorder

            self.userInfo = userInfo

            self.breakupValues = breakupValues

            self.orderId = orderId

            self.orderCreatedTime = orderCreatedTime

            self.totalShipmentsInOrder = totalShipmentsInOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagsForReorder = try container.decode([BagsForReorder].self, forKey: .bagsForReorder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(UserInfo1.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([PricesBreakup].self, forKey: .breakupValues)

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

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
        }
    }
}
