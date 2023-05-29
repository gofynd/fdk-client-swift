

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var shipmentCount: Int

        public var fyndOrderId: String

        public var isValidated: Bool?

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case shipmentCount = "shipment_count"

            case fyndOrderId = "fynd_order_id"

            case isValidated = "is_validated"

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, isValidated: Bool? = nil, orderDate: String, shipmentCount: Int) {
            self.shipmentCount = shipmentCount

            self.fyndOrderId = fyndOrderId

            self.isValidated = isValidated

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                isValidated = try container.decode(Bool.self, forKey: .isValidated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(isValidated, forKey: .isValidated)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var shipmentCount: Int

        public var fyndOrderId: String

        public var isValidated: Bool?

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case shipmentCount = "shipment_count"

            case fyndOrderId = "fynd_order_id"

            case isValidated = "is_validated"

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, isValidated: Bool? = nil, orderDate: String, shipmentCount: Int) {
            self.shipmentCount = shipmentCount

            self.fyndOrderId = fyndOrderId

            self.isValidated = isValidated

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                isValidated = try container.decode(Bool.self, forKey: .isValidated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(isValidated, forKey: .isValidated)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}
