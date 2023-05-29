

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentDetail
         Used By: Order
     */
    class ShipmentDetail: Codable {
        public var shipmentId: ShipmentBody?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"
        }

        public init(shipmentId: ShipmentBody? = nil) {
            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentId = try container.decode(ShipmentBody.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
