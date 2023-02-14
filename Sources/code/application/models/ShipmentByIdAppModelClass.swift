

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentById
         Used By: Order
     */
    class ShipmentById: Codable {
        public var shipment: Shipments

        public enum CodingKeys: String, CodingKey {
            case shipment
        }

        public init(shipment: Shipments) {
            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode(Shipments.self, forKey: .shipment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
