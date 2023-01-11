

import Foundation
public extension PlatformClient {
    /*
         Model: OrderStatusData
         Used By: Order
     */

    class OrderStatusData: Codable {
        public var orderDetails: OrderDetails

        public var shipmentDetails: [ShipmentDetail]?

        public var errors: [String]?

        public enum CodingKeys: String, CodingKey {
            case orderDetails = "order_details"

            case shipmentDetails = "shipment_details"

            case errors
        }

        public init(errors: [String]? = nil, orderDetails: OrderDetails, shipmentDetails: [ShipmentDetail]? = nil) {
            self.orderDetails = orderDetails

            self.shipmentDetails = shipmentDetails

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderDetails = try container.decode(OrderDetails.self, forKey: .orderDetails)

            do {
                shipmentDetails = try container.decode([ShipmentDetail].self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }
}
