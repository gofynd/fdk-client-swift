

import Foundation
public extension PlatformClient {
    /*
         Model: OrderStatusData
         Used By: OrderManage
     */

    class OrderStatusData: Codable {
        public var shipmentDetails: [ShipmentDetail]?

        public var errors: [String]?

        public var orderDetails: OrderDetails

        public enum CodingKeys: String, CodingKey {
            case shipmentDetails = "shipment_details"

            case errors

            case orderDetails = "order_details"
        }

        public init(errors: [String]? = nil, orderDetails: OrderDetails, shipmentDetails: [ShipmentDetail]? = nil) {
            self.shipmentDetails = shipmentDetails

            self.errors = errors

            self.orderDetails = orderDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            orderDetails = try container.decode(OrderDetails.self, forKey: .orderDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)
        }
    }
}
