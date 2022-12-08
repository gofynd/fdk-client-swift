

import Foundation
public extension PlatformClient {
    /*
         Model: OrderStatusData
         Used By: Order
     */

    class OrderStatusData: Codable {
        public var shipmentDetails: [ShipmentDetail]?

        public var orderDetails: OrderDetails1

        public var errors: [String]?

        public enum CodingKeys: String, CodingKey {
            case shipmentDetails = "shipment_details"

            case orderDetails = "order_details"

            case errors
        }

        public init(errors: [String]? = nil, orderDetails: OrderDetails1, shipmentDetails: [ShipmentDetail]? = nil) {
            self.shipmentDetails = shipmentDetails

            self.orderDetails = orderDetails

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentDetails = try container.decode([ShipmentDetail].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDetails = try container.decode(OrderDetails1.self, forKey: .orderDetails)

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }
}
