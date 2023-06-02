

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var status: String

        public var bagList: [String]?

        public var meta: [String: Any]?

        public var shipmentId: String?

        public var shipmentStatusId: Int?

        public var currentShipmentStatus: String?

        public var statusCreatedAt: String?

        public var createdAt: String?

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case status

            case bagList = "bag_list"

            case meta

            case shipmentId = "shipment_id"

            case shipmentStatusId = "shipment_status_id"

            case currentShipmentStatus = "current_shipment_status"

            case statusCreatedAt = "status_created_at"

            case createdAt = "created_at"

            case title
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.status = status

            self.bagList = bagList

            self.meta = meta

            self.shipmentId = shipmentId

            self.shipmentStatusId = shipmentStatusId

            self.currentShipmentStatus = currentShipmentStatus

            self.statusCreatedAt = statusCreatedAt

            self.createdAt = createdAt

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                shipmentStatusId = try container.decode(Int.self, forKey: .shipmentStatusId)

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

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

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

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var status: String

        public var bagList: [String]?

        public var meta: [String: Any]?

        public var shipmentId: String?

        public var shipmentStatusId: Int?

        public var currentShipmentStatus: String?

        public var statusCreatedAt: String?

        public var createdAt: String?

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case status

            case bagList = "bag_list"

            case meta

            case shipmentId = "shipment_id"

            case shipmentStatusId = "shipment_status_id"

            case currentShipmentStatus = "current_shipment_status"

            case statusCreatedAt = "status_created_at"

            case createdAt = "created_at"

            case title
        }

        public init(bagList: [String]? = nil, createdAt: String? = nil, currentShipmentStatus: String? = nil, meta: [String: Any]? = nil, shipmentId: String? = nil, shipmentStatusId: Int? = nil, status: String, statusCreatedAt: String? = nil, title: String) {
            self.status = status

            self.bagList = bagList

            self.meta = meta

            self.shipmentId = shipmentId

            self.shipmentStatusId = shipmentStatusId

            self.currentShipmentStatus = currentShipmentStatus

            self.statusCreatedAt = statusCreatedAt

            self.createdAt = createdAt

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                bagList = try container.decode([String].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                shipmentStatusId = try container.decode(Int.self, forKey: .shipmentStatusId)

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

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

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

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentStatusId, forKey: .shipmentStatusId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
