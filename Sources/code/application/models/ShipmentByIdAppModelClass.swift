

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentById
         Used By: Order
     */
    class ShipmentById: Codable {
        public var shipment: ShipmentResponse?

        public enum CodingKeys: String, CodingKey {
            case shipment
        }

        public init(shipment: ShipmentResponse? = nil) {
            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipment = try container.decode(ShipmentResponse.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
