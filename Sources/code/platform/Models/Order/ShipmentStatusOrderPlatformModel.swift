

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var bagList: [String]?

        public var status: String

        public var meta: [String: Any]?

        public var statusCreatedAt: String?

        public var currentShipmentStatus: String?

        public var title: String

        public var shipmentStatusId: Int?

        public var shipmentId: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case bagList = "bag_list"

            case status

            case meta

            case statusCreatedAt = "status_created_at"

            case currentShipmentStatus = "current_shipment_status"

            case title

            case shipmentStatusId = "shipment_status_id"

            case shipmentId = "shipment_id"

            case createdAt = "created_at"
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.bagList = bagList

            self.status = status

            self.meta = meta

            self.statusCreatedAt = statusCreatedAt

            self.currentShipmentStatus = currentShipmentStatus

            self.title = title

            self.shipmentStatusId = shipmentStatusId

            self.shipmentId = shipmentId

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                shipmentStatusId = try container.decode(Int.self, forKey: .shipmentStatusId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var bagList: [String]?

        public var status: String

        public var meta: [String: Any]?

        public var statusCreatedAt: String?

        public var currentShipmentStatus: String?

        public var title: String

        public var shipmentStatusId: Int?

        public var shipmentId: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case bagList = "bag_list"

            case status

            case meta

            case statusCreatedAt = "status_created_at"

            case currentShipmentStatus = "current_shipment_status"

            case title

            case shipmentStatusId = "shipment_status_id"

            case shipmentId = "shipment_id"

            case createdAt = "created_at"
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.bagList = bagList

            self.status = status

            self.meta = meta

            self.statusCreatedAt = statusCreatedAt

            self.currentShipmentStatus = currentShipmentStatus

            self.title = title

            self.shipmentStatusId = shipmentStatusId

            self.shipmentId = shipmentId

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                shipmentStatusId = try container.decode(Int.self, forKey: .shipmentStatusId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
