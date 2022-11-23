

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderItems
         Used By: Order
     */
    class OrderItems: Codable {
        public var userInfo: UserInfo?

        public var orderCreatedTime: String?

        public var shipments: [ShipmentResponse]?

        public var orderId: String?

        public var breakupValues: [PricesBreakup]?

        public var totalShipmentsInOrder: Int?

        public var bagsForReorder: [BagsForReorder]?

        public enum CodingKeys: String, CodingKey {
            case userInfo = "user_info"

            case orderCreatedTime = "order_created_time"

            case shipments

            case orderId = "order_id"

            case breakupValues = "breakup_values"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case bagsForReorder = "bags_for_reorder"
        }

        public init(bagsForReorder: [BagsForReorder]? = nil, breakupValues: [PricesBreakup]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, shipments: [ShipmentResponse]? = nil, totalShipmentsInOrder: Int? = nil, userInfo: UserInfo? = nil) {
            self.userInfo = userInfo

            self.orderCreatedTime = orderCreatedTime

            self.shipments = shipments

            self.orderId = orderId

            self.breakupValues = breakupValues

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.bagsForReorder = bagsForReorder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userInfo = try container.decode(UserInfo.self, forKey: .userInfo)

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
                shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)

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
                breakupValues = try container.decode([PricesBreakup].self, forKey: .breakupValues)

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
                bagsForReorder = try container.decode([BagsForReorder].self, forKey: .bagsForReorder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)
        }
    }
}
