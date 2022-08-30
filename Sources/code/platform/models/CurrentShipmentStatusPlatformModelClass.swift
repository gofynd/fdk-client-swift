

import Foundation
public extension PlatformClient {
    /*
         Model: CurrentShipmentStatus
         Used By: Order
     */

    class CurrentShipmentStatus: Codable {
        public var statusCreatedAt: String

        public var status: String

        public var shipmentId: String

        public var ssId: Int

        public var currentShipmentStatus: String

        public var createdAt: Int

        public var bagList: [String]

        public enum CodingKeys: String, CodingKey {
            case statusCreatedAt = "status_created_at"

            case status

            case shipmentId = "shipment_id"

            case ssId = "ss_id"

            case currentShipmentStatus = "current_shipment_status"

            case createdAt = "created_at"

            case bagList = "bag_list"
        }

        public init(bagList: [String], createdAt: Int, currentShipmentStatus: String, shipmentId: String, ssId: Int, status: String, statusCreatedAt: String) {
            self.statusCreatedAt = statusCreatedAt

            self.status = status

            self.shipmentId = shipmentId

            self.ssId = ssId

            self.currentShipmentStatus = currentShipmentStatus

            self.createdAt = createdAt

            self.bagList = bagList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            status = try container.decode(String.self, forKey: .status)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            ssId = try container.decode(Int.self, forKey: .ssId)

            currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            bagList = try container.decode([String].self, forKey: .bagList)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(ssId, forKey: .ssId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bagList, forKey: .bagList)
        }
    }
}
