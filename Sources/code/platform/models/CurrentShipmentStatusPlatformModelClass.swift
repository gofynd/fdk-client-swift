

import Foundation
public extension PlatformClient {
    /*
         Model: CurrentShipmentStatus
         Used By: Order
     */

    class CurrentShipmentStatus: Codable {
        public var shipmentId: String

        public var ssId: Int

        public var currentShipmentStatus: String

        public var bagList: [String]

        public var createdAt: Int

        public var statusCreatedAt: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case ssId = "ss_id"

            case currentShipmentStatus = "current_shipment_status"

            case bagList = "bag_list"

            case createdAt = "created_at"

            case statusCreatedAt = "status_created_at"

            case status
        }

        public init(bagList: [String], createdAt: Int, currentShipmentStatus: String, shipmentId: String, ssId: Int, status: String, statusCreatedAt: String) {
            self.shipmentId = shipmentId

            self.ssId = ssId

            self.currentShipmentStatus = currentShipmentStatus

            self.bagList = bagList

            self.createdAt = createdAt

            self.statusCreatedAt = statusCreatedAt

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            ssId = try container.decode(Int.self, forKey: .ssId)

            currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            bagList = try container.decode([String].self, forKey: .bagList)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(ssId, forKey: .ssId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
