

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentById1
         Used By: Order
     */
    class ShipmentById1: Codable {
        public var shipment: Shipments1

        public enum CodingKeys: String, CodingKey {
            case shipment
        }

        public init(shipment: Shipments1) {
            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode(Shipments1.self, forKey: .shipment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
