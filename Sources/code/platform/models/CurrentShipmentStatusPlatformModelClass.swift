

import Foundation
public extension PlatformClient {
    /*
         Model: CurrentShipmentStatus
         Used By: Order
     */

    class CurrentShipmentStatus: Codable {
        public var status: String

        public var ssId: Int

        public var shipmentId: String

        public var statusCreatedAt: String

        public var currentShipmentStatus: String

        public var bagList: [String]

        public var createdAt: Int

        public enum CodingKeys: String, CodingKey {
            case status

            case ssId = "ss_id"

            case shipmentId = "shipment_id"

            case statusCreatedAt = "status_created_at"

            case currentShipmentStatus = "current_shipment_status"

            case bagList = "bag_list"

            case createdAt = "created_at"
        }

        public init(bagList: [String], createdAt: Int, currentShipmentStatus: String, shipmentId: String, ssId: Int, status: String, statusCreatedAt: String) {
            self.status = status

            self.ssId = ssId

            self.shipmentId = shipmentId

            self.statusCreatedAt = statusCreatedAt

            self.currentShipmentStatus = currentShipmentStatus

            self.bagList = bagList

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            ssId = try container.decode(Int.self, forKey: .ssId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            bagList = try container.decode([String].self, forKey: .bagList)

            createdAt = try container.decode(Int.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(ssId, forKey: .ssId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encode(createdAt, forKey: .createdAt)
        }
    }
}
