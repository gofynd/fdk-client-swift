

import Foundation
public extension PlatformClient {
    /*
         Model: CurrentShipmentStatus
         Used By: Order
     */

    class CurrentShipmentStatus: Codable {
        public var createdAt: Int

        public var shipmentId: String

        public var status: String

        public var bagList: [String]

        public var ssId: Int

        public var currentShipmentStatus: String

        public var statusCreatedAt: String

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case shipmentId = "shipment_id"

            case status

            case bagList = "bag_list"

            case ssId = "ss_id"

            case currentShipmentStatus = "current_shipment_status"

            case statusCreatedAt = "status_created_at"
        }

        public init(bagList: [String], createdAt: Int, currentShipmentStatus: String, shipmentId: String, ssId: Int, status: String, statusCreatedAt: String) {
            self.createdAt = createdAt

            self.shipmentId = shipmentId

            self.status = status

            self.bagList = bagList

            self.ssId = ssId

            self.currentShipmentStatus = currentShipmentStatus

            self.statusCreatedAt = statusCreatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            status = try container.decode(String.self, forKey: .status)

            bagList = try container.decode([String].self, forKey: .bagList)

            ssId = try container.decode(Int.self, forKey: .ssId)

            currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(ssId, forKey: .ssId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
        }
    }
}
