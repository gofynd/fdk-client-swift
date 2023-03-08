

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: GeneratePOSReceipts
         Used By: DocumentEngine
     */

    class GeneratePOSReceipts: Codable {
        public var order: OrderDict

        public var shipments: [PlatformShipment]

        public enum CodingKeys: String, CodingKey {
            case order

            case shipments
        }

        public init(order: OrderDict, shipments: [PlatformShipment]) {
            self.order = order

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            order = try container.decode(OrderDict.self, forKey: .order)

            shipments = try container.decode([PlatformShipment].self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
