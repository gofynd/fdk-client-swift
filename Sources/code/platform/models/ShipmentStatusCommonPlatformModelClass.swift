

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatusCommon
         Used By: Order
     */

    class ShipmentStatusCommon: Codable {
        public var bagList: [String]

        public var currentShipmentStatus: String?

        public var ssId: Int

        public var statusCreatedAt: String?

        public var shipmentId: String

        public var createdAt: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case bagList = "bag_list"

            case currentShipmentStatus = "current_shipment_status"

            case ssId = "ss_id"

            case statusCreatedAt = "status_created_at"

            case shipmentId = "shipment_id"

            case createdAt = "created_at"

            case status
        }

        public init(bagList: [String], createdAt: String, currentShipmentStatus: String? = nil, shipmentId: String, ssId: Int, status: String, statusCreatedAt: String? = nil) {
            self.bagList = bagList

            self.currentShipmentStatus = currentShipmentStatus

            self.ssId = ssId

            self.statusCreatedAt = statusCreatedAt

            self.shipmentId = shipmentId

            self.createdAt = createdAt

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagList = try container.decode([String].self, forKey: .bagList)

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ssId = try container.decode(Int.self, forKey: .ssId)

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(ssId, forKey: .ssId)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
