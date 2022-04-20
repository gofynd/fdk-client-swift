

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentStatusResponse
         Used By: Order
     */

    class UpdateShipmentStatusResponse: Codable {
        public var shipments: [String: Any]

        public var errorShipments: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case errorShipments = "error_shipments"
        }

        public init(errorShipments: [[String: Any]]? = nil, shipments: [String: Any]) {
            self.shipments = shipments

            self.errorShipments = errorShipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode([String: Any].self, forKey: .shipments)

            do {
                errorShipments = try container.decode([[String: Any]].self, forKey: .errorShipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(errorShipments, forKey: .errorShipments)
        }
    }
}
