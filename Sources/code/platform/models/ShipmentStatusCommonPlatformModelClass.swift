

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatusCommon
         Used By: Order
     */

    class ShipmentStatusCommon: Codable {
        public var bagList: [String]

        public var status: String

        public var currentShipmentStatus: String?

        public var createdAt: String

        public var ssId: Int

        public var shipmentId: String

        public var statusCreatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case bagList = "bag_list"

            case status

            case currentShipmentStatus = "current_shipment_status"

            case createdAt = "created_at"

            case ssId = "ss_id"

            case shipmentId = "shipment_id"

            case statusCreatedAt = "status_created_at"
        }

        public init(bagList: [String], createdAt: String, currentShipmentStatus: String? = nil, shipmentId: String, ssId: Int, status: String, statusCreatedAt: String? = nil) {
            self.bagList = bagList

            self.status = status

            self.currentShipmentStatus = currentShipmentStatus

            self.createdAt = createdAt

            self.ssId = ssId

            self.shipmentId = shipmentId

            self.statusCreatedAt = statusCreatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagList = try container.decode([String].self, forKey: .bagList)

            status = try container.decode(String.self, forKey: .status)

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            ssId = try container.decode(Int.self, forKey: .ssId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(ssId, forKey: .ssId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
        }
    }
}
