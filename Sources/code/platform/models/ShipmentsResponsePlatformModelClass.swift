

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentsResponse
         Used By: OrderManage
     */

    class ShipmentsResponse: Codable {
        public var shipmentId: ShipmentidResponse?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"
        }

        public init(shipmentId: ShipmentidResponse? = nil) {
            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentId = try container.decode(ShipmentidResponse.self, forKey: .shipmentId)

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
